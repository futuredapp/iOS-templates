//  ___FILEHEADER___

import Combine
import EnumIdentable
import FuturedArchitecture
import SwiftUI

final class ExampleFlowCoordinator: NavigationStackCoordinator {
    private var container: Container

    @Published var path: [Destination] = []
    @Published var modalCover: ModalCoverModel<Destination>?

    init(container: Container) {
        self.container = container
    }

    @MainActor
    static func rootView(with instance: ExampleFlowCoordinator) -> some View {
        NavigationStackFlow(coordinator: instance) {
            ExampleComponent(
                model: ExampleComponentModel(
                    dataCache: instance.container.dataCache) { [weak instance] event in
                    switch event {
                    case .touchEvent:
                        instance?.navigate(to: .destination)
                    }
                }
            )
        }
    }

    @MainActor @ViewBuilder
    func scene(for destination: Destination) -> some View {
        switch destination {
        case .destination:
            EmptyView()
        }
    }
}

extension ExampleFlowCoordinator {
    @EnumIdentable
    enum Destination {
        case destination
    }
}
