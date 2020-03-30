//
//  VideoCell.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/03.
//

import UIKit

public class AnimeVideoCell: UITableViewCell {

    @IBOutlet weak var videoImageView: UIImageView!
    @IBOutlet weak var videoTitleLabel: UILabel!

   public var animeViewModel: AnimeTableViewModel! {
        didSet {
            videoTitleLabel.text = animeViewModel.title
            if let ImageUrl = animeViewModel.image_url {
              videoImageView.loadImageUsingUrlString(urlString: ImageUrl)
            }
        }
    }
    
    public var mangaViewModel: MangaTableViewModel! {
         didSet {
             videoTitleLabel.text = mangaViewModel.title
             if let ImageUrl = mangaViewModel.image_url {
               videoImageView.loadImageUsingUrlString(urlString: ImageUrl)
             }
         }
     }
    
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
