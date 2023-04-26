//
//  UserModel.swift
//  InfinityScrolling
//
//  Created by Bhumika Patel on 26/04/23.
//

import Foundation

struct User: Decodable, Identifiable{
    let id: Int
    let name: String
    let url: String
    
    enum CodeKeys: String, CodingKey {
        case id
        case name = "login"
        case url = "avatar_url"
    }
}
