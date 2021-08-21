//
//  User.swift
//  Appetizers
//
//  Created by Masein Mody on 03/08/2021.
//

import Foundation

struct User: Codable {
  var firstName = ""
  var lastName = ""
  var email = ""
  var birthDate = Date()
  var extraNapkins = false
  var frequentRefills = false
}
