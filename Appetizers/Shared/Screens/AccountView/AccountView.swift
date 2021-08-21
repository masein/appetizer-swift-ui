//
//  AccountView.swift
//  Appetizers
//
//  Created by Masein Mody on 26/07/2021.
//
import SwiftUI

struct AccountView: View {
  @StateObject var viewModel = AccountViewModel()
  
  var body: some View {
    NavigationView {
      Form {
        Section(header: Text("Personal Info")) {
          TextField("First Name", text: $viewModel.user.firstName)
          TextField("Last Name", text: $viewModel.user.lastName)
          TextField("Email", text: $viewModel.user.email)
            .keyboardType(.emailAddress)
            .autocapitalization(.none)
            .disableAutocorrection(true)
          DatePicker("Birthday", selection: $viewModel.user.birthDate, displayedComponents: .date)
          Button {
            viewModel.saveChanges()
          } label: {
            Text("Save Changes")
          }
        }
        
        Section(header: Text("Requests")) {
          Toggle("Extra Napkins", isOn: $viewModel.user.extraNapkins)
          Toggle("Frequent REfills", isOn: $viewModel.user.frequentRefills)
        }
        .toggleStyle(SwitchToggleStyle(tint: .brandPrimary))
      }
      .navigationTitle("🤣 Account")
    }
    .onAppear {
      viewModel.retrieveUser()
    }
    .alert(item: $viewModel.alertItem) { (alertItem) -> Alert in
      Alert(title: alertItem.title,
            message: alertItem.message,
            dismissButton: alertItem.dismissButton)
    }
  }
}

struct AccountView_Previews: PreviewProvider {
  static var previews: some View {
    AccountView()
  }
}
