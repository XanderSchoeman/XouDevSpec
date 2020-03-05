//
//  JikanApiCalls.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/01.
//

import Foundation
import Alamofire


//func fetchVideos(){
//    let url = URL(string: "https://s3-us-west-2.amazonaws.com/youtubeassets/home.json")
//    URLSession.shared.dataTask(with: url!)  { (data, response, error) in
//        
//        if error != nil {
//            print(error as Any)
//            return
//        }
//        do {
//            let json = try JSONSerialization.jsonObject(with: data!, options: .mutableContainers)
//            
//            self.videos = [Video]()
//            
//            
//            for dictionary in json as! [[String: AnyObject]] {
//                
//            let video = Video()
//                video.title = dictionary["title"] as? String
//                video.thumbnailImageName = dictionary["thumbnail_image_name"] as? String
//                
//                video.numberOfViews = dictionary["number_of_views"] as? NSNumber
//                
//                let channelDictionary = dictionary["channel"] as! [String: AnyObject]
//                let channel = Channel()
//                channel.name = channelDictionary["name"] as? String
//                channel.profileImageName = channelDictionary["profile_image_name"] as? String
//                video.channel = channel
//                self.videos?.append(video)
//                //print(dictionary["title"])
//            }
//            DispatchQueue.main.async{
//                
//            self.collectionView.reloadData()
//            }
//            //print(json)
//        } catch let jsonError {
//            print(jsonError)
//        }
//        
//        let str = NSString(data: data!, encoding: String.Encoding.utf8.rawValue)
//        print(str as Any)
//    
//    }.resume()
//}

//    func doAnimeTopGet() {
//           let headers: HTTPHeaders = [
//               "x-rapidapi-host": "jikan1.p.rapidapi.com",
//               "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
//           ]
//
//           AF.request("https://jikan1.p.rapidapi.com/top/anime/1/upcoming", headers: headers)
//             .responseDecodable(of: animeTopInfo.self) { (response) in
//                 guard let animes = response.value else {return}
//
//
//
//                 self.animes = [animeTopInfoStruct]()
//
//                 for item in 0...10 {
//                     var anime = animeTopInfoStruct()
//                    print(animes)
//
//                     anime.top.image_url = animes.top[item].image_url as? String
//                     anime.top.title = animes.top[item].title as? String
//                     anime.top.type = animes.top[item].type as? String
//                     anime.top.rank = animes.top[item].rank as? Int
//                     anime.top.end_date = animes.top[item].end_date as? String
//                     self.animes?.append(anime)
//
//                     }
//
//                 }
//
//               }
