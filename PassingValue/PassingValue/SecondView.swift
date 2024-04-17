//
//  SecondView.swift
//  PassingValue
//
//  Created by Utsav Budathoki on 17/4/2024.
//

import SwiftUI

struct SecondView: View {
    @Binding var isShowingView: Bool
    let textToShow: String
    var body: some View {
        Text("Passed Text:\(textToShow)")
        Button {
            isShowingView = false
        } label: {
            Text("Dismiss")
        }
    }
}

#Preview {
    SecondView(isShowingView: .constant(true), textToShow: "I do not know")
}
