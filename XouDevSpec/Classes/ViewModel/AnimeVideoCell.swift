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
    
}

public class AnimeVideoCell: UITableViewCell, AnimeVideoCellProtocol {

    

    @IBOutlet weak var videoImageView: UIImageView!
    
    @IBOutlet weak var videoTitleLabel: UILabel!
    
   public func setAnimeVidSearch(anime: AnimeDetails) {
    //videoImageView.image = UIImage(named: anime.top.image_url!)
    
        videoTitleLabel.text = anime.title
        if let profileImageUrl = anime.image_url {
            videoImageView.loadImageUsingUrlString(urlString: profileImageUrl)
          }
    

    }
    public func setAnimeVidTop(anime: TopStruct) {
     //videoImageView.image = UIImage(named: anime.top.image_url!)
     
         videoTitleLabel.text = anime.title
         if let profileImageUrl = anime.image_url {
             videoImageView.loadImageUsingUrlString(urlString: profileImageUrl)
           }
     

     }

}
