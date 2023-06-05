//
//  Home.swift
//  Nike App
//
//  Created by Dinith Hasaranga on 2023-06-05.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {

        VStack{
            
            HStack{
                Spacer()
                Image(systemName: "cart")
            }
            
            HStack{
                VStack(alignment: .leading,spacing: -10){
                    Group{
                        HStack{
                            Text("Nike")
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 70)
                                .padding(.bottom,10)
                                .padding(.leading)
                              
                                
                              
                        }
                        
                        Text("Collection")
                        
                    }
                    .font(.system(size: 45))
                    .fontWeight(.medium)
                    
                }
                Spacer()
              
                    

            }
            ScrollView(.horizontal,showsIndicators: false){
                HStack{
                    TopCollection()
                    TopCollection()

                }
                

            }
            HStack(alignment: .bottom){
                Text("Special Deal")
                    .fontWeight(.semibold)
                    .font(.system(size: 23))
                Spacer()
                Text("see all")
                    .foregroundColor(Color("OrrangeTxt"))
                
            }
            .padding(10)
            ScrollView(.horizontal,showsIndicators: false){
                HStack(spacing: 15){
                    
                                    
                                 
                                
                               
                    NavigationLink(destination: Product()) {
                        SpecialDeal()
                    }
                    NavigationLink(destination: Product()) {
                        SpecialDeal()
                    }
                    NavigationLink(destination: Product()) {
                        SpecialDeal()
                    }
                    NavigationLink(destination: Product()) {
                        SpecialDeal()
                    }

                }
            }
           
            Spacer()


        }
        .padding()
        .background(Color("AppColor"))

    }
        .navigationBarTitle("Main Page")

    }
    
}

struct TopCollection : View{
    var body: some View{
        VStack{
            VStack{
                Image("shoe")
                    .resizable()
                    .scaledToFit()
                    .padding(-40)
                    .padding(.top,-10 )
                HStack(alignment: .bottom){
                    VStack(alignment: .leading){
                        Text("Nike Air Max 90")
                            .padding(.top,-10 )
                            .font(.system(size: 20))
                            .fontWeight(.medium)
                        Text("$240.60")
                            .font(.system(size: 17))
                            .fontWeight(.medium)

                    }
                
                    Spacer()
                    VStack(alignment: .trailing){
                        Image(systemName: "heart")
                            .padding(.top,-10 )
                            .font(.system(size: 24))
                            .fontWeight(.medium)
                        Text("Free Shipping")
                            .font(.system(size: 12))
                            .foregroundColor(.gray)
                            

                    }
                

                }
                .padding()




            }
            
            .frame(width: UIScreen.main.bounds.width * 0.8, height: 220)
            .background(Color.white)
            .cornerRadius(20)
            


        }

    }
    
}

struct SpecialDeal : View{
    var body: some View{
        VStack{
          
            VStack{
                HStack{
                    Spacer()
                    Text("20% off")
                        .padding(.trailing)
                        .padding(.top)
                        .font(.system(size: 12))
                        .foregroundColor(.blue)
                }
                
                Spacer()

                Image("shoe")
                    .resizable()
                    .scaledToFit()
                    .padding(-40)
                    .padding(.top,-10 )
                    .frame(width: 90)
                Spacer()

                HStack{
                    Spacer()

                    VStack(alignment: .center,spacing: 15){
                        
                        Text("Nike Air Max 90")
                            .padding(.top,-10 )
                            .font(.system(size: 15))
                            .fontWeight(.medium)
                        HStack{
                            Image(systemName: "star.fill")
                                .padding(.top,-10 )
                                .font(.system(size: 12))
                                .foregroundColor(.yellow)
                                .padding(.trailing,-5)
                            Text("4.8")
                                .padding(.top,-10 )
                                .font(.system(size: 12))
                                .fontWeight(.medium)
                            Text("(2k review)")
                                .padding(.top,-10 )
                                .font(.system(size: 12))
                                .fontWeight(.medium)
                                .foregroundColor(.gray)
                        }
                        HStack{
                            
                            Text("$260.50")
                                .padding(.top,-10 )
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            Spacer()
                            Image(systemName: "heart")
                                .padding(.top,-10 )
                                .font(.system(size: 16))
                                .fontWeight(.medium)
                            
                        }
                        .padding(.top,10)
                        .padding(.horizontal,-10)

                    }
                
                    Spacer()

                }

                .padding()




            }
            
            .frame(width: UIScreen.main.bounds.width * 0.5 - 25, height: 220)
            .background(Color.white)
            .cornerRadius(20)
            


        }

    }
    
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
