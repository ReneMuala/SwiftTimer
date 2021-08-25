//
//  main.swift
//  Timer
//
//  Created by René Descartes Domingos Muala on 25/08/21.
//

import Foundation

print("1 sec(s)...", terminator:"")
var myTimer = Timer(hours: 0, minutes: 0, seconds: 1){
    print("done");
}

print("2 sec(s)...", terminator:"")
myTimer = Timer(hours: 0, minutes: 0, seconds: 2){
    print("done");
}

print("3 sec(s)...", terminator:"")
myTimer = Timer(hours: 0, minutes: 0, seconds: 3){
    print("done");
}

print("You have been waiting for \(Timer.total) seconds!")
