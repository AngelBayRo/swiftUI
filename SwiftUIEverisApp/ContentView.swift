//
//  ContentView.swift
//  SwiftUIEverisApp
//
//  Created by Angel Luis Bayon Romero on 14/12/2020.
//

import SwiftUI

struct CustomTitle: View {
    var title: String
    
    var body: some View {
        Text(title)
            .font(.largeTitle)
    }
}

struct CustomSubtitle: View {
    var subtitle: String
    
    var body: some View {
        Text(subtitle)
            .font(.title)
            .foregroundColor(.gray)
    }
}
struct CustomDescription: View {
    var description: String
    
    var body: some View {
        Text(description)
            .frame(maxWidth: .infinity)
            .font(.title)
            .padding([.top], 20)
            .background(Color.orange)
            .padding()
    }
}
struct ContentView: View {
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
            CustomTitle(title: "Vistas y modificaciones")
            CustomSubtitle(subtitle: "Conceptos básicos")
            CustomDescription(description: "Construir una vista en SwiftUI es fácil y básicamente contiene subvistas")
            
            Button(action: {
                
            }, label: {
                Text("Button con sombra")
            })
            .padding()
            .font(.title)
            .background(Color.green)
            .foregroundColor(.white)
            .cornerRadius(10)
            .shadow(radius: 10)
        })
    }
}

struct RefactoringView: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false, content: {
            VStack(spacing: 20) {
                CustomTitle(title: "Vistas y modificaciones")
                CustomSubtitle(subtitle: "Conceptos básicos")
                CustomDescription(description: "Construir una vista en SwiftUI es fácil y básicamente contiene subvistas")
                
                Image("sfImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding()
            }
        })
    }
}

struct Shapes: View {
    var body: some View {
        VStack(spacing: 20) {
            CustomTitle(title: "Shapes")
            CustomSubtitle(subtitle: "Conceptos básicos")
            CustomDescription(description: "Construir una vista en SwiftUI es fácil y básicamente contiene subvistas")
            
            
            Text("Se pueden meter shapes")
                .foregroundColor(.white)
                .padding()
                .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.blue))
                .padding()
            
            
            Text("Se puede ajustar el fondo")
                .foregroundColor(.white)
                .padding()
                .background(Color.blue)
                .cornerRadius(20)
                .shadow(radius: 10)
        }
    }
}

struct VerticalStack: View {
    var body: some View {
        VStack(spacing: 20) {
            CustomTitle(title: "Vertical stack")
            CustomSubtitle(subtitle: "Conceptos básicos")
            CustomDescription(description: "Construir una vista en SwiftUI es fácil y básicamente contiene subvistas")
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 40) {
                    Text("Stack in stack")
                    Divider()
                    Text("más subvistas")
                    Divider()
                    Text("Hasta 10")
                }
            }
            .font(.title)
            .foregroundColor(.white)
            .padding()
            .background(RoundedRectangle(cornerRadius: 20).foregroundColor(.blue))
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        //RefactoringView()
        //Shapes()
        VerticalStack()
    }
}
