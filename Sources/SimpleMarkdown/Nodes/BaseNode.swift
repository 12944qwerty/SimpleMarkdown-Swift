//
//  BaseNode.swift
//  
//
//  Created by King Fish on 7/11/23.
//

import Foundation
import SwiftUI

open class BaseNode: CustomStringConvertible {
    public init() {}
    
    // Todo: find a fix https://stackoverflow.com/questions/59895639/
    /// What the node will render. Must be wrapped with AnyView
    open var body: AnyView {
        AnyView(EmptyView())
    }
    
    // MARK: - CustomStringConvertible
    open var description: String {
        return String(describing: type(of: self))
    }
}
