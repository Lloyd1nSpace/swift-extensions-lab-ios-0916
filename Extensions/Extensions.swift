//
//  Extensions.swift
//  Extensions
//
//  Created by Lloyd W. Sykes on 1/5/17.
//  Copyright © 2017 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    
    var pigLatin: String {
        
        var piggy = ""
        for var word in self.components(separatedBy: " ") {
            if word.characters.count > 1 {
                word.append(String(word.remove(at: word.startIndex)).lowercased())
                word = "\(word.capitalized)ay"
            }
            piggy += "\(word) "
        }
        
        if !piggy.isEmpty {
            piggy.remove(at: piggy.index(piggy.endIndex, offsetBy: -1))
        }
        
        return piggy
    }
    
    var points: Int {
        let consonants = ["B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "X", "Z", "W"]
        let vowels = ["A", "E", "I", "O", "U", "Y"]
        var count = 0
        var copy = self.uppercased().replacingOccurrences(of: " ", with: "")
        if copy.characters.count < 1 {
            return count
        } else {
            for letter in copy.characters {
                if vowels.contains(String(letter)) {
                    count += 2
                } else if consonants.contains(String(letter)){
                    count += 1
                }
            }
        }
        return count
    }
    
    var unicornLevel: String {
        var levels = ""
        
        for character in self.characters {
            if character != " " {
                levels += "🦄"
            }
        }
        return levels
    }
    
    func whisper() -> String {
        return self.lowercased()
    }
    
    func shout() -> String {
        return self.uppercased()
    }
    
}

extension Int {
    
    var squared: Int { return self * self }
    var halved: Int {
        var copy = self
        return copy.half()
    }
    
    mutating func half() -> Int {
        return self / 2
    }
    
    func isDivisible(by number: Int) -> Bool {
        return self % number == 0 ? true : false
    }
    
}
