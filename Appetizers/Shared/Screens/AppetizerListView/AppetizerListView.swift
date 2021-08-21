//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Masein Mody on 26/07/2021.
//

import SwiftUI

struct AppetizerListView: View {
  @StateObject private var viewModel = AppetizerListViewModel()
  
  var body: some View {
    ZStack {
      NavigationView {
        List(viewModel.appetizers) { appetizer in
          AppetizerListCell(appetizer: appetizer)
            .onTapGesture {
              viewModel.selectedAppetizer = appetizer
              viewModel.isShowingDetail = true
            }
        }
        .navigationTitle("🍟 Appetizers")
        .disabled(viewModel.isShowingDetail)
      }
      .onAppear {
        viewModel.getAppetizers()
      }
      .blur(radius: viewModel.isShowingDetail ? 20 : 0)
      if viewModel.isShowingDetail {
        AppetizerDetailView(appetizer: viewModel.selectedAppetizer!,
                            isShowingDetail: $viewModel.isShowingDetail)
      }
      if viewModel.isLoading {
        LoadingView()
      }
    }
    .alert(item: $viewModel.alertItem) { (alertItem) -> Alert in
      Alert(title: alertItem.title,
            message: alertItem.message,
            dismissButton: alertItem.dismissButton)
    }
  }
}

struct AppetizerListView_Previews: PreviewProvider {
  static var previews: some View {
    AppetizerListView()
  }
}
