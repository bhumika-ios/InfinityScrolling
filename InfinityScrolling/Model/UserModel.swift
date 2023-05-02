//
//  UserModel.swift
//  InfinityScrolling
//
//  Created by Bhumika Patel on 26/04/23.
//

import Foundation
 
struct User: Decodable, Identifiable {
    let id: Int
    let name: String
    let avatarUrl: String
    let htmlUrl: String
     
    enum CodingKeys: String, CodingKey {
        case id
        case name = "login"
        case avatarUrl = "avatar_url"
        
        case htmlUrl = "html_url"
    }
}
