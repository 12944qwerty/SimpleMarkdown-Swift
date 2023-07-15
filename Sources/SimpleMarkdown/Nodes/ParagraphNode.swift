//
//  ParagraphNode.swift
//  
//
//  Created by King Fish on 7/11/23.
//

import Foundation
import SwiftUI

open class ParagraphNode: BaseNode {
    public var nodes: [BaseNode]

    public init(nodes: [BaseNode]) {
        self.nodes = nodes
    }
    
    open override var body: AnyView {
        AnyView(
            HStack(spacing: 0) {
                ForEach(Array(nodes.enumerated()), id: \.offset) { index, node in
                    node.body
                }
            }
        )
    }
    
    // MARK: - Custom String Convertible
    override public var description: String {
        String(describing: type(of: self)) + " {\n\(nodes.map({ $0.description }).joined(separator: "\n")))\n}"
    }
}
