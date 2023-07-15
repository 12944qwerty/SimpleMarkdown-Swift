//
//  SimplerMarkdown.swift
//
//
//  Created by King Fish on 7/8/23.
//

import Foundation
import SwiftUI

public struct SimpleMarkdown: View {
    public var text: String
    
    public var rules: [BaseRule] = []
    
    public private(set) var nodes: [BaseNode] = []
    
    public init(_ text: String, rules: [BaseRule]) {
        self.text = text
        
        self.rules = rules
        
        // Paragraph rule must go after all other blocks
        if let codeBlockRule = rules.lastIndex(where: { $0.block } ) {
            self.rules.insert(ParagraphRule(), at: codeBlockRule+1)
        } else {
            self.rules.insert(ParagraphRule(), at: 0)
        }

        self.nodes = parseMarkdown([TextNode(self.text)], with: self.rules)
        
        let test: String = """
omg eoehgeou
"""
        
        print(test.getMatches(regex: "^(.+?)$"))
    }
    
    public var body: some View {
        VStack(spacing: 0) {
            ForEach(Array(nodes.enumerated()), id: \.offset) { index, node in
                node.body
            }
        }
    }
}

struct SimpleMarkdown_Preview: PreviewProvider {
    static var previews: some View {
        let text: String = """
this **is** _a_ ~~cool~~ **second** message, `right`? <@12497>

> omgl lol **hi** `with dom` and more _xd_ very cool woe ughweoughweogu hweogehwgouehgwouheow guhewohugwe ouhgw oeughweoughwoguhwewoguhew oguwheoguwhegoheug woehugoewuhgwouh
"""

        let rules: [BaseRule] = [
            .codeBlock(),
            .quote(),
            .inlineCode(),
            .bold(),
            .italic()
        ]
        
        SimpleMarkdown(text, rules: rules)
    }
}
