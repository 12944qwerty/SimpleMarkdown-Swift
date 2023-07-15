//
//  InlineCodeNode.swift
//  
//
//  Created by King Fish on 7/13/23.
//

import Foundation
import SwiftUI

open class InlineCodeNode: BaseNode {
    public var content: String
    
    init(_ content: String) {
        self.content = content
    }
    
    open override var body: AnyView {
        AnyView(
            Text(content)
                .font(.system(.body, design: .monospaced))
                .background(Color.secondary)
        )
    }
    
    // MARK: - CustomStringConvertible
    override public var description: String {
        String(describing: type(of: self)) + "(\"\(content)\")"
    }
}
