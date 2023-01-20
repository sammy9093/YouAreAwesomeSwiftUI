//
//  ContentView.swift
//  YouAreAwesomeSwiftUI
//
//  Created by Sammy on 1/19/23.
// Control+Option+click To pull available modifiers (attribute inspector accomplishes the same thing)
//Views (elements of app user interface) Always
//Modifiers accept input values

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "lasso.and.sparkles")
                .resizable()
                .scaledToFit()
                .padding([.bottom, .trailing])
                .imageScale(.large)
                .foregroundColor(.accentColor)
                
            Text("H Town, Peace up!")
            //After pressing enter and pressing "." auto indentation
                .font(.largeTitle) //Just applied a modifier with an input value
                .fontWeight(.black)
            Image(systemName: "swift")
                .imageScale(.large)
                .foregroundColor(.accentColor)
                .colorInvert()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
