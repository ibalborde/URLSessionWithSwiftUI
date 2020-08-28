//
//  NetworkManager.swift
//  URLSessionWithSwiftUI
//
//  Created by Maximiliano Ibalborde on 28/08/2020.
//  Copyright © 2020 MaxiIbalborde. All rights reserved.
//

import Foundation

class NetworkManager {
    
    func getPosts(completion: @escaping([Post]) -> ()) {
        
        guard let url = URL(string: "http://jsonplaceholder.typicode.com/posts") else { fatalError("La URL no es correcta o no se ha podido acceder a ella") }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil, let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                //SERIALIZAMOS LOS DATOS QUE TENEMOS
            }
        }.resume()

    }
}
