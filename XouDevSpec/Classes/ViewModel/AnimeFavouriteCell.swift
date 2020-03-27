//
//  AnimeFavouriteCell.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/26.
//

import Foundation

protocol AnimeFavouriteCellProtocol : class {

    func setAnimeVidFaves(anime: FaveAnimeDetails)
    func setMangaFaves(manga: faveMangaDetails)
}

public class AnimeFavouriteCell: UITableViewCell, AnimeFavouriteCellProtocol {

    @IBOutlet weak var imgFaveAnime: UIImageView!
    @IBOutlet weak var lblFaveAnime: UILabel!
    @IBOutlet weak var imgManga: UIImageView!
    @IBOutlet weak var lblManga: UILabel!
    

    public func setAnimeVidFaves(anime: FaveAnimeDetails) {
         lblFaveAnime.text = anime.title
         if let profileImageUrl = anime.image_url {
             imgFaveAnime.loadImageUsingUrlString(urlString: profileImageUrl)
           }
     }
    public func setMangaFaves(manga: faveMangaDetails) {
         lblManga.text = manga.title
         if let profileImageUrl = manga.image_url {
             imgManga.loadImageUsingUrlString(urlString: profileImageUrl)
           }
     }

}
