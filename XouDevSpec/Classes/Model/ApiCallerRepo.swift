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
    case problemWithUrl
}

public struct ApiCallerRepo {
    let headers = [
        "x-rapidapi-host": "jikan1.p.rapidapi.com",
        "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
         ]
    var searchText: String?
    var genre: String?
    
    public init(SearchText: String) {
        self.searchText = SearchText
        
    }
    public init(SearchText: String, GenreSelected: String) {
        self.searchText = SearchText
        self.genre = GenreSelected
    }
    
    public init() {
        
    }
    
    
    
    public  func getAnimeData(completetionHandler: @escaping(Result<[AnimeDetails], AnimeError>) -> Void) {
        
        guard let url = URL(string: "https://jikan1.p.rapidapi.com/search/anime?\(genre ?? "")q=\(searchText ?? "Top")") else {
            return
        }
    
        var request = URLRequest(url: url,
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
        
        
            guard let url = URL(string: "https://jikan1.p.rapidapi.com/top/anime/1/upcoming") else {
                return
            }
        
            var request = URLRequest(url: url,
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
    public  func getMangaData(completetionHandler: @escaping(Result<[MangaDetails], AnimeError>) -> Void) {
        
        guard let url = URL(string:"https://jikan1.p.rapidapi.com/search/manga?\(genre ?? "")q=\(searchText ?? "")") else {
                return
            }
        
            var request = URLRequest(url: url,
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
                let response = try decoder.decode(mangaInfo.self, from: jsonData)
                let responseDetails = response.results
                completetionHandler(.success(responseDetails))
                
            } catch {
                completetionHandler(.failure(.cannotProcessData))
            }
        }

        dataTask.resume()
      }

}

