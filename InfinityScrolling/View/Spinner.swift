//
//  Spinner.swift
//  InfinityScrolling
//
//  Created by Bhumika Patel on 26/04/23.
//

import SwiftUI

import SwiftUI
 
struct Spinner: View {
    let isFailed: Bool
    var body: some View {
        Text(isFailed ? "Failed. Tap to retry." : "Loading..")
            .foregroundColor(isFailed ? .red : .green)
            .padding()
            .font(.title)
    }
}
 
struct Spinner_Previews: PreviewProvider {
    static var previews: some View {
        Spinner(isFailed: false)
    }
}
