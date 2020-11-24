//
//  TransactionRow.swift
//  Up
//
//  Created by Dylan Elliott on 24/11/20.
//

import SwiftUI

struct TransactionRow: View {
    let transaction: UpTransaction
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(transaction.attributes.description)
                if let message = transaction.attributes.message {
                    Text(message)
                }
                Text(transaction.attributes.createdAt.description)
            }
            
            Spacer()
            
            Text(transaction.attributes.amount.value)
        }
    }
}
