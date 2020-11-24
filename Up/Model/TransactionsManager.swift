//
//  TransactionsManager.swift
//  Up
//
//  Created by Dylan Elliott on 24/11/20.
//

import Foundation

struct TransactionClump {
    let transactions: [UpTransaction]
}

struct TransactionCategory {
    let clumps: [TransactionClump]
}

class TransactionsManager {
    var categories: [TransactionCategory] = []
}
