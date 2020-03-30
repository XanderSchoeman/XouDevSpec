//
//  MangaTableViewModel.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/28.
//

import Foundation

public class MangaTableViewModel {
    
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
    
    public init(SearchedManga: MangaDetails) {
        self.mal_id = SearchedManga.mal_id
        self.title = SearchedManga.title
        self.image_url = SearchedManga.image_url
        self.url = SearchedManga.url
        self.type = SearchedManga.type
        self.publishing = SearchedManga.publishing
        self.members = SearchedManga.members
        self.score = SearchedManga.score
        self.start_date = SearchedManga.start_date
        self.end_date = SearchedManga.end_date
        self.chapters = SearchedManga.chapters
        self.synopsis = SearchedManga.synopsis
        self.volumes = SearchedManga.volumes
    }
    public init() {
        
    }
    
}
