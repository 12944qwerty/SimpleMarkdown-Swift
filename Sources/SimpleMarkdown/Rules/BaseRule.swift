//
//  BaseRule.swift
//  
//
//  Created by King Fish on 7/13/23.
//

import Foundation

open class BaseRule {
    open func getNode(_ groups: [String]) -> BaseNode {
        preconditionFailure("Subclass of BaseRule must implement getNode function")
    }
    
    open func getNode(_ nodes: [BaseNode]) -> BaseNode {
        preconditionFailure("Subclass of BaseRule must implement getNode function")
    }
    
    //MARK: - Properties
    
    // Can the rule have other rules within it? i.e bold and italic
    open var nestable: Bool {
        get {
            false
        }
        set {}
    }
    // Is the rule a block? Meaning not inline
    open var block: Bool {
        get {
            false
        }
        set {}
    }
    open var regex: String {
        get {
            ""
        }
        set {}
    }
    
    //MARK: - Generators
    public static func bold() -> BoldRule {
        BoldRule()
    }
    
    public static func italic() -> ItalicRule {
        ItalicRule()
    }
    
    public static func inlineCode() -> InlineCodeRule {
        InlineCodeRule()
    }
    
    public static func codeBlock() -> CodeBlockRule {
        CodeBlockRule()
    }
    
    public static func quote() -> QuoteRule {
        QuoteRule()
    }
    
    //MARK: - Swift Annoying Stuff
    public init() {}
}
