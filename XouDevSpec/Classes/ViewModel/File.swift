////
////  File.swift
////  Pods
////
////  Created by Xander Schoeman on 2020/03/01.
////
//
//import Foundation
//
//public func getTopAnimeFunc(completetion: @escaping (Result<TopResponse, Error>) -> Void) {
//     let request = NSMutableURLRequest(url: NSURL(string: "https://jikan1.p.rapidapi.com/top/anime/1/upcoming")! as URL,
//                                                cachePolicy: .useProtocolCachePolicy,
//                                            timeoutInterval: 10.0)
//       let headers = [
//            "x-rapidapi-host": "jikan1.p.rapidapi.com",
//            "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
//        ]
//
//        request.httpMethod = "GET"
//        request.allHTTPHeaderFields = headers
//
//
//        let session = URLSession.shared
//        session.dataTask(with: request as URLRequest, completionHandler: { (data, response, err) in
//
//            if let err = err {
//                completetion(.failure(err))
//                return
//            }
//            //success
//            do {
//                let topResponses = try JSONDecoder().decode(TopResponse.self, from: data!)
//                completetion(.success(topResponses))
//                
//
//            } catch let jsonError {
//                completetion(.failure(jsonError))
//            }
//        }).resume()
//    }
//
