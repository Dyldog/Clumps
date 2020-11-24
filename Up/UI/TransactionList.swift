//
//  TransactionList.swift
//  Up
//
//  Created by Dylan Elliott on 24/11/20.
//

import SwiftUI

struct TransactionList: View {
    let transactions: [UpTransaction]
    var onSelect: (UpTransaction) -> Void
    
    var body: some View {
        List(transactions) { transaction in
            Button(
                action: {
                    onSelect(transaction)
                },
                label: {
                    TransactionRow(transaction: transaction)
                }
            )
        }
    }
}
