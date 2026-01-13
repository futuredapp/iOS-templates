//  ___FILEHEADER___

import Combine
import SwiftUI

final class AppCoordinator: ObservableObject {
    private var container: Container

    init(container: Container) {
        self.container = container
    }

    @MainActor
    var rootView: some View {
        ExampleFlowCoordinator.rootView(
            with: ExampleFlowCoordinator(container: container)
        )
    }
}

extension AppCoordinator: AppDelegateProtocol {
    // swiftlint:disable:next discouraged_optional_collection
    func applicationDidFinishLaunching(with launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
    }
}
