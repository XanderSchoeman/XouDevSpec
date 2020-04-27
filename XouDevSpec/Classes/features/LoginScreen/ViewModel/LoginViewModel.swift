//
//  LoginViewModel.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/27.
//

import Foundation

public var loggedInUser = User()
public var isUserLoggedIn = Bool()

public protocol LoginViewModelProtocol {
     func logUserIn(withUser: Login)
}

public class LoginViewModel {
    weak var view: LoginViewProtocol?
    var Repo: XouBaseApiServiceProtocol
    
    public init(with view: LoginViewProtocol, repo: XouBaseApiServiceProtocol) {
        self.view = view
        self.Repo = repo
    }
}

extension LoginViewModel: LoginViewModelProtocol {
    
    public func logUserIn(withUser: Login){
        Repo.loginUser(theLoginModel: withUser, completetionHandler: { result in
            switch result {
            case .success(let user):
                print("Succes the user: \(user.username) has been logged in")
                loggedInUser = user
                isUserLoggedIn = true
                self.view?.retrieveLoginData(with: user)
            case .failure(let error):
                print("An error has occured: \(error)")
            }
        })
    }
}
