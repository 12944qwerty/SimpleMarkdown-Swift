//
//  TextRule.swift
//  
//
//  Created by King Fish on 7/13/23.
//

import Foundation

open class TextRule: BaseRule {
    public override func getNode(_ groups: [String]) -> TextNode {
        return TextNode(groups[1]) // only one capturing group
    }
    
    //MARK: - Properties
    
    public override var nestable: Bool {
        get {
            true
        }
        set {}
    }
    
    public override var regex: String {
        get {
            "" // no need...
        }
        set {}
    }
}
