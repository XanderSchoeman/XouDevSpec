//
//  VideoCell.swift
//  XouTube
//
//  Created by Xander Schoeman on 2020/02/19.
//  Copyright © 2020 Xander Schoeman. All rights reserved.
//

import UIKit

public class BasesCell: UICollectionViewCell {
    override init(frame: CGRect) {
           super.init(frame: frame)
           setupViews()
    }
    func setupViews() {
    }
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
    }
}
public class VideoCells: BasesCell {
   public var anime: animeTopInfoStruct? {
        didSet {
            titleLabel.text = anime?.top.title
            setupThumbnailImage()
            setupProfileImage()

            if let type = anime?.top.type, let rank = anime?.top.rank, let endDate = anime?.top.end_date {
                
                
                let subtitleText = "Type: \(type) • Rank: \((rank)) • EndDate: \(endDate) "
                subtitleTextView.text = subtitleText
            }
            //meassure title text
            if let title = anime?.top.title {
                let size = CGSize(width: frame.width - 16 - 44 - 8 - 16, height: 1000)
                let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
                let estimatedRect = NSString(string: title).boundingRect(with: size,
                                                                         options: options,
                                                                         attributes:
                    [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)],
                                                                         context: nil)
                if estimatedRect.size.height  > 20 {
                    titleLabelHeightConstraint?.constant = 44
                } else {
                    titleLabelHeightConstraint?.constant = 20
                }
            }
        }
    }
    func setupProfileImage() {
        if let profileImageUrl = anime?.top.image_url {
            userProfileImageView.loadImageUsingUrlString(urlString: profileImageUrl)
        }
    }
    func setupThumbnailImage() {
        if let thumbImageUrl = anime?.top.image_url {
            thumbnailImageView.loadImageUsingUrlString(urlString: thumbImageUrl)
        }
    }
    let thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "sizedImage")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    let userProfileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Image-1")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        //corner radius should be half of width and height
        imageView.layer.cornerRadius = 22
        imageView.layer.masksToBounds = true
        return imageView
    }()
    let seperatorView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 230/255, alpha: 1)
        return view
    }()
    let titleLabel: UILabel = {
       let label = UILabel()
     //   label.backgroundColor = UIColor.purple
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Some Title - More Some Title"
        label.numberOfLines = 2
        return label
    }()
    let subtitleTextView: UITextView = {
        let textView = UITextView()
        //textView.backgroundColor = UIColor.red
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.text = "Something • Unknown amount of views • unknown year/time"
        textView.textContainerInset = UIEdgeInsets(top: 0, left: -4, bottom: 0, right: 0)
        textView.textColor = UIColor.lightGray
        return textView
    }()
    var titleLabelHeightConstraint: NSLayoutConstraint?
    // swiftlint:disable all
     override func setupViews()
    {
       addSubview(thumbnailImageView)
        addSubview(seperatorView)
        addSubview(userProfileImageView)
        addSubview(titleLabel)
        addSubview(subtitleTextView)
        //manual constraints expanded
        //addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-16-[v0]-16-|", options: NSLayoutConstraint.FormatOptions(), metrics: nil, views: ["v0" : thumbnailImageView]))
        
        
        //horizontal constraints
        addConstraintsWithFormats(format: "H:|-16-[v0]-16-|", views: thumbnailImageView,seperatorView)
        //for userprofile horizontal constraints
        addConstraintsWithFormats(format: "H:|-16-[v0(44)]", views: userProfileImageView)
        
        //vertical constraints
        addConstraintsWithFormats(format: "V:|-16-[v0]-8-[v1(44)]-36-[v2(1)]|", views: thumbnailImageView,userProfileImageView,seperatorView)
        addConstraintsWithFormats(format: "H:|[v0]|", views: seperatorView)
        
       //top constraint
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .top, relatedBy: .equal, toItem: thumbnailImageView, attribute: .bottom, multiplier: 1, constant: 8))
        //left constraint
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        //right constraint
        addConstraint(NSLayoutConstraint(item: titleLabel, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        //height constraint
        titleLabelHeightConstraint = NSLayoutConstraint(item: titleLabel, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 44)
        addConstraint(titleLabelHeightConstraint!)
        
        
        
        
        //top constraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .top, relatedBy: .equal, toItem: titleLabel, attribute: .bottom, multiplier: 1, constant: 4))
        //left constraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .left, relatedBy: .equal, toItem: userProfileImageView, attribute: .right, multiplier: 1, constant: 8))
        //right constraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .right, relatedBy: .equal, toItem: thumbnailImageView, attribute: .right, multiplier: 1, constant: 0))
        //height constraint
        addConstraint(NSLayoutConstraint(item: subtitleTextView, attribute: .height, relatedBy: .equal, toItem: self, attribute: .height, multiplier: 0, constant: 30))
        
        
        //addConstraintsWithFormats(format: "V:[v0(20)]", views: titleLabel)
        //addConstraintsWithFormats(format: "H:|[v0]|", views: titleLabel)
    }
    // swiftlint:enable all
}