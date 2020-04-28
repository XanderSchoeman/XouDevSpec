//
//  RegisterViewModel.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/27.
//

import Foundation

public protocol RegisterViewModelProtocol {
    func registerAUser(withUser: User)
}

public class RegisterViewModel {
    weak var view: RegisterViewProtocol?
    var Repo: XouBaseApiServiceProtocol
    
    public init(with view: RegisterViewProtocol, repo: XouBaseApiServiceProtocol) {
        self.view = view
        self.Repo = repo
    }
}

extension RegisterViewModel: RegisterViewModelProtocol {
    
    public func registerAUser(withUser: User){
        Repo.registerUser(theUser: withUser, completetionHandler: { result in
            switch result {
            case .success(let user):
                print("Success the user: \(user.username) has been registered")
                DispatchQueue.main.async {
                    self.view?.notifyUserOnSuccess()
                }
            case .failure(let error):
                print("An error has occured: \(error)")
                DispatchQueue.main.async {
                    self.view?.notifyUserOnError()
                }
                
            }
        })
    }
}
