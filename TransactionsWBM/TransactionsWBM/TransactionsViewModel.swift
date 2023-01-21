//
//  TransactionsViewModel.swift
//  TransactionsWBM
//
//  Created by Amel Dizdarevic on 1/21/23.
//

import Foundation

final public class TransactionsViewModel: ObservableObject {

    public init() { }

    public var showDetailRequested: () -> () = { }

    @objc
    public func buttonAction() {
        showDetailRequested()
    }
}
