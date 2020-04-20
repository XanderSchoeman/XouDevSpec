//
//  UserModel.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/19.
//

import Foundation

public struct User: Decodable {
    public var id: Int = 0
    public  var username: String = ""
    public var password: String = ""
    public var profileImage: String? = ""
    public var fullName: String = ""
    public var email: String = ""
    public var gender: String? = ""
    public var age: Int = 0
    public var favouriteCount: Int = 0
    public var genrePref: String = ""

    public init() {        
    }
}
