//
//  Product.swift
//  Nike App
//
//  Created by Dinith Hasaranga on 2023-06-05.
//

import SwiftUI

struct Product: View {
    @State private var rotationAngle: Angle = .degrees(90)

    var body: some View {
        
        VStack{
            CircleStyle()
                .opacity(0.4)
                .padding(.top,-150)
               

            VStack{
                Image("shoe")
                    .padding(.top,-480)
                    .aspectRatio(contentMode: .fit)
                    .rotationEffect(rotationAngle)
                    .animation(Animation.linear(duration: 0.5))
                            }
                            .onAppear {
                                withAnimation {
                                    rotationAngle = .degrees(0)
                                }
                            }

            ScrollView(showsIndicators: false){
                VStack(spacing: 15){
                    
                    HStack{
                        Text("Nike Air Max 90")
                            .font(.system(size: 28))
                            .fontWeight(.medium)
                        Spacer()
                        Text("$280")
                            .font(.system(size: 28))
                            .fontWeight(.semibold)
                            .foregroundColor(Color("OrrangeTxt"))
                    }
                    HStack{
                        Image(systemName: "star.fill")
                            .foregroundColor(.yellow)
                            .font(.system(size: 14))
                        
                        
                        Text("5")
                            .font(.system(size: 14))
                            .fontWeight(.medium)
                        Text("(2860 review)")
                            .font(.system(size: 14))
                            .fontWeight(.medium)
                            .foregroundColor(.gray)
                            .fontWeight(.thin)
                        
                        Spacer()
                        Text("Free Shipping")
                            .font(.system(size: 14))
                            .fontWeight(.medium)
                            .foregroundColor(.gray)
                            .fontWeight(.thin)
                    }
                    HStack(alignment: .bottom){
                        Text("Select Size")
                            .font(.system(size: 18))
                            .fontWeight(.semibold)
                        Spacer()
                        Text("Size Guide")
                            .font(.system(size: 14))
                            .foregroundColor(.gray)
                            .fontWeight(.semibold)
                        
                    }
                    HStack{
                        Group{
                            VStack {
                                Text("5")
                                    .font(.system(size: 18))
                                    .frame(width: 60)
                                    .frame(height: 60)
                            }
                            Spacer()
                            VStack {
                                Text("5.5")
                                    .font(.system(size: 18))
                                    .frame(width: 60)
                                    .frame(height: 60)
                                
                            }
                            Spacer()
                            VStack {
                                Text("6")
                                    .font(.system(size: 20))
                                    .frame(width: 60)
                                    .frame(height: 60)
                            }
                            
                            Spacer()
                            VStack {
                                Text("6.5")
                                    .font(.system(size: 20))
                                    .frame(width: 60)
                                    .frame(height: 60)
                            }
                            
                            Spacer()
                            VStack {
                                Text("7")
                                    .font(.system(size: 20))
                                    .frame(width: 60)
                                    .frame(height: 60)
                            }
                            
                        }
                        .overlay(
                            RoundedRectangle(cornerRadius: 15)
                                .stroke(Color.white, lineWidth: 2)
                        )
                        
                        
                        
                        
                        
                    }
                    VStack(alignment: .leading, spacing : 10){
                        Text("Description")
                        Text("A springy ride for any run, the Peg's familiar, just-for-you feel returns to help you accomplish your goals. This version has the same responsiveness and neutral support you love but with improved comfort in those sensitive areas of your foot, like the arch and toes. Whether you're logging long marathon miles, squeezing in a speed session before the sun goes down or hopping into a spontaneous group jaunt, it's still the established road runner you can put your faith in, day after day, run after run.")
                    }
                }
            }
            .padding(.top,-200)
            .padding()
            Spacer()
            HStack{
                Text("ADD TO CART")
                    .font(.system(size: 20))
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                   
            }
            .frame(width: UIScreen.main.bounds.width * 1 - 25, height: 56)
            .background(Color("BtnColor"))
            .cornerRadius(50)
        }
       
        .background(Color("AppColor"))
        .toolbar(.hidden, for: .tabBar)



    }
    
    
}

struct CircleStyle : View{
    var body: some View{
        VStack{
            VStack{
                VStack{
                    VStack{
                        VStack{
                            VStack{
                                
                            }
                            .frame(width: 100)
                            .frame(height: 100)
                            .background(Color("AppColor"))                     .cornerRadius(300)

                        }
                        .frame(width: 200)
                        .frame(height: 200)
                        .background(Color.white)                     .cornerRadius(300)
                    }
                    .frame(width: 300)
                    .frame(height: 300)
                    .background(Color("AppColor"))                     .cornerRadius(300)
                    
                }
                .frame(width: 400)
                .frame(height: 400)
                .background(Color.white)
                .cornerRadius(400)

                
            }
            .frame(width: 500)
            .frame(height: 500)
            .background(Color("AppColor"))                .cornerRadius(500)

            
        }
        .frame(width: 600)
        .frame(height: 600)
        .background(Color.white)
        .cornerRadius(600)
    }
}

struct Product_Previews: PreviewProvider {
    static var previews: some View {
        Product()
    }
}
