//
//  DIContainer.swift
//  App
//
//  Created by 정재학 on 4/13/25.
//

import Controllers
import Swinject
import UI

/// 의존성 주입하는 클래스
final class DIContainer {
    private let container: Container
    
    init() {
        self.container = Container()
        registerDependencies()
    }
    
    /// 의존성 주입
    private func registerDependencies() {
        container.register(ListViewModel.self) { _ in
            ListViewModel()
        }
        
        container.register(ListViewController.self) { resolver in
            ListViewController(viewModel: resolver.resolve(ListViewModel.self)!)
        }
    }
    
    /// 인스턴스 반환하는 함수
    /// - Parameter type: 반환할 타입
    /// - Returns: 컨테이너에 등록된 인스턴스
    func resolve<T>(_ type: T.Type) -> T {
        guard let resolved = container.resolve(T.self) else {
            fatalError("Dependency \(type) not resolved")
        }
        return resolved
    }
}
