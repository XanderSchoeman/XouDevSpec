//import Foundation
//
//public func GetTopAnimeFunc(completetion: @escaping (Result<TopResponse,Error>) ->()){
//    
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
//            if let err = err {
//                completetion(.failure(err))
//                return
//            }
//            //success
//            do {
//                let topResponses = try JSONDecoder().decode(TopResponse.self, from: data!)
//                completetion(.success(topResponses))
//            }catch let jsonError {
//                completetion(.failure(jsonError))
//               
//            }
//            
//            
//        }).resume()
//        
//            
//    
//}



//func loadData(){
//    let session = URLSession.shared.dataTask(with: URLRequest(url : apiUrl!)) { (data, response, error) in
//        if let httpResponse = response as? HTTPURLResponse {
//            if(httpResponse.statusCode != 200) {
//                //DIE AND SHOW ERROR MESSAGE
//            }
//        }
//        if let myData = data {
//            if let json = try? JSONSerialization.jsonObject(with: myData, options: []) as! Dictionary<String,Any> {
//                //PARSE IT
//                if let statusCode = json["status"] as? String {
//                    if(statusCode == "ok") {
//                        if let articles = json["articles"] as? Array<Dictionary<String,Any>> {
//                            self.articles = articles;
//                            DispatchQueue.main.async {
//                                self.uiCollectionView.reloadData()
//                            }
//                        } else {
//                            //ERROR WITH API REQUEST NOT OK
//                        }
//                    }
//                } else {
//                    //ERROR WITH API REQUEST NOT OK
//                }
//            } else {
//                print("Error");
//            }
//        }
//    }
//    session.resume();
//}




public func apiCallTop(){
 let request = NSMutableURLRequest(url: NSURL(string: "https://jikan1.p.rapidapi.com/top/anime/1/upcoming")! as URL,
                                            cachePolicy: .useProtocolCachePolicy,
                                        timeoutInterval: 10.0)
   let headers = [
        "x-rapidapi-host": "jikan1.p.rapidapi.com",
        "x-rapidapi-key": "844aa4143cmsha9162c362813b50p169716jsn9c6c8269713a"
    ]

    request.httpMethod = "GET"
    request.allHTTPHeaderFields = headers


    URLSession.shared.dataTask(with: request as URLRequest) { (data, response, err) in
        
        guard let data = data else {return}
        
        
        do {
            let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers)
           let top = json as? [String: Any]
            
            for topKey in 0...49{
                
                
               // let topItem = top[topKey]
                
            }
        } catch let jsonErr {
            print(jsonErr)
            
        }
       



        }.resume()

}

