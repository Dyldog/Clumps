//
//  ClumpType.swift
//  Up
//
//  Created by Dylan Elliott on 24/11/20.
//

import Foundation

enum ClumpType: Int, CaseIterable, Identifiable {
    case transaction
    case tag
    
    var id: Int { rawValue }
    
    var title: String {
        switch self {
        case .tag: return "Tag"
        case .transaction: return "Transaction"
        }
    }
}
