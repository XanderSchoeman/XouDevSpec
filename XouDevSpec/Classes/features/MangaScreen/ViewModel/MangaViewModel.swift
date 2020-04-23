//
//  MangaViewModel.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/22.
//

import Foundation

public protocol MangaViewModelProtocol: class {
    func getMangaData(searchString: String, genreString: String)
    
}

public class MangaViewModel {
    var manga = [MangaDetails]()
    weak var view: MangaViewProtocol?
    var Repo: ApiJikanCallerProtocol
    
    public init(with view: MangaViewProtocol, repo: ApiJikanCallerProtocol) {
        self.view = view
        self.Repo = repo
    }
    
     
}

extension MangaViewModel: MangaViewModelProtocol {


    public func getMangaData(searchString: String, genreString: String){
        Repo.initStrings(search: searchString, genre: genreString)
        Repo.getMangaData { [weak self] result in
            switch result {
            case .failure( let error):
                print(error)
            case .success(let animes):
                self?.manga = animes
                self?.view?.mangaDataRetrieve(mangaDetails: animes)
            }
        }
    }
    
}
