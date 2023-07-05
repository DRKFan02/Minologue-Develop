//
//  EnterPage.swift
//  简 Minologue Version 0.0.1
//
//  Created by 范家齐 on 7/4/23.
//
//用geometric重做
import SwiftUI

struct EnteringPage: View {
    var body: some View {
        NavigationView {
            ZStack{
                Image("BG")
                VStack {
                    ZStack{
                        Text("简")
                            .font(.custom("Long Cang", size: 85))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .bold()
                            .offset(y: -350)
                        Text("为生活")//做减法
                            .font(Font.custom("Long Cang", size: 50))
                            .fontWeight(.bold)
                            .foregroundColor(.white)
        
                            .offset(x:-90,y: -275)
                        Text("做减法")//
                            .font(.custom("Long Cang", size: 50))
                            .foregroundColor(.white)
                            
                            .offset(x:-25, y: -235)
                    }
                    NavigationLink(destination: ContentView()) {
                        /*Create the button that jumps to the next page.
                         << Will be replaced.
                         << Will be replaced.
                         << Will be replaced.
                         */
                        Text("开启你的解压之旅")
                            .font(.custom("Long Cang", size: 30))
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.horizontal, 40)
                            .padding(.vertical, 4)
                            .background(Color.orange)
                            .cornerRadius(30)
                        
                            
                            .navigationBarBackButtonHidden(true)
                    }.offset(y: 350)
                        
                }
                
            }
        }
        

    }
}



























struct EnterPage_Previews: PreviewProvider {
    static var previews: some View {
        EnteringPage()
    }
}
