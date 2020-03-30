//
//  MangaSearchStruct.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/24.
//

import Foundation

    public struct mangaInfo: Decodable {
        public var request_hash: String?
        public var request_cached: Bool?
        public var request_cache_expiry: Int?
        public var results = [MangaDetails]()
        public var last_page : Int?

        public init() {
            request_hash.self = ""
            request_cached.self = true
            request_cache_expiry.self = 0
            last_page.self = 0

        }

    }

    public struct MangaDetails: Decodable {
        public var mal_id: Int?
        public  var url: String?
        public var image_url: String?
        public var title: String?
        public var publishing: Bool?
        public var synopsis: String?
        public var type: String?
        public var chapters: Int?
        public var volumes: Int?
        public var score: Double?
        public var start_date: String?
        public var end_date: String?
        public var members: Int?

        public init() {

            mal_id.self = 0
            url.self = ""
            image_url.self = ""
            title.self = ""
            publishing.self = true
            synopsis.self = ""
            type.self = ""
            chapters.self = 0
            volumes.self = 0
            score.self = 0.0
            start_date.self = ""
            end_date.self = ""
            members.self = 0
        }
    }


