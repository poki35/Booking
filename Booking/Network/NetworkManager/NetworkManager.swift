//
//  NetworkManager.swift
//  Booking
//
//  Created by Kirill Ponomarenko on 14.01.24.
//

import Foundation

class NetworkManager {
    func getInfo<T: Decodable>(from urlString: String, completion: @escaping (T?) -> ()) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let info = try JSONDecoder().decode(T.self, from: data)
                    DispatchQueue.main.async {
                        completion(info)
                    }
                } catch {
                    print("Error decoding data: \(error)")
                    DispatchQueue.main.async {
                        completion(nil)
                    }
                }
            } else {
                print("Data is nil")
                DispatchQueue.main.async {
                    completion(nil)
                }
            }
        }
        .resume()
    }
}
