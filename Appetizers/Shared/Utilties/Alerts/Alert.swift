//
//  Alert.swift
//  Appetizers
//
//  Created by Masein Mody on 28/07/2021.
//
import SwiftUI

struct AlertItem: Identifiable {
  let id = UUID()
  let title: Text
  let message: Text
  let dismissButton: Alert.Button
}

struct AlertContext {
  static let invalidData = AlertItem(title: Text("Server Error"), message: Text("The data recieved from the server was invalid. Please contact support."), dismissButton: .default(Text("Ok")))
  static let invalidResponse = AlertItem(title: Text("Server Error"), message: Text("Invalid respons from the server. Please try again later or contact support."), dismissButton: .default(Text("Ok")))
  static let invalidURL = AlertItem(title: Text("Server Error"), message: Text("There was an issue conncting to the server. If this persists, please contact support"), dismissButton: .default(Text("Ok")))
  static let unableToComplete = AlertItem(title: Text("Server Error"), message: Text("Unable to complete your request at this time. Please check your internet connection"), dismissButton: .default(Text("Ok")))
  static let invalidForm = AlertItem(title: Text("Invalid From"), message: Text("Please ensure all the fields in the form have been filled out."), dismissButton: .default(Text("Ok")))
  static let invalidEmail = AlertItem(title: Text("Invalid Email"), message: Text("Please ensure your email is correct."), dismissButton: .default(Text("Ok")))
  static let userSaveSuccess = AlertItem(title: Text("Profile Saved"), message: Text("Your profile information is successfully saved."), dismissButton: .default(Text("Ok")))
  static let invalidUserData = AlertItem(title: Text("Profile Error"), message: Text("There was an error saving or retrieving your profile."), dismissButton: .default(Text("Ok")))
}
