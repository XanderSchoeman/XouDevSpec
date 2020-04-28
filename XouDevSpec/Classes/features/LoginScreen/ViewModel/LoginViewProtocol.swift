//
//  LoginViewModelProtocol.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/27.
//

import Foundation

public protocol LoginViewProtocol: class {
    func retrievedLoginData(with: User)
    func notifyUserOnError()
    func notifyUserOnSuccess()
}
