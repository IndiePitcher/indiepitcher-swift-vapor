//
//  File.swift
//  
//
//  Created by Petr Pavlik on 17.08.2024.
//

import Foundation
import Vapor

/// Represents a response returning data.
public struct DataResponse<T: Content>: Content {
    /// Always true
    public var success: Bool
    public var data: T
}

/// Represents a response returning no useful data.
public struct EmptyResposne: Content {
    /// Always true
    public var success: Bool
}

/// Represents a response returning paginated data.
public struct PagedDataResponse<T: Content>: Content {
    
    /// Paging metadata
    public struct PageMetadata: Content {
        /// Page index, indexed from 1.
        public let page: Int
        /// Number of results per page
        public let per: Int
        /// Total number of results.
        public let total: Int
    }
    
    /// Always true
    public var success: Bool
    
    /// Returned results
    public var data: T
    
    /// Paging metadata
    public var metadata: PageMetadata
}

