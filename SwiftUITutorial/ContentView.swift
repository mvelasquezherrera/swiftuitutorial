//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Marcelo Stefano Velasquez Herrera on 27/06/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var txtNombre: String = ""
    @State var nombre: String = ""
    
    var body: some View {
        VStack(alignment: .center, spacing: 0, content: {
            Text("Introducción a Swift UI")
                .font(.system(size: 26, weight: .bold, design: .default))
                .foregroundColor(.gray)
                .padding()
                .frame(width: .infinity, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            Image("SwiftUILogo")
                .resizable()
                .frame(width: 64, height: 64, alignment: .center)
            Divider()
                .background(Color.gray)
                .padding()
            Text("Ingrese su nombre:")
                .font(.system(size: 16, weight: .regular, design: .default))
                .foregroundColor(.gray)
                .padding()
                .frame(width: .infinity, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            
            TextField("Nombre...", text: $txtNombre)
                .padding()
                .background(Color(red: 255/255, green: 255/255, blue: 255/255, opacity: 0.5))
                .cornerRadius(20)
                .padding(20)
            
            Button(action: {
                nombre = txtNombre
            }, label: {
                Text("Mostrar")
            })
            .padding()
            .background(Color(red: 32/255, green: 30/255, blue: 80/255))
            .foregroundColor(.white)
            .font(.system(size: 16, weight: .bold, design: .default))
            .cornerRadius(20)
            
            Text("¡Bienvenido a la sesión \(nombre)!")
                .font(.system(size: 18, weight: .bold, design: .default))
                .foregroundColor(.gray)
                .padding()
                .frame(width: .infinity, height: .infinity, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
            Divider()
                .background(Color.gray)
                .padding()
            
            HStack {
                Image("advertencia")
                    .resizable()
                    .frame(width: 32, height: 32, alignment: .center)
                
                Text("Recuerda: Dentro de un stack solo puedes colocar 10 elementos")
                    .font(.system(size: 16, weight: .bold, design: .default))
                    .foregroundColor(.red)
                    .padding()
            }
            .padding(5)
            
        })
        .padding(20)
        .background(Color(red: 255/255, green: 225/255, blue: 156/255, opacity: 0.5))
        .cornerRadius(30.0)
        .padding(30)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
