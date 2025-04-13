//
//  UIUpdatable.swift
//  Controllers
//
//  Created by 정재학 on 4/13/25.
//

import Combine
import Foundation

/// 데이터를 요청하고 화면 갱신을 하는 프로토콜
public protocol UIUpdatable {
    associatedtype Content: Decodable
    func request() -> AnyPublisher<Content, Never>
}
