//
//  ContentView.swift
//  YouAreAwesomeSwiftUI
//
//  Created by Sammy on 1/19/23.
// Control+Option+click To pull available modifiers (attribute inspector accomplishes the same thing)
//Views (elements of app user interface) Always
//Modifiers accept input values
// Option+Command+p Resume Preview
//Command +/- Increases/Decreases CodeFont Size
//Option Command [ (moves selection up one line)
//Option Command ] does the down ^^
//Shift Command L = Opens add Elements Dialog

//Views being structs, structs being value types, value types being immutable
//The underscore before a input in the modfier means the decleration has no label
//If underscore is not present, the title: must be used
// action: () -> Void //Really represents a block of code
//() -> Void //Allows
//Trailing Closure Format is less "clunky""

import SwiftUI

struct ContentView: View {
    //var's must appear non-nested syntaxaly
    var messageArray = ["You are Great!", "You are Awesome!", "This got fun!"]
    
    //@State prevents the destruction of the value of the view
    //private keeps it within this struct
    @State private var messageArrayContainer = ""
    @State private var messageContainer = 0
    //body is our parent view that is used to compile the screen!!
    var body: some View {
        
        //An HStack in a VStack, groovy...
        VStack {
            
            Text(messageArrayContainer) //Takes up the size of the text, hence why padding really shows contents of aPhysically viewed
            //After pressing enter and pressing "." auto indentation
                .font(.largeTitle) //Just applied a modifier with an input value
                .fontWeight(.black)
                .padding()
                .background(.red)
            Text("H Town, Peace up!")
                .font(.largeTitle)
                .fontWeight(.black)
            //.padding() //Blank padding is still padding of all around default system value 16
                .background(.red)
            HStack {
                Button("Click me, (;") {
                    if messageContainer < messageArray.count {
                        
                        messageArrayContainer = messageArray[messageContainer]
                        messageContainer = messageContainer + 1
                        print("\(messageContainer)")
                    }
                    else {
                        messageContainer = 0
                        messageArrayContainer = messageArray[messageContainer]
                        messageContainer = messageContainer + 1
                        print("\(messageContainer)")
                    }
                }
                
                Button("Not Used (:") {
                    
                }
            } //buttonStyle a modifier to the Button Primitive view
            .buttonStyle(.borderedProminent)
                
                
                
            HStack {
                Image(systemName: "swift") //Modifier order return type validation string?
                    .imageScale(.large)
                    .foregroundColor(.accentColor) //This modifier only applies to Any Type of View, imageScale returns a view from an Image
                    .colorInvert()
                Image(systemName: "lasso.and.sparkles")
                    .resizable()
                    .scaledToFit()
                // Moved image away from lower view by 100 up
                //Moved image away from trailing by 30
                    .imageScale(.large) //Has no effect on resizable
                //.padding([.bottom, .trailing], 6.0)
                    .padding(.trailing, 30)
                //.background(.black)
                    .padding(.bottom, 100)
                    .foregroundColor(.indigo)
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



