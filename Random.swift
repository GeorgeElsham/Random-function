import Foundation


// Generate random number
enum Distribution {
    case linear, lower, higher
}

func random(from: Int, to: Int, distribution: Distribution = .linear) -> Int {
    // Random number function
    func random(from: Int, to: Int) -> Int {
        return Int(arc4random_uniform(UInt32(to - from + 1))) + from
    }
    
    // Distribution
    switch distribution {
    case .lower:
        return random(from: from, to: random(from: from, to: to))
    case .higher:
        return random(from: random(from: from, to: to), to: to)
    case .linear:
        return random(from: from, to: to)
    }
}
