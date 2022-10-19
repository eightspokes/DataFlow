//
//  AccountView_Observing.swift
//  DataFlow
//
//  Created by Roman on 10/19/22.
//

import SwiftUI

struct AccountView_Observing: View {
    // Account view is interested in listening any changes in profile
    @EnvironmentObject var profile: Profile_Observable
    
    
    var body: some View {
        VStack{
            Form{
                Section{
                    if profile.isLoggedIn{
                        Text("User logged in")
                    }else{
                        Text("User logged out")
                    }
                    
                }
            }
            Button(action:{
                if profile.isLoggedIn{
                    profile.isLoggedIn = false
                }else{
                    profile.isLoggedIn = true
                }
            },label:{
                if profile.isLoggedIn{
                    Text("Log out ")
                }else{
                    Text("Log in")
                }
            })
            Spacer()
        }
    }
}

struct AccountView_Observing_Previews: PreviewProvider {
    static var previews: some View {
        AccountView_Observing()
    }
}
