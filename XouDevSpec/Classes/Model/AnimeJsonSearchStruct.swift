//
//  AnimeJsonStruct.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/17.
//

import Foundation

public struct animeInfo: Decodable {
    public var request_hash: String?
    public var request_cached: Bool?
    public var request_cache_expiry: Int?
    public var results = [AnimeDetails]()
    public var last_page : Int?

    public init() {
        request_hash.self = ""
        request_cached.self = true
        request_cache_expiry.self = 0
        last_page.self = 0

    }

}


public struct AnimeDetails: Decodable {
    public var mal_id: Int?
    public  var url: String?
    public var image_url: String?
    public var title: String?
    public var airing: Bool?
    public var synopsis: String?
    public var type: String?
    public var episodes: Int?
    public var score: Double?
    public var start_date: String?
    public var end_date: String?
    public var members: Int?
    public var rated: String?

    public init() {

        mal_id.self = 0
        url.self = ""
        image_url.self = ""
        title.self = ""
        airing.self = true
        synopsis.self = ""
        type.self = ""
        episodes.self = 0
        score.self = 0.0
        start_date.self = ""
        end_date.self = ""
        members.self = 0
        rated.self = ""


    }
}


//Used for testing
//public struct animeInfo: Decodable {
//    public var request_hash: String?
//    public var request_cached: Bool?
//    public var request_cache_expiry: Int?
//    public var results = [Top]()
//
//    public init() {
//        request_hash.self = ""
//        request_cached.self = true
//        request_cache_expiry.self = 0
//
//    }
//
//}
//
//
//public struct Top: Decodable {
//    public var mal_id: Int?
//    public var rank: Int?
//  public var title: String?
//    public  var url: String?
//    public var image_url: String?
//    public var type: String?
//    public var episodes: Int?
//    public var start_date: String?
//    public var end_date: String?
//    public var members: Int?
//    public var score: Int?
//
//    public init() {
//
//        mal_id.self = 0
//        rank.self = 0
//        title.self = ""
//        url.self = ""
//        image_url.self = ""
//        type.self = ""
//        episodes.self = 0
//        start_date.self = ""
//        end_date.self = ""
//        members.self = 0
//        score.self = 0
//
//    }
//}
