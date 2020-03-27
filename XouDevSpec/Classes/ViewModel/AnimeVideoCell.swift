//
//  VideoCell.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/03.
//

import UIKit

protocol AnimeVideoCellProtocol : class {
    func setAnimeVidSearch(anime: AnimeDetails)
    func setAnimeVidTop(anime: TopStruct)
    func setMangaSearch(manga: MangaDetails)
}

public class AnimeVideoCell: UITableViewCell, AnimeVideoCellProtocol {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!

    
   public func setAnimeVidSearch(anime: AnimeDetails) {
        videoTitleLabel.text = anime.title
        if let profileImageUrl = anime.image_url {
            videoImageView.loadImageUsingUrlString(urlString: profileImageUrl)
          }
    }
    public func setAnimeVidTop(anime: TopStruct) {
         videoTitleLabel.text = anime.title
         if let profileImageUrl = anime.image_url {
             videoImageView.loadImageUsingUrlString(urlString: profileImageUrl)
           }
     }
    public func setMangaSearch(manga: MangaDetails) {
         videoTitleLabel.text = manga.title
         if let profileImageUrl = manga.image_url {
             videoImageView.loadImageUsingUrlString(urlString: profileImageUrl)
           }
     }
}
