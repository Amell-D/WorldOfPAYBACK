//
//  TransactionsWBListView.swift
//  TransactionsWBM
//
//  Created by Amel Dizdarevic on 1/21/23.
//

import SwiftUI

public struct TransactionsWBListView: View {

    @ObservedObject public var viewModel: TransactionsViewModel

    public init(viewModel: TransactionsViewModel) {
        self.viewModel = viewModel
    }

    public var body: some View {
        ZStack {
            Color.red.opacity(0.7)
                .ignoresSafeArea()
            VStack {
                Text("Welcome to the TransactionsWBListView")
                Text("Below you have a button that will take you to the details screen")
                Button(action: {
                    viewModel.buttonAction()
                }) {
                    Text("Click me to go to the Details screen")
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 6).fill(Color.blue))
                }
            }
            .multilineTextAlignment(.center)
        }
    }
}
//
//struct TransactionsWBListView_Previews: PreviewProvider {
//    static var previews: some View {
//        TransactionsWBListView()
//    }
//}
