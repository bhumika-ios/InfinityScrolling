//
//  DetailView.swift
//  InfinityScrolling
//
//  Created by Bhumika Patel on 26/04/23.
//

import SwiftUI
import SDWebImageSwiftUI
 
struct DetailsView: View {
    var user: User
     
    var body: some View {
        VStack {
            HStack {
                AnimatedImage(url: URL(string: user.avatarUrl)!)
                    .resizable()
                    .frame(width: 250, height: 250)
                    .cornerRadius(15)
            }
             
            HStack {
                Text("User Name :")
                Text(user.name)
            }
        }
    }
}
