//
//  ContentView.swift
//  InfinityScrolling
//
//  Created by Bhumika Patel on 26/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    
    var body: some View {

            ScrollView(.vertical, showsIndicators: false){
                HStack{
                    Text("User List")
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                    Button{
                        
                    }label: {
                        Image(systemName: "rectangle.grid.1x2")
                            .font(.system(size: 24))
                            .foregroundColor(.black)
                    }
                }
                .padding(.horizontal)
                .padding(.top,25)
                
                LazyVGrid(columns: self.columns, spacing: 25){
                    ForEach(0..<100) { user in
                       UserView()
                    }
                }
            }
    
            .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
