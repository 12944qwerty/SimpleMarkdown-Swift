//
//  TextNode.swift
//  
//
//  Created by King Fish on 7/11/23.
//

import Foundation
import SwiftUI

open class TextNode: BaseNode {
    public var content: String
    
    init(_ content: String) {
        self.content = content
    }
    
    open override var body: AnyView {
        AnyView(
            Text(content)
        )
    }
    
    // MARK: - CustomStringConvertible
    override public var description: String {
        String(describing: type(of: self)) + "(\"\(content)\")"
    }
}
