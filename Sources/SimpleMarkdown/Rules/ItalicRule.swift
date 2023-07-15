//
//  ItalicRule.swift
//  
//
//  Created by King Fish on 7/13/23.
//

import Foundation

open class ItalicRule: BaseRule {
    public override func getNode(_ groups: [String]) -> ItalicNode {
        return ItalicNode(groups[1].isEmpty ? groups[2] : groups[1]) // one for _, one for *. Need non-empty one
    }
    
    //MARK: - Properties
    
    public override var regex: String {
        get {
            "(?:\\*([^\\n]+?)\\*|_([^\\n]+?)_)"
        }
        set {}
    }
}


