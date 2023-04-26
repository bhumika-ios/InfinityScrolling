//
//  UserView.swift
//  InfinityScrolling
//
//  Created by Bhumika Patel on 26/04/23.
//

import SwiftUI

struct UserView: View {
    var body: some View {
        VStack(spacing: 15){
            ZStack(alignment: Alignment(horizontal: .trailing, vertical: .top)){
                Button{
                    
                } label: {
                    Image("p1")
                        .resizable()
                        .frame(height: 250)
                        .cornerRadius(15)
                }
            }
            Text("First Image")
        }
    }
}

struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        UserView()
    }
}
