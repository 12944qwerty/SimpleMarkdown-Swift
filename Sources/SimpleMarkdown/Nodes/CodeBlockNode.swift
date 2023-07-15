//
//  CodeBlockNode.swift
//  
//
//  Created by King Fish on 7/13/23.
//

import Foundation
import SwiftUI

open class CodeBlockNode: BaseNode {
    public var content: String
    public var language: String?

    public init(_ content: String, language: String?) {
        self.content = content
        
        self.language = language
    }
    
    open override var body: AnyView {
        AnyView(
            Text(content)
                .background(.gray)
        )
    }
    
    // MARK: - Custom String Convertible
    override public var description: String {
        String(describing: type(of: self)) + "(\(language ?? "")) {\n\(content)\n}"
    }
}
