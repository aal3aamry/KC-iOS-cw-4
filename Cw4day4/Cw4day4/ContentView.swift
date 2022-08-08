//
//  ContentView.swift
//  Cw4day4
//
//  Created by عبدالرحمن العامري on 06/08/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var finalGrade = ""
    @State var result = ""
    var body: some View {
        ZStack{
            
            Image("bg4")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                
            Spacer()
                Text("اعرف تقديرك الآن !!")
                    .font(Font.custom("Lalezar-Regular",size:30))
                    .foregroundColor(Color.white)
                    .padding(.top, 50.0)
                    .frame(width: 300, height: 80)
                    //.font(.system(size: 30, weight: .black, design: .rounded))
                    //.foregroundColor(Color.white)
                    //.padding(.top)
                
                HStack{
                    Image("grades3")
                        .resizable()
                        .scaledToFit()
                        .padding(.horizontal)
                }
                
                    TextField("أدخل درجتك", text: $finalGrade)
                    .font(Font.custom("Lalezar-Regular",size:25))
                    .multilineTextAlignment(.center)
                    .textFieldStyle(.roundedBorder)
                    

                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    .shadow(radius: 50)
                    .padding()
                
                Text("احسب تقديري 🧮")
                    .foregroundColor(Color.white)
                    .font(Font.custom("Lalezar-Regular",size:20))
                    .frame(width: 200, height: 40)
                    .background(Color.gray)
                    .clipShape(Capsule())
                    .textFieldStyle(.roundedBorder)
                    .padding()
                    .shadow(radius: 50)
                
                    .onTapGesture {
                        
                        if (Double(finalGrade) ?? 0) >= 90
                        {
                            result = "ممتاز"
                        }
                        else if (Double(finalGrade) ?? 0) >= 80
                        {
                            result = "جيد جداً"
                        }
                        else if (Double(finalGrade) ?? 0) >= 70
                        {
                            result = "جيد"
                        }
                        else if (Double(finalGrade) ?? 0) >= 50
                        {
                            result = "مقبول"
                        }
                      
                        else
                        {
                            result = "راسب"
                        }
                    }
                VStack{
                Text("تقديرك هو ⬇️")
                        .font(Font.custom("Lalezar-Regular",size:30))
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color(red: 1.0, green: 1.0, blue: 1.0))
                    .padding(.all, 20)
                    

                    
                  
                    .frame(width: 400, height: 130)
                
                    
                    .shadow(radius: 50)
                    .clipShape(RoundedRectangle(cornerRadius:30))

                    
                    Text(result)
                        .font(Font.custom("Lalezar-Regular",size:35))
                    .foregroundColor(Color.white)
                    .font(.title)
                    .fontWeight(.black)
                    .foregroundColor(Color(hue: 0.618, saturation: 0.878, brightness: 0.178))
                    .padding(.all, 20)

                    
                    .background(Color(red: 0.765, green: 0.598, blue: 0.155))
                    .frame(width: 400, height: 130)
                
                    .background(Color(red: 0.21, green: 0.241, blue: 0.218))
                    .shadow(radius: 50)
                    .clipShape(RoundedRectangle(cornerRadius: 50))
                    
                    
                    
                }
                
                
                   Spacer()
                HStack {
                    Spacer()
                    Image("socialmedia")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 50)
                    
                    Text("شارك تقديرك على")
                        .font(Font.custom("Lalezar-Regular",size:30))
                        .padding(.trailing)
                        
                    
                    Spacer()
                    
                        
                    
                }
                .frame(width: 450, height: 70)
                .background(Color.white)
                    .ignoresSafeArea()
                
                
            }
            
            
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
