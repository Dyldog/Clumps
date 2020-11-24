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
            List(viewModel.transactions) { transaction in
                Button(
                    action: {
                        viewModel.selectedTransaction = transaction
                    },
                    label: {
                        TransactionRow(transaction: transaction)
                    }
                )
                .actionSheet(isPresented: $viewModel.showAlert) {
                    ActionSheet(
                        title: Text("Clump"),
                        message: nil,
                        buttons: [
                            .default(Text("Transaction")) { },
                            .default(Text("Tag")) { },
                            .cancel()
                        ]
                    )
                }
            }
            .tabItem {
                Image(systemName: "list.dash")
                Text("Inbox")
            }
            
            Text("TODO")
            .tabItem {
                Image(systemName: "checkmark")
                Text("Tagged")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
