//
//  ThirdView.swift
//  PassingValue
//
//  Created by Utsav Budathoki on 17/4/2024.
//

import SwiftUI

struct ThirdView: View {
    @Binding var isShowingView: Bool
    var textToShow: String
    var body: some View {
        Text("Passed Message from First View:\(textToShow)")
        Button {
            isShowingView = false
        } label: {
            Text("Dismiss")
        }
    }
}

#Preview {
    ThirdView(isShowingView: .constant(true), textToShow: "Hello")
}
