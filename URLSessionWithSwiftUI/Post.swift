//
//  Post.swift
//  URLSessionWithSwiftUI
//
//  Created by Maximiliano Ibalborde on 28/08/2020.
//  Copyright © 2020 MaxiIbalborde. All rights reserved.
//

import Foundation

struct Post: Codable, Hashable, Identifiable {
    let id = UUID()
    let title: String
    let body: String
}
