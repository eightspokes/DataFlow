//
//  ControlPanelView.swift
//  DataFlow
//
//  Created by Roman on 10/19/22.
//

import SwiftUI
// Binding, when an instance of the Binding view is created, a creator must pass in a binding field.
// When we have multiple views and we want to access a field from outside of the parent view..
struct ControlPanelView_Binding: View {
    @Binding var userInput: String
    
    var body: some View {
        TextField("Color: ", text: $userInput)
    }
}

//struct ControlPanelView_Previews: PreviewProvider {
//    static var previews: some View {
//        ControlPanelView_Binding()
//    }
//}
