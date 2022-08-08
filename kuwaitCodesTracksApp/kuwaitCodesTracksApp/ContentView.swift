//
//  ContentView.swift
//  kuwaitCodesTracksApp
//
//  Created by عبدالرحمن العامري on 08/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var tracks = "qq"
    @State var coment = ""

    var body: some View {
        ZStack{
            Image("bg")
                .resizable()
                .ignoresSafeArea()
            VStack{
                Text("ما هو المسار المفضل لديك؟")
                    .font(Font.custom("Wahran-Bold", size: 30))
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .frame(width: 320, height: 100)
                    .background(Color.black.opacity(0.5))
                    .clipShape(Rectangle())
                
                
                Spacer()
                
                Image(tracks)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                
                
                Spacer()
                HStack{
                    Text("iOS")
                    
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .frame(width: 140, height: 100)
                    
                        .background(Color.orange.opacity(0.88))
                    
                        .multilineTextAlignment(.center)
                        .clipShape(Capsule())
                        .shadow(radius: 60.0)
                        .padding(.all)
                        .onTapGesture {
                            
                            tracks = "iOS1"
                            
                        }
                    
                    Text("Android")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding(.all)
                        .frame(width: 140, height: 100)
                        .background(Color.green.opacity(0.88))
                        .multilineTextAlignment(.center)
                        .clipShape(Capsule())
                        .onTapGesture {
                            tracks = "android1"
                            
                        }
                    
                }

                    
                    HStack{
                        Text("Gamedev")
                        
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .frame(width: 140, height: 100)
                        
                            .background(Color.red.opacity(0.88))
                        
                            .multilineTextAlignment(.center)
                            .clipShape(Capsule())
                            .shadow(radius: 60.0)
                            .padding(.all)
                            .onTapGesture {
                               tracks = "unity3"
                            }
                        
                        
                        Text("Web")
                            .font(.title)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding(.all)
                            .frame(width: 140, height: 100)
                            .background(Color.blue.opacity(0.88))
                            .multilineTextAlignment(.center)
                            .clipShape(Capsule())
                            .onTapGesture {
                                tracks = "visualStudio2"
                                
                            }
                    }
                
                
                
                
                
                
                
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
