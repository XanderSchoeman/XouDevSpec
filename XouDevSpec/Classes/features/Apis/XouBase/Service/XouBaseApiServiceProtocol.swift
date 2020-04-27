//
//  XouBaseApiServiceProtocol.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/27.
//

import Foundation

public protocol XouBaseApiServiceProtocol {
    
    func getUsers(completetionHandler: @escaping(Result<[User], AnimeError>) -> Void)
    
    func registerUser(theUser: User,completetionHandler: @escaping(Result<User, AnimeError>) -> Void)
    
    func loginUser(theLoginModel: Login,completetionHandler: @escaping(Result<User, AnimeError>) -> Void)
    
}
