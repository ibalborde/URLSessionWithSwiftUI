//
//  ContentView.swift
//  URLSessionWithSwiftUI
//
//  Created by Maximiliano Ibalborde on 28/08/2020.
//  Copyright © 2020 MaxiIbalborde. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PostListViewModel()
    
    var body: some View {
        List(model.posts) {
            Text($0.title)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
