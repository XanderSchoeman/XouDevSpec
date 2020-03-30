//
//  AnimeFavouriteCell.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/03/26.
//

import Foundation


public class AnimeFavouriteCell: UITableViewCell {

    @IBOutlet weak var imgFaveAnime: UIImageView!
    @IBOutlet weak var lblFaveAnime: UILabel!
    @IBOutlet weak var imgManga: UIImageView!
    @IBOutlet weak var lblManga: UILabel!
    
    public var animeViewModel: AnimeTableViewModel! {
         didSet {
             lblFaveAnime.text = animeViewModel.title
             if let ImageUrl = animeViewModel.image_url {
               imgFaveAnime.loadImageUsingUrlString(urlString: ImageUrl)
             }
         }
     }
     
     public var mangaViewModel: MangaTableViewModel! {
          didSet {
              lblManga.text = mangaViewModel.title
              if let ImageUrl = mangaViewModel.image_url {
                imgManga.loadImageUsingUrlString(urlString: ImageUrl)
              }
          }
      }

}
