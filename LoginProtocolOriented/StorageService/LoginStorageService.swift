//
//  LoginStorageService.swift
//  LoginProtocolOriented
//
//  Created by Muhammet Kadir on 26.03.2023.
//

import Foundation

protocol LoginStorageService{
    var userAccessTokenKey : String {get}
    func setUserAccessToken(token: String)
    func getUserAccessToken() ->String?
}
