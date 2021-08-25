//
//  Timer.swift
//  Timer
//
//  Created by René Descartes Domingos Muala on 25/08/21.
//

import Foundation

/// Simple timer
class Timer: ObservableObject {
    /// Elapsed time in seconds
    var elaplsed = UInt32(0);
    /// Interval  in seconds
    private var interval = UInt32(0);
    
    /// Stores the total elapsed time of all timers in the program.
    ///
    /// Updated every time that an interval in terminated
    static var total = UInt32(0);
    /// Timer is done
    @Published var done = Bool(false);
    
    private var onDoneCallback: ()->Void;
    
    private func main(){
        done = false;
        while elaplsed <= interval {
            elaplsed+=1;
            sleep(1);
        }; done = true;
        Timer.total += interval;
        onDoneCallback();
    }
    
    init(hours: UInt32, minutes: UInt32, seconds: UInt32,_ onDone: @escaping ()->Void) {
        onDoneCallback = onDone;
        interval =
        (seconds) +
        (minutes * 60) +
        (hours * 60 * 60);
        main();
    }
}
