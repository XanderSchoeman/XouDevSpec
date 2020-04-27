//
//  UserModel.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/20.
//

import Foundation

public struct User: Codable {
    public var gender: String? = ""
    public var password: String = ""
    public var profileImage: String? = ""
    public var id: String = ""
    public var age: Int = 0
    public var favouriteCount: Int = 0
    public var fullName: String = ""
    public  var username: String = ""
    public var email: String = ""
    public var genrePref: String = ""
    
    public init() {
    }
    
    public init (gender: String?, password: String, profileImage: String, age: Int, fullName: String, username: String, email: String, genrePref: String) {
        self.username = username
        self.password = password
        self.profileImage = profileImage
        self.fullName = fullName
        self.email = email
        self.gender = gender
        self.age = age
        self.genrePref = genrePref
    }
}

public struct Login: Codable {
    public var id: String = ""
    public  var username: String = ""
    public var password: String = ""


    public init() {
    }
    
    public init ( userName: String, password: String) {
        self.username = userName
        self.password = password

    }
}
