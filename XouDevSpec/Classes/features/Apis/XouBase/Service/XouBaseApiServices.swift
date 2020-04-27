//
//  XouBaseApiCalls.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/19.
//
import Foundation

//commented for a test when pushing
public struct XouBaseApiCalls {
    var urls = UrlStrings()

    public init() {
    }
    
    public  func getUsers(completetionHandler: @escaping(Result<[User], AnimeError>) -> Void) {
        
        
        guard let url = URL(string: urls.getUsersLocalUrl) else {
                return
            }
        
            var request = URLRequest(url: url,
                cachePolicy: .useProtocolCachePolicy,
            timeoutInterval: 10.0)


        request.httpMethod = "GET"

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) { data, _, _ in
            guard let jsonData = data else {
                completetionHandler(.failure(.noDataAvailable))
                return
            }
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode([User].self, from: jsonData)
                completetionHandler(.success(response))
                
            } catch {
                completetionHandler(.failure(.cannotProcessData))
            }
        }

        dataTask.resume()
      }
    
        public  func registerUser(theUser: User,completetionHandler: @escaping(Result<User, AnimeError>) -> Void) {

            do {
                guard let url = URL(string: urls.registerUserUrl) else {
                        return
                    }
                  
                  var request = URLRequest(url: url)

                  
                request.httpMethod = "POST"
                  request.addValue("application/json", forHTTPHeaderField: "Content-Type")
                  request.httpBody = try JSONEncoder().encode(theUser)

                let session = URLSession.shared
                let dataTask = session.dataTask(with: request as URLRequest) { data, response, _ in
                  guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200,
                      let jsonData = data else {
                          completetionHandler(.failure(.cannotProcessData))
                          return
                  }
                    do {
                        let messageData = try JSONDecoder().decode(User.self, from: jsonData)
                        completetionHandler(.success(messageData))
                    } catch {
                        completetionHandler(.failure(.noDataAvailable))
                    }
                }
                dataTask.resume()
            } catch {
                completetionHandler(.failure(.cannotProcessData))
            }
        }
    
}
