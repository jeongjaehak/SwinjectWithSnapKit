//
//  NetworkError.swift
//  Entities
//
//  Created by 정재학 on 4/13/25.
//

import Foundation

/// 네트워크 오류 정의
public enum NetworkError: Error {
    /// URL이 유효하지 않은 경우
    case invalidURL( url: String )
    /// 네트워크 통신 실패한 경우
    case AFError( Error )
}
