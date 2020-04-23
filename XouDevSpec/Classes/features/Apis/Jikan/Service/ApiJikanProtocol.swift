//
//  ApiJikanProtocl.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/22.
//

import Foundation

public protocol ApiJikanCallerProtocol {
    
  func  getAnimeData(completetionHandler: @escaping(Result<[AnimeDetails], AnimeError>) -> Void)
    
    func getMangaData(completetionHandler: @escaping(Result<[MangaDetails], AnimeError>) -> Void)
    
   func  getAnimeTopData(completetionHandler: @escaping(Result<[TopStruct], AnimeError>) -> Void)
    
    func initStrings(search: String, genre: String)
    
}
