//
//  ParagraphRule.swift
//  
//
//  Created by King Fish on 7/14/23.
//

import Foundation

public class ParagraphRule: BaseRule {
    public override func getNode(_ nodes: [BaseNode]) -> ParagraphNode {
        return ParagraphNode(nodes: nodes)
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
            "^(.*?)$"
        }
        set {}
    }
}
