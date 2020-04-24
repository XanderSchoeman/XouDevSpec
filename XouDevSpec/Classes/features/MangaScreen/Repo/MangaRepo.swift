//
//  MangaSearchStruct.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/24.
//

import Foundation

    public struct MangaInfo: Decodable {
        public var request_hash: String = ""
        public var request_cached: Bool = true
        public var request_cache_expiry: Int = 0
        public var results = [MangaDetails]()
        public var last_page : Int = 0

        public init() {
        }

    }

    public struct MangaDetails: Decodable {
        public var mal_id: Int = 0
        public  var url: String? = ""
        public var image_url: String? = ""
        public var title: String? = ""
        public var publishing: Bool = false
        public var synopsis: String? = ""
        public var type: String = "Manga"
        public var chapters: Int? = 0
        public var volumes: Int? = 0
        public var score: Double? = 0.0
        public var start_date: String? = ""
        public var end_date: String? = ""
        public var members: Int? = 0

        public init() {
        }
    }


