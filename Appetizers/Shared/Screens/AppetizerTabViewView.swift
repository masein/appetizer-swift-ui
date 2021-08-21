//
//  AppetizerTabViewView.swift
//  Shared
//
//  Created by Masein Mody on 26/07/2021.
//

import SwiftUI

struct AppetizerTabViewView: View {
    var body: some View {
      TabView {
        AppetizerListView()
          .tabItem {
            Image(systemName: "house")
            Text("Home")
          }
        AccountView()
          .tabItem {
            Image(systemName: "person")
            Text("Account")
          }
        OrderView()
          .tabItem {
            Image(systemName: "bag")
            Text("Order")
          }
      }.accentColor(.brandPrimary)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabViewView()
    }
}
