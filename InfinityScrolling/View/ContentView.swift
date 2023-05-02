//
//  ContentView.swift
//  InfinityScrolling
//
//  Created by Bhumika Patel on 26/04/23.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject private var userVM = UserViewModel()
   
    @State var columns = Array(repeating: GridItem(.flexible(), spacing: 15), count: 2)
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false)
            {
                LazyVGrid(columns: self.columns, spacing: 25)
                {
                    ForEach(userVM.users, id: \.id) { user in
                        UserView(user: user)
                        
                    }
                    Spinner(isFailed: userVM.isRequestFailed)
                        .onAppear(perform: fetchData)
                }
                .padding([.horizontal, .top])
            }
            
            .background(Color.black.opacity(0.05).edgesIgnoringSafeArea(.all))
            .navigationTitle("UserList")
        }
    }
     
    private func fetchData(){
        userVM.getUsers()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
