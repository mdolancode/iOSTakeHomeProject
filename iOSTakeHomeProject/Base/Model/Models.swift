//
//  Models.swift
//  iOSTakeHomeProject
//
//  Created by Matthew Dolan on 2023-03-24.
//

import Foundation

// MARK: - User
struct User: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String
}

// MARK: - Support
struct Support: Codable {
    let url: String
    let text: String
}
