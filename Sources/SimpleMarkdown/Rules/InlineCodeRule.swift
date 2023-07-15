//
//  InlineCodeRule.swift
//  
//
//  Created by King Fish on 7/13/23.
//

import Foundation

open class InlineCodeRule: BaseRule {
    public override func getNode(_ groups: [String]) -> InlineCodeNode {
        return InlineCodeNode(groups[1]) // only one capturing group
    }
    
    //MARK: - Properties
    
    public override var regex: String {
        get {
            "`([^\\n]+?)`"
        }
        set {}
    }
}

