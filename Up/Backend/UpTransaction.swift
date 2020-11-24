//
//  UpTransaction.swift
//  Up
//
//  Created by Dylan Elliott on 24/11/20.
//

import Foundation

struct UpTransaction: Decodable, Identifiable {
    let id: String
    let attributes: Attributes
}

extension UpTransaction {
    struct Currency: Decodable {
        let currencyCode: String
        let value: String
        let valueInBaseUnits: Int
    }
    struct Attributes: Decodable {
        let status: String
        let description: String
        let message: String?
        let amount: Currency
        let settledAt: Date?
        let createdAt: Date
        
    }
    
    struct Response: Decodable {
        let data: [UpTransaction]
    }
}
