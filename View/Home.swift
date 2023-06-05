//
//  Home.swift
//  Nike App
//
//  Created by Dinith Hasaranga on 2023-06-05.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack{
            
            HStack{
                Spacer()
                Image(systemName: "cart")
            }
            
            HStack{
                VStack(alignment: .leading){
                    Group{
                        HStack{
                            Text("Nike")
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                                
                              
                        }
                        
                        Text("Collection")
                    }
                    .font(.system(size: 45))
                    .fontWeight(.medium)
                    
                }
                Spacer()

            }
            Spacer()


        }
        .padding()
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
