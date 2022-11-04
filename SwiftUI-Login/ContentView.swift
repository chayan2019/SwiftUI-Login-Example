//
//  ContentView.swift
//  SwiftUI-Login
//
//  Created by Chayan on 04/11/22.
//

import SwiftUI

let lightGreyColor = Color(red: 239.0/255.0, green: 243.0/255.0, blue: 244.0/255.0, opacity: 1.0)

struct ContentView: View {
       @State var username: String = ""
       @State var password: String = ""
    var body: some View {
        VStack {
            
            WelcomeText()
            userImage()
            TextField("Username", text: $username)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(20.0)
                .padding(.bottom, 10)
            SecureField("Password", text: $password)
                .padding()
                .background(lightGreyColor)
                .cornerRadius(20.0)
                .padding(.bottom, 10)
            
            Text("Login")
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(10.0)
            
            Text("Forgot password")
                .font(.headline)
                .padding()
        
            
        }.padding()
        
    }
}

struct WelcomeText : View{
    var body: some View{
        return Text("Welcome to SwiftUI Login").font(.largeTitle).fontWeight(.semibold).padding(.bottom,20)
    }
}

struct userImage :View{
    var body: some View{
        return Image("userImage").resizable().frame(width: 300,height: 200).clipped().cornerRadius(5).padding(.bottom,75)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
