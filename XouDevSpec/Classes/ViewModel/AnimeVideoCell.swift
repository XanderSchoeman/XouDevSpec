//
//  VideoCell.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/03.
//

import UIKit

protocol AnimeVideoCellProtocol : class {
    func setAnimeVid(anime: animeTopInfoStruct)
    
}

public class AnimeVideoCell: UITableViewCell, AnimeVideoCellProtocol {

    

    @IBOutlet weak var videoImageView: UIImageView!
    
    @IBOutlet weak var videoTitleLabel: UILabel!
    
   public func setAnimeVid(anime: animeTopInfoStruct) {
    //videoImageView.image = UIImage(named: anime.top.image_url!)
        videoTitleLabel.text = anime.top.title
    if let profileImageUrl = anime.top.image_url {
        videoImageView.loadImageUsingUrlString(urlString: profileImageUrl)
      }
    }

}
