//
//  CodeBlockRule.swift
//  
//
//  Created by King Fish on 7/13/23.
//

import Foundation

open class CodeBlockRule: BaseRule {
    public override func getNode(_ groups: [String]) -> CodeBlockNode {
        return CodeBlockNode(groups[2], language: groups[1])
    }
    
    //MARK: - Properties
    
    public override var block: Bool {
        get {
            true
        }
        set {}
    }
    
    public override var regex: String {
        get {
            "```(?:([a-zA-Z]+)\\n)?([\\s\\S]*?)\\n?```"
        }
        set {}
    }
}

