//
//  ApiService.swift
//  InfinityScrolling
//
//  Created by Bhumika Patel on 26/04/23.
//

import Foundation
import Combine

class ApiService {
     static let shared = ApiService()
    
    func getUsers(perPage: Int = 30, sinceId: Int? = nil) -> AnyPublisher<[User], Error> {
        var components = URLComponents(string:"https://api.github.com/users")!
        components.queryItems = [
                                URLQueryItem(name: "per_page", value: "\(perPage)"),
                                URLQueryItem(name: "since", value: (sinceId != nil) ? "\(sinceId!)" : nil)
                                ]
                                             
                            let request = URLRequest(url: components.url!, timeoutInterval: 5)
                            return URLSession.shared.dataTaskPublisher(for: request)
                                .map(\.data)
                                .decode(type: [User].self, decoder: JSONDecoder())
                                .eraseToAnyPublisher()
    }
}
