//
//  BoldRule.swift
//  
//
//  Created by King Fish on 7/13/23.
//

import Foundation

open class BoldRule: BaseRule {
    public override func getNode(_ groups: [String]) -> BoldNode {
        return BoldNode(groups[1]) // only one capturing group
    }
    
    //MARK: - Properties
    
    public override var nestable: Bool {
        get {
//            true
            false
        }
        set {}
    }
    
    public override var regex: String {
        get {
            "\\*\\*([^\\n]+?)\\*\\*"
        }
        set {}
    }
}
