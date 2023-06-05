//
//  ContentView.swift
//  Nike App
//
//  Created by Dinith Hasaranga on 2023-06-05.
//



import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 1

    var body: some View {
        
        TabView(selection: $selectedTab) {
            Home()
                .tabItem {
                    Image("HomeIcon")
                }
                .tag(1)
            Home()
                .tabItem {
                    Image( "SearchIcon")
                        
                }
                .tag(2)
            Home()
                .tabItem {
                    Image("HeartIcon")
                        
                   
                }
                .tag(3)
            Home()
                .tabItem {
                    Image("UserIcon")
                        
                   
                }
                .tag(3)
         
           
        }
        .accentColor(.black)
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
