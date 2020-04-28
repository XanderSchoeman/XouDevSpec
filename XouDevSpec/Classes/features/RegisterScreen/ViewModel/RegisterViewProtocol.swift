//
//  RegisterViewModelProtocol.swift
//  XouDevSpec
//
//  Created by Xander Schoeman on 2020/04/27.
//

import Foundation

public protocol RegisterViewProtocol: class {
     func retrievedRegisterData(with: User)
     func notifyUserOnError()
     func notifyUserOnSuccess()
}
