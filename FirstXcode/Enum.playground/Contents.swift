import UIKit

enum Signal {
    case Blue
    case Yellow
    case Red
}

var sig: Signal
sig = Signal.Blue
sig = .Yellow

switch sig{
case .Blue:
    print("Go!")
case .Yellow:
    print("Caution!")
case .Red:
    print("Stop!")
}
