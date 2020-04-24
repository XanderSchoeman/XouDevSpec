//
//  AnimeViewModel.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/23.
//

import Foundation

public protocol AnimeViewModelProtocol {
    func getAnimeData(searchString: String, genreString: String)
    func getTopAnimeData()
}

public class AnimeViewModel {
    weak var view: AnimeViewProtocol?
    var Repo: ApiJikanCallerProtocol
    
    public init(with view: AnimeViewProtocol, repo: ApiJikanCallerProtocol) {
        self.view = view
        self.Repo = repo
    }
}

extension AnimeViewModel: AnimeViewModelProtocol {
    
    public func getAnimeData(searchString: String, genreString: String) {
        Repo.initStrings(search: searchString, genre: genreString)
        Repo.getAnimeData { [weak self] result in
            switch result {
            case .failure( let error):
                print(error)
            case .success(let animes):
                self?.view?.animeRetrieveData(animeDetails: animes)
            }
        }
    }
    public func getTopAnimeData() {
        Repo.getAnimeTopData { [weak self] result in
            switch result {
            case .failure( let error):
                print(error)
            case .success(let animes):
                self?.view?.animeRetrieveTopData(animeDetails: animes)
            }
        }
    }
    
    
}
