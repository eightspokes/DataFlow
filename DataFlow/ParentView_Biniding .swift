//
//  ParentView_Biniding .swift
//  DataFlow
//
//  Created by Roman on 10/19/22.
//

import SwiftUI

struct ParentView_Biniding_: View {
    @State var userInput = ""
    @State var name = ""
    var body: some View {
        Form{
        
            Rectangle()
                .foregroundColor(userInput.lowercased() == "blue" ? .blue : .black)
            
           //Subview can now change the value of a @State property
           ControlPanelView_Binding(userInput: $userInput)
            ExampleBinding(name: $name)
            
        }
        
    }
}


struct ExampleBinding: View{
    @Binding var name: String
    var body: some View{
        Section("Binding 2"){
            TextField("", text: $name)
        }
        Section{
            Text(name)
        }
        
    }
}

struct ParentView_Biniding__Previews: PreviewProvider {
    static var previews: some View {
        ParentView_Biniding_()
    }
}
