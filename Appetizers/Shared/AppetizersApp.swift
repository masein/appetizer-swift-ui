//
//  AppetizersApp.swift
//  Shared
//
//  Created by Masein Mody on 26/07/2021.
//

import SwiftUI

@main
struct AppetizersApp: App {
  var order = Order()
    var body: some Scene {
        WindowGroup {
          AppetizerTabViewView().environmentObject(order)
        }
    }
}
