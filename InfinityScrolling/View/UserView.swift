//
//  UserView.swift
//  InfinityScrolling
//
//  Created by Bhumika Patel on 26/04/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct UserView: View {
 let user: User
    @State var show = false
     
    var body: some View {
        VStack(spacing: 15){
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)) {
                
                Button {
                    show.toggle()
                } label: {
                    AnimatedImage(url: URL(string: user.avatarUrl)!)
                        .resizable()
                        .frame(height: 250)
                        .cornerRadius(15)
                }
                
            }
            Text(user.name)
                .fontWeight(.bold)
        }
        .sheet(isPresented: $show, content: {
            DetailsView(user: User(id: user.id, name: user.name, avatarUrl: user.avatarUrl))
        })
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
      
               let mockUser = User(id: 1, name: "cairocoders", avatarUrl: "")
               UserView(user: mockUser)
           }
}
