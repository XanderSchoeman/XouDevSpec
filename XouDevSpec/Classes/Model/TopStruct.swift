//
//  TopStruct.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/02/25.
//

import Foundation

public struct TopResponse: Decodable {
    public var request_hash: String
    public var request_cached: Bool
    public var request_cache_expiry: Int
    public var top = [TopDetail]()
    public init() {
        request_hash.self = "request:top:f4a7cf4b1914728b1874e27d481c326e5b6431a6"
        request_cached.self = true
        request_cache_expiry.self = 0
    }
        
}

//public struct TopIntStruct: Decodable {
//    public var id = [TopDetail]()
//}


public struct TopDetail: Decodable {
    public var mal_id: Int
    public var rank: Int?
  public var title: String?
    public  var url: String?
    public var image_url: String?
    public var type: String?
    public var episodes: Int?
    public var start_date: String?
    public var end_date: String?
    public var members: Int?
    public var score: Int?
    
    public init( ){
        
        mal_id.self = 0
        rank.self = 0
        title.self = ""
        url.self = ""
        image_url.self = ""
        type.self = ""
        episodes.self = 0
        start_date.self = ""
        end_date.self = ""
        members.self = 0
        score.self = 0
        
    }
}
