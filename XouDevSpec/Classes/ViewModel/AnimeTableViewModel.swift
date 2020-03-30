//
//  AnimeTableViewModel.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/17.
//

import UIKit
import Foundation


public struct AnimeTableViewModel {

    //var topAnimeObj: TopStruct?
      public var title: String?
      public var mal_id: Int?
      public var rank: Int?
      public  var url: String?
      public var image_url: String?
      public var type: String?
      public var episodes: Int?
      public var start_date: String?
      public var end_date: String?
      public var members: Int?
      public var score: Double?
      public var airing: Bool?
      public var synopsis: String?
      public var rated: String?
    public init(topAnime: TopStruct) {
        
        self.mal_id = topAnime.mal_id
        self.title = topAnime.title
        self.image_url = topAnime.image_url
        self.url = topAnime.url
        self.rank = topAnime.rank
        self.type = topAnime.type
        self.episodes = topAnime.episodes
        self.members = topAnime.members
        self.score = topAnime.score
        self.start_date = topAnime.start_date
        self.end_date = topAnime.end_date
        
        //Leaving this code commented because I have some questions:
        //Why does this contain no values?
        //self.topAnimeObj?.title = topAnime.title
        //self.topAnimeObj?.title = topAnime.image_url
        //==============================================
        // If i use this then it works, but then it defeats the purpose of dependency injection in the init.
        //self.title = topAnimeObj?.title
        //self.imageUrl = topAnimeObj?.title
    }
    
    public init(SearchedAnime: AnimeDetails) {
        self.mal_id = SearchedAnime.mal_id
        self.title = SearchedAnime.title
        self.image_url = SearchedAnime.image_url
        self.url = SearchedAnime.url
        self.type = SearchedAnime.type
        self.episodes = SearchedAnime.episodes
        self.members = SearchedAnime.members
        self.score = SearchedAnime.score
        self.start_date = SearchedAnime.start_date
        self.end_date = SearchedAnime.end_date
        self.airing = SearchedAnime.airing
        self.synopsis = SearchedAnime.synopsis
        self.rated = SearchedAnime.rated
    }
    public init() {
        
    }
    
}
