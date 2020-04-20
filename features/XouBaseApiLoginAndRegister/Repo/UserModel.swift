//
//  UserModel.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/19.
//

import Foundation

public struct User: Decodable {
    public var id: Int?
    public  var username: String?
    public var password: String?
    public var profileImage: String?
    public var fullName: String?
    public var email: String?
    public var gender: String?
    public var age: Int?
    public var favouriteCount: Int?
    public var genrePref: String?

    public init() {

        id.self = 0
        username.self = ""
        password.self = ""
        profileImage.self = ""
        fullName.self = ""
        email.self = ""
        gender.self = ""
        age.self = 0
        favouriteCount.self = 0
        genrePref = ""
        
    }
}
