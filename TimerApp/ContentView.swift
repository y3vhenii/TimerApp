//
//  ContentView.swift
//  TimerApp
//
//  Created by Yevhenii Ganusich on 5/27/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var myTimer = MyTimer()
    var body: some View {
        VStack {
            Text("Timer")
                .padding()
            Button {
                myTimer.startTimer()
            }label:{
                Text("Start")
            }.padding().background(Color.green)
            Button {
                myTimer.pauseTimer()
            }label:{
                Text("Pause")
            }.padding().background(Color.orange)
            Button {
                myTimer.stopTimer()
            }label:{
                Text("Stop")
            }.padding().background(Color.red)
            
            HStack{
                Text("Seconds: ")
                Text("\(myTimer.seconds)")
            }
            HStack{
                Text("Minutes: ")
                Text("\(myTimer.minutes)")
            }
            HStack{
                Text("Hours: ")
                Text("\(myTimer.hours)")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
