//
//  UpClient.swift
//  Up
//
//  Created by Dylan Elliott on 24/11/20.
//

import Foundation

class UpClient {
    static let baseURL = URL(string: "https://api.up.com.au/api/v1")!
    
    static func getTransactions(completion: @escaping ([UpTransaction]?) -> Void) {
        var request = URLRequest(url: baseURL.appendingPathComponent("transactions"))
        request.addValue("Bearer \(Secrets.upAPIToken)", forHTTPHeaderField: "Authorization")
        URLSession.shared.dataTask(with: request) { data, _, error in
            if let error = error {
                print(error)
            } else if let data = data {
                do {
                    let decoder = JSONDecoder()
                    decoder.dateDecodingStrategy = .iso8601
                    let transactions = try decoder.decode(
                        UpTransaction.Response.self,
                        from: data
                    )
                    completion(transactions.data); return
                } catch {
                    print(error)
                    print(String(data: data, encoding: .utf8) ?? "DATA WAS NOT VALID STRING")
                    completion(nil); return
                }
            } else {
                print("No data or error")
                completion(nil); return
            }
        }
        .resume()
    }
}
