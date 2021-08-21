//
//  APButton.swift
//  Appetizers (iOS)
//
//  Created by Masein Mody on 01/08/2021.
//

import SwiftUI

struct APButton: View {
  var title: LocalizedStringKey
  var body: some View {
    Text(title)
      .font(.title3)
      .fontWeight(.semibold)
      .frame(width: 260, height: 50)
      .foregroundColor(.white)
      .background(Color.brandPrimary)
      .cornerRadius(10)
    
  }
}

struct APButton_Previews: PreviewProvider {
  static var previews: some View {
    APButton(title: "Test title")
  }
}
