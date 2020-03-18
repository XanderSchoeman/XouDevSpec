//
//  ApiCallerModel.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/17.
//

import Foundation

public enum AnimeError: Error {
    case noDataAvailable
    case cannotProcessData
}

public struct ApiCallerModel {
    let headers = [
        "x-rapidapi-host": "jikan1.p.rapidapi.com",
        "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
         ]
    let searchText: String
    
    
    public init(SearchText: String) {
        self.searchText = SearchText
        
    }
    
    
    
    public  func getAnimeData(completetionHandler: @escaping(Result<[AnimeDetails], AnimeError>) -> Void) {
        
        let request = NSMutableURLRequest(url: NSURL(string:  "https://jikan1.p.rapidapi.com/search/anime?q=\(searchText)")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)

        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) { data, _, _ in
            guard let jsonData = data else {
                completetionHandler(.failure(.noDataAvailable))
                return
            }
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(animeInfo.self, from: jsonData)
                let responseDetails = response.results
                completetionHandler(.success(responseDetails))
                
            } catch {
                completetionHandler(.failure(.cannotProcessData))
            }
        }

        dataTask.resume()
      }
    
    
    public  func getAnimeTopData(completetionHandler: @escaping(Result<[TopStruct], AnimeError>) -> Void) {
        
        let request = NSMutableURLRequest(url: NSURL(string:  "https://jikan1.p.rapidapi.com/top/anime/1/upcoming")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)

        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest) { data, _, _ in
            guard let jsonData = data else {
                completetionHandler(.failure(.noDataAvailable))
                return
            }
            do {
                let decoder = JSONDecoder()
                let response = try decoder.decode(animeTopInfoStruct.self, from: jsonData)
                let responseDetails = response.top
                completetionHandler(.success(responseDetails))
                
            } catch {
                completetionHandler(.failure(.cannotProcessData))
            }
        }

        dataTask.resume()
      }


}

