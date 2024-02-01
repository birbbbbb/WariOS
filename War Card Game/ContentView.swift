//
//  ContentView.swift
//  War Card Game
//
//  Created by Theron Lindsay on 8/2/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain").ignoresSafeArea()
            
            
            //Start of UI
            VStack(alignment: .center, spacing: 60.0){
                Image("logo")
                
                HStack(spacing: 50.0){
                    Image(playerCard)
                    Image(cpuCard)
                }
                
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                
                HStack{
                    VStack{
                        Text("Player")
                        Text(String(playerScore))
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                        Text(String(cpuScore))
                    }
                }.foregroundColor(.white).font(.largeTitle).padding(.horizontal, 90.0)
            }
            
            
        }
        
        
    }
    
    
    func deal(){
        // Randomize the players card
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        //Randomize the Cpus card
        var cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)

        //Update Score
        if(playerCardValue > cpuCardValue){
            playerScore = playerScore + 1
        } else if (playerCardValue < cpuCardValue){
            cpuScore = cpuScore + 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
