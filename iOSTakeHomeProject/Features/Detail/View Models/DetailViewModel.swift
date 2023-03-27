//
//  DetailViewModel.swift
//  iOSTakeHomeProject
//
//  Created by Matthew Dolan on 2023-03-27.
//

import Foundation

final class DetailViewModel: ObservableObject {
    
    @Published private(set) var userInfo: UserDetailResponse?
    
    func fetchDetail(for id: Int) {
        NetworkingManager.shared.request("https://reqres.in/api/users/\(id)",
                                         type: UserDetailResponse.self) { [weak self] res in
            
            DispatchQueue.main.async {
                switch res {
                case .success(let response):
                    self?.userInfo = response
                case .failure(let error):
                    print(error)
                }
            }
        }
    }
}
