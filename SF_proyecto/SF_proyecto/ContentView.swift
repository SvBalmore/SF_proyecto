//
//  ContentView.swift
//  SF_proyecto
//
//  Created by MacOsX on 10/15/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName:"airpods")
                .renderingMode(.original)
                .resizable()
                .scaledToFill()
                .frame(width: 150, height: 150, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .padding()
            
            
            Label("ETPS 4",
            systemImage: "hand.thumbsup.fill")
                .font(.title)
                .shadow(radius: 10)
                //.labelStyle(IconOnlyLabelStyle())
                //.labelStyle(TitleOnlyLabelStyle())
                .padding()
                
        Text("Ciclo 02-2023")
            .font(.largeTitle)
            .underline()
            .frame(width: 200)
            .lineLimit(2)
            .lineSpacing(10.0)
            .rotation3DEffect(
                .degrees(60),
                axis: (x: 1, y: 1.0, z: 0.0))
            .shadow(color: .gray, radius: 2, x: 0.0, y: 16)
            .padding()
        }
        VStack{
            Text("ETPS4")
                .font(.largeTitle)
                .underline()
                .foregroundColor(.red)
            + Text("Ciclo 02-2023")
                .font(.body)
                .foregroundColor(.blue)
            + Text("UTEC")
                .font(.body)
                .bold()
            + Text("Laboratorio Informatica 2")
                .font(.headline)
                .foregroundColor(.green)
        }
        
        VStack{
            Text(Date(), style: .date)
            Text(Date(), style: .time)
            Text(Date(), style: .relative)
            Text(Date(), style: .timer)
        }
        VStack{
            Button(action:{
                print("Efectiva 4 UTEC")},
                   label: {
                    Text("ETPS4".uppercased())
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.red)
                        .cornerRadius(10)
                        .shadow(radius: 10)
                        .padding()
            })
            Button(action: {
                print("Ciclo 02-2023")},
                   label: {
                Circle()
                    .fill(Color.blue)
                    .frame(width: 100, height: 100)
                    .shadow(radius: 10)
                    .overlay(
                        Image(systemName: "cpu")
                            .foregroundColor(.white)
                            .font(.system(
                                    size:70,
                                weight: .bold
                            ))
                    )
            })
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
