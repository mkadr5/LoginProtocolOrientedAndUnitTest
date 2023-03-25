//
//  RootViewModel.swift
//  LoginProtocolOriented
//
//  Created by Muhammet Kadir on 26.03.2023.
//

import Foundation

class RootViewModel{
    private let loginStorageService : LoginStorageService
    
    weak var output : RootViewModelOutput?
    
    init(loginStorageService: LoginStorageService) {
        self.loginStorageService = loginStorageService
    }
    
    func checkLogin(){
        if let accessToken = loginStorageService.getUserAccessToken(), !accessToken.isEmpty{
            output?.showMainApp()
        }else{
            output?.showLogin()
        }
    }
}
