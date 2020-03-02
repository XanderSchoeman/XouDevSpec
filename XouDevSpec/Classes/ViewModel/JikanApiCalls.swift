//
//  JikanApiCalls.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/01.
//

import Foundation
import Alamofire

public func TopAnimeApiReq(){

//let headers = [
//    "x-rapidapi-host": "jikan1.p.rapidapi.com",
//    "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
//]
//
//let request = NSMutableURLRequest(url: NSURL(string: "https://jikan1.p.rapidapi.com/top/anime/1/upcoming")! as URL,
//                                        cachePolicy: .useProtocolCachePolicy,
//                                    timeoutInterval: 10.0)
//request.httpMethod = "GET"
//request.allHTTPHeaderFields = headers
//
//let session = URLSession.shared
//let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
//    if (error != nil) {
//        print(error)
//    } else {
//        let httpResponse = response as? HTTPURLResponse
//        print(httpResponse)
//    }
//})
//    
//    
//   
//    
//    
//    
//
//dataTask.resume()
    
    let headers: HTTPHeaders = [
        "x-rapidapi-host": "jikan1.p.rapidapi.com",
        "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
    ]
    
    let requesr = AF.request("https://api.jikan.moe/v3",method: .get, headers: headers).responseJSON {
           response in debugPrint(response)

       }
    debugPrint(requesr)
    
//    AF.request("https://jikan1.p.rapidapi.com/top/anime/1/upcoming", headers: headers).responseJSON {
//        response in
//        print(response.response?.allHeaderFields)
//    }
//    AF.request("https://jikan1.p.rapidapi.com/top/anime/1/upcoming", method: HTTPMethod.get, headers: headers).responseJSON {
//        response in debugPrint(response.response?.allHeaderFields)
//    }
}

//public func doRequestWithHeaders1() {
//  let headers: HTTPHeaders = [
//      "x-rapidapi-host": "jikan1.p.rapidapi.com",
//      "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
//  ]
//
//  AF.request("https://jikan1.p.rapidapi.com/top/anime/1/upcoming", headers: headers)
//    .responseJSON { response in
//    debugPrint(response)
//  }
//
//  // MARK: - To make sure the headers are sent, use debugPrint on the request
//  let request = AF.request("https://jikan1.p.rapidapi.com/top/anime/1/upcoming", headers: headers)
//    .responseJSON { response in
//    debugPrint(response)
//  }
//  debugPrint(request)
//}

//public func doRequestWithHeaders1() {
//  let headers: HTTPHeaders = [
//      "x-rapidapi-host": "jikan1.p.rapidapi.com",
//      "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
//  ]
//
//  AF.request("https://jikan1.p.rapidapi.com/top/anime/1/upcoming", headers: headers)
//    .responseDecodable(of: animeTopInfo.self) { (response) in
//        guard let animes = response.value else {return}
//        print(animes.top[0].title)
//
//  }
//
//}
//
//public func doRequestWithHeaders2() {
//           var videos: [Video]?
//        let colView: UICollectionView?
//
//         let headers: HTTPHeaders = [
//             "x-rapidapi-host": "jikan1.p.rapidapi.com",
//             "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
//         ]
//
//         AF.request("https://jikan1.p.rapidapi.com/top/anime/1/upcoming", headers: headers)
//           .responseDecodable(of: animeTopInfo.self) { (response) in
//               guard let animes = response.value else {return}
//
//               //self.animeObj = [animeTopInfo]() // use to append
//               print(animes.top[0].title as Any)
//
//            videos = [Video]()
//
//               for item in 0...10 {
//                   var video = Video()
//                   video.thumbnailImageName = animes.top[item].image_url as? String
//                                            video.title = animes.top[item].title as? String
//                                               videos?.append(video)
//                   //print(video.thumbnailImageName)
//
//                   DispatchQueue.main.async{
//
//                    colView!.reloadData()
//                   }
//
//               }
//
//                   DispatchQueue.main.async{
//
//                    colView!.reloadData()
//                   }
//
//               }
//
//         }

//public func doRequestWithHeaders1() {
//           var videos: [Video]?
//         let headers: HTTPHeaders = [
//             "x-rapidapi-host": "jikan1.p.rapidapi.com",
//             "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
//         ]
//
//         AF.request("https://jikan1.p.rapidapi.com/top/anime/1/upcoming", headers: headers)
//           .responseDecodable(of: animeTopInfo.self) { (response) in
//               guard let animes = response.value else {return}
//
//               //self.animeObj = [animeTopInfo]() // use to append
//               print(animes.top[0].title as Any)
//
//            self.videos = [Video]()
//
//               for item in 0...10 {
//                   var video = Video()
//                   video.thumbnailImageName = animes.top[item].image_url as? String
//                                            video.title = animes.top[item].title as? String
//                                               videos?.append(video)
//                   //print(video.thumbnailImageName)
//                   DispatchQueue.main.async{
//
//                   self.collectionView.reloadData()
//                   }
//
//               }
//
//                   DispatchQueue.main.async{
//
//                   self.collectionView.reloadData()
//                   }
//
//               }
//
//         }

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
