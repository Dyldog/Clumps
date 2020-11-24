//
//  ClumpSelectView.swift
//  Up
//
//  Created by Dylan Elliott on 24/11/20.
//

import SwiftUI

struct ClumpSelectView: View {
    @State var displayedType: ClumpType = .tag
    let transactions: [UpTransaction]
    let tags: [String]
    
    var body: some View {
        VStack {
            Picker(
                selection: $displayedType,
                label: Text("What is your favorite color?")
            ) {
                ForEach(ClumpType.allCases) { type in
                    Text(type.title).tag(type)
                }
            }.pickerStyle(SegmentedPickerStyle())
            
            switch displayedType {
            case .transaction:
                TransactionList(
                    transactions: transactions,
                    onSelect: { _ in }
                )
            case .tag:
                VStack {
                    Spacer()
                    Text("TODO")
                    Spacer()
                }
            }
        }
    }
}

