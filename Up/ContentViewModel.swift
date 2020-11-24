//
//  ContentViewModel.swift
//  Up
//
//  Created by Dylan Elliott on 24/11/20.
//

import SwiftUI

class ViewModel: ObservableObject {
    @Published var transactions: [UpTransaction] = []
    var selectedTransaction: UpTransaction? = nil {
        didSet { showAlert = selectedTransaction != nil }
    }
    @Published var showAlert: Bool = false
    
    init() {
        reloadData()
    }
    
    func reloadData() {
        UpClient.getTransactions(completion: {
            if let transactions = $0 {
                onMain { self.transactions = transactions }
            }
        })
    }
}
