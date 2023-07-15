//
//  String+.swift
//  
//
//  Created by King Fish on 7/13/23.
//

import Foundation

extension String {
    func getMatches(regex: String) -> [[NSRange]] {
        guard let regex = try? NSRegularExpression(pattern: regex, options: [.anchorsMatchLines]) else { return [] }
        let nsString = self as NSString
        let results  = regex.matches(in: self, options: [], range: NSMakeRange(0, nsString.length))

        return results.map { result in
            return (0..<result.numberOfRanges).map {
                result.range(at: $0).location != NSNotFound ? result.range(at: $0) : NSRange()
            }
        }
    }
}
