//
//  MyTimer.swift
//  TimerApp
//  Timer object (Starts, Stops and Pauses timer)
//  Created by Yevhenii Ganusich on 5/27/22.
//

import Foundation

class MyTimer: ObservableObject {
    @Published var seconds: Int = 0
    @Published var minutes: Int = 0
    @Published var hours: Int = 0
    var timer: Timer = Timer()
    
    func startTimer() {
        self.timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            if self.seconds == 59 {
                if self.minutes < 59 {
                    self.seconds = 0
                    self.minutes = self.minutes + 1
                }
                else {
                    self.minutes = 0
                    self.hours = self.hours + 1
                }
            } else {
                self.seconds = self.seconds + 1
            }
        }
    }
    
    func stopTimer() {
        self.timer.invalidate()
        self.hours = 0
        self.minutes = 0
        self.seconds = 0
    }
    
    func pauseTimer() {
        self.timer.invalidate()
    }
    
    
}

