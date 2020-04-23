//
//  AnimeViewProtocol.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/23.
//

import Foundation

public protocol AnimeViewProtocol: class {
    func animeRetrieveData(animeDetails: [AnimeDetails])
    func animeRetrieveTopData(animeDetails: [TopStruct])
}
