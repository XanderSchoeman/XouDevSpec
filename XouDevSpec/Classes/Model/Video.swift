//
//  Video.swift
//  XouTube
//
//  Created by Xander Schoeman on 2020/02/20.
//  Copyright © 2020 Xander Schoeman. All rights reserved.
//

import UIKit

public class Video: NSObject {
   public  var thumbnailImageName: String?
   public var title: String?
   public var numberOfViews: NSNumber?
   public var uploadDate: NSDate?
   public var channel: Channel?
}
public class Channel: NSObject {
   public var name: String?
   public var profileImageName: String?
}
