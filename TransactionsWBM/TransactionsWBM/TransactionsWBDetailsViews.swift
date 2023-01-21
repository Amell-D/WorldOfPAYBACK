//
//  TransactionsWBDetailsViews.swift
//  TransactionsWBM
//
//  Created by Amel Dizdarevic on 1/21/23.
//

import SwiftUI

public struct TransactionsWBDetailsViews: View {
    

    public init() {}
    
    public var body: some View {
        ZStack {
            Color.green.opacity(0.5)
                .ignoresSafeArea()
            Text("Hello, I am a Details screen")
        }
    }
}

struct TransactionsWBDetailsViews_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsWBDetailsViews()
    }
}
