//
//  DispatchQueue+Convenience.swift
//  Up
//
//  Created by Dylan Elliott on 24/11/20.
//

import Foundation

func onMain(_ work: @escaping() -> Void) {
    DispatchQueue.main.async {
        work()
    }
}
