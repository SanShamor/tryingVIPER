//
//  NetworkManager.swift
//  tryingVIPER
//
//  Created by Александр on 16.11.2021.
//

import Foundation

class NetworkManager {
    
    static let shared = NetworkManager()
    
    private let api = "https://breakingbadapi.com/api/character/random"
    
    private init() {}
    
    func fetchData(completion: @escaping (_ person: [Walter]) -> Void) {
        guard let url = URL(string: api) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No Discription")
                return
            }
            
            do {
                //let decoder = JSONDecoder()
                //decoder.keyDecodingStrategy = .convertFromSnakeCase
                let person = try JSONDecoder().decode([Walter].self, from: data)
                DispatchQueue.main.async {
                    completion(person)
                }
            } catch let error {
                print("Error JSON /////", error)
            }
        }.resume()
    }
}
