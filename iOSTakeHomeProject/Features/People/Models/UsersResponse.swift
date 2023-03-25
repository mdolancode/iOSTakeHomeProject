//
//  UsersResponse.swift
//  iOSTakeHomeProject
//
//  Created by Matthew Dolan on 2023-03-24.
//

import Foundation

// MARK: - UsersResponse
struct UsersResponse: Codable {
    let page, perPage, total, totalPages: Int
    let data: [User]
    let support: Support 
}
