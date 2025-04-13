//
//  TargetDependency+Extension.swift
//  ProjectDescriptionHelpers
//
//  Created by 정재학 on 4/13/25.
//

import ProjectDescription

extension TargetDependency {
    
    // MARK: - 내부 프로젝트
    
    public enum Project {
        public static let entities: TargetDependency = .project(target: "Entities", path: .relativeToRoot("Projects/Entities"))
        public static let useCases: TargetDependency = .project(target: "UseCases", path: .relativeToRoot("Projects/UseCases"))
        public static let controllers: TargetDependency = .project(target: "Controllers", path: .relativeToRoot("Projects/Controllers"))
        public static let ui: TargetDependency = .project(target: "UI", path: .relativeToRoot("Projects/UI"))
    }
    
    // MARK: - Apple SDK
    
    public enum SDK {
        public static let combine: TargetDependency = .sdk(name: "Combine", type: .framework, status: .required)
    }
    
    // MARK: - 외부 라이브러리
    
    public enum External {
        public static let swinject: TargetDependency = .external(name: "Swinject")
        public static let snapKit: TargetDependency = .external(name: "SnapKit")
        public static let alamofire: TargetDependency = .external(name: "Alamofire")
    }
}
