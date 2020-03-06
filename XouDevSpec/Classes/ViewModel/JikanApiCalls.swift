//
//  JikanApiCalls.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/01.
//

import Foundation
import Alamofire

public class JikanApiCalls  {

        public var animes: [animeTopInfoStruct]?

    
//    public func createArray() -> animeTopInfo {
//        var arrayList: animeTopInfo
//                   let headers: HTTPHeaders = [
//                       "x-rapidapi-host": "jikan1.p.rapidapi.com",
//                       "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
//                   ]
//
//                   AF.request("https://jikan1.p.rapidapi.com/top/anime/1/upcoming", headers: headers)
//                     .responseDecodable(of: animeTopInfo.self) { (response)  in
//                         guard let animes = response.value else {return}
//                         self.animes = [animeTopInfoStruct]()
//                        arrayList = animes
//        }
//        return arrayList
//    }
//   public init() {
//        
//    }
//}


//    func createArray() {
//                   let headers: HTTPHeaders = [
//                       "x-rapidapi-host": "jikan1.p.rapidapi.com",
//                       "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
//                   ]
//
//                   AF.request("https://jikan1.p.rapidapi.com/top/anime/1/upcoming", headers: headers)
//                     .responseDecodable(of: animeTopInfo.self) { (response) in
//                         guard let animes = response.value else {return}
//                         self.animes = [animeTopInfoStruct]()
//
//                         for item in 0...10 {
//                             var anime = animeTopInfoStruct()
//                            print(animes)
//
//                            anime.top.image_url = animes.top[item].image_url
//                            anime.top.title = animes.top[item].title
//        //                     anime.top.type = animes.top[item].type as? String
//        //                     anime.top.rank = animes.top[item].rank as? Int
//        //                     anime.top.end_date = animes.top[item].end_date as? String
//                             self.animes?.append(anime)
//                            print(animes)
//                            DispatchQueue.main.async {
//                            self.tableView.reloadData()
//                            }
//                             }
//
//
//                         }
//    }
}
