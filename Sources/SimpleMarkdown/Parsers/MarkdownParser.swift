//
//  MarkdownParser.swift
//  
//
//  Created by King Fish on 7/8/23.
//

import Foundation

public func parseMarkdown(_ nodes: [BaseNode], with rules: [BaseRule]) -> [BaseNode] {
    var nodes = nodes
    
    for rule in rules { // Go through every rule
        var newNodes: [BaseNode] = []
        
        for n in nodes { // Apply to every textnode
            if let node = n as? TextNode {
                let matches = node.content.getMatches(regex: rule.regex)

                let nsString = node.content as NSString

                var lowerBound = 0
                
                for groups in matches {
                    let prev = nsString.substring(with: NSRange(lowerBound..<groups[0].lowerBound))
                    if !prev.isEmpty {
                        newNodes.append(TextNode(prev))
                    }

                    var captures: [String] = []
                    for group in groups {
                        captures.append(nsString.substring(with: group))
                    }
                    if (rule.nestable) {
                        newNodes.append(rule.getNode(parseMarkdown([TextNode(captures[1])], with: removeBlockRules(rules: rules))))
                    } else {
                        newNodes.append(rule.getNode(captures))
                    }

                    lowerBound = groups[0].upperBound
                }
                
                let after = nsString.substring(from: lowerBound)
                if !after.isEmpty {
                    newNodes.append(TextNode(nsString.substring(from: lowerBound)))
                }
//                newNodes.append(node)
            } else {
                newNodes.append(n)
            }
        }
        
        nodes = newNodes
    }
    
    return nodes
}

private func removeBlockRules(rules: [BaseRule]) -> [BaseRule] {
    return rules.filter({ !$0.block })
}
