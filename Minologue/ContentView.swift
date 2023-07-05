//
//  ContentView.swift
//  简 Minologue Version 0.0.1
//
//  Created by 范家齐 on 6/9/23.
//

import SwiftUI

struct ContentView: View {
    let mainColor = Color(red: 205/255, green: 216/255, blue: 204/255)
    let accentColor = Color(red: 48/255, green: 105/255, blue: 240/255)
    @State var activeButton: String = "吐槽"//Binding with isActivated

    var body: some View {
        ZStack {
            mainColor.ignoresSafeArea()//Fill in the whole area
            
            VStack {
                Text("Hello to Minologue")
                    .font(.custom("Long Cang", size: 60))
                    .multilineTextAlignment(.leading)
                    .navigationBarBackButtonHidden(true)//To hide the back button
                    .foregroundColor(.white)
                Spacer()
                HStack(spacing:0) {
                    FunctionBar(isActivated: $activeButton, buttonOnPic: "吐槽 有色", buttonName: "吐槽", buttonOffPic:"吐槽 无色")
                    FunctionBar(isActivated: $activeButton, buttonOnPic: "哭哭 有色", buttonName: "哭哭", buttonOffPic: "哭哭 无色")
                    FunctionBar(isActivated: $activeButton, buttonOnPic: "解气 有色", buttonName: "解气", buttonOffPic: "解气 无色")
                    FunctionBar(isActivated: $activeButton, buttonOnPic: "个人 有色", buttonName: "个人", buttonOffPic: "个人 无色")
                    /*
                     isActivated: $activeButton is used to pass down all the active button name to all four elements in the function bar.
                     */
                }
            }
        }
    }
}

struct FunctionBar: View {
    @Binding var isActivated: String
    var buttonOnPic: String
    var buttonName: String
    var buttonOffPic: String
    var body: some View {
         //Switch the condition when clicking
        let functionColor = Color(red: 156/255, green: 173/255, blue: 161/255)
        HStack {
            ZStack{
                RoundedRectangle(cornerRadius: 0)
                    .fill(functionColor)
                Button(action: {
                    print("Button was tapped")
                    isActivated = buttonName
                }) {
                    VStack {
                        if isActivated == buttonName {
                            /*
                             activeButton records the activated button, when the names match the button, it does not change. If names are different, change the picture.
                             */
                            Image(buttonOnPic)
                            Text(buttonName)
                                .foregroundColor(.white)
                                .font(.custom("Long Cang", size: 24))
                        } else {
                            Image(buttonOffPic) /*Should be replaced in the future
                                            >>ATTENTION
                                            >>ATTENTION
                                            >>ATTENTION*/
                            Text(buttonName)
                                .foregroundColor(.white)
                                .font(.custom("Long Cang", size: 24))
                        }
                    }
                }

            }

        } .ignoresSafeArea().frame(height: 90)
        
    }
    
}

























struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()

    }
}
