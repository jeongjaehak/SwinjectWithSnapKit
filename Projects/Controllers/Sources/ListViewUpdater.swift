//
//  ListViewUpdater.swift
//  Controllers
//
//  Created by 정재학 on 4/13/25.
//

import Combine
import Entities
import Foundation

public final class ListViewUpdater: UIUpdatable {
    public typealias Content = [UserInformation]
    
    public init() {}

    public func request() -> AnyPublisher<[UserInformation], Never> {
        <#code#>
    }
}
