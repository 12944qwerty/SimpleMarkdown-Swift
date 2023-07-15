//
//  QuoteRule.swift
//  
//
//  Created by King Fish on 7/13/23.
//

import Foundation

open class QuoteRule: BaseRule {
    public override func getNode(_ nodes: [BaseNode]) -> QuoteNode {
        return QuoteNode(nodes: nodes) // only one capturing group
    }
    
    //MARK: - Properties
    
    public override var nestable: Bool {
        get {
            true
        }
        set {}
    }
    
    public override var block: Bool {
        get {
            true
        }
        set {}
    }
    
    public override var regex: String {
        get {
            "^\\s*?> (.+?)$"
        }
        set {}
    }
}
