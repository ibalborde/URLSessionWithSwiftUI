//
//  PostListViewModel.swift
//  URLSessionWithSwiftUI
//
//  Created by Maximiliano Ibalborde on 09/09/2020.
//  Copyright © 2020 MaxiIbalborde. All rights reserved.
//

import Foundation
import Combine

class PostListViewModel: ObservableObject {
    
    init() {
        getPosts()
    }
    
    @Published var posts = [Post]() {
        didSet {
            didChange.send(self)
        }
    }
    let didChange = PassthroughSubject<PostListViewModel, Never>()
    
    func getPosts() {
        NetworkManager().getPosts {
            self.posts = $0
        }
    }
}
