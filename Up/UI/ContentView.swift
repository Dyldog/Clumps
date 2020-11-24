//
//  ContentView.swift
//  Up
//
//  Created by Dylan Elliott on 24/11/20.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        TabView {
            TransactionList(
                transactions: viewModel.transactions,
                onSelect: { viewModel.selectedTransaction = $0 }
            )
            .popover(
                isPresented: $viewModel.showAlert,
                content: {
                    ClumpSelectView(transactions: viewModel.transactions, tags: [])
                }
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
