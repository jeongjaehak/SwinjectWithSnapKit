//
//  GetUserInformations.swift
//  UseCases
//
//  Created by 정재학 on 4/1/25.
//
import Alamofire
import Combine
import Entities
import Foundation

/// 유저정보를 가져온다.
public final class GetUserInformations {
    public init() {}
    
    public func execute()-> AnyPublisher<[UserInformation], NetworkError> {
        return Future<[UserInformation], NetworkError> { promise in
            // URL 생성
            let urlString = "\(server.host)/users"
            guard let url = URL(string: urlString) else {
                promise(.failure(.invalidURL(url: urlString)))
                return
            }
            
            // 통신
            AF.request(url)
                .validate(statusCode: 200..<300)
                .responseDecodable(of: [UserInformation].self) { response in
                    switch response.result {
                    case .success(_):
                        promise(.success(response.value!))
                    case .failure( let error ):
                        promise(.failure(.AFError(error)))
                    }
                }
        }
        .receive(on: DispatchQueue.main)
        .eraseToAnyPublisher()
    }
}
