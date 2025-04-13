import ProjectDescription
import ProjectDescriptionHelpers

let project = Project(
    name: "UseCases",
    targets: [
        .target(
            name: "UseCases",
            destinations: .iOS,
            product: .staticFramework,
            bundleId: "io.tuist.SwinjectWithSnapKit",
            deploymentTargets: .iOS("17.0"),
            sources: ["Sources/**"],
            dependencies: [
                .Project.entities,
                .External.alamofire,
                .External.swinject,
                .SDK.combine
            ]
        )
    ]
)
