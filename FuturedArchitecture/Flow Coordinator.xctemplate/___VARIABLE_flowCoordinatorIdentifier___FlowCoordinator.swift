//  ___FILEHEADER___

import Combine
import EnumIdentable
import FuturedArchitecture
import SwiftUI

final class ___VARIABLE_flowCoordinatorIdentifier___FlowCoordinator: NavigationStackCoordinator {
    private var container: Container

    @Published var path: [Destination] = []
    @Published var modalCover: ModalCoverModel<Destination>?

    init(container: Container) {
        self.container = container
    }

    static func rootView(with instance: ___VARIABLE_flowCoordinatorIdentifier___FlowCoordinator) -> some View {
        NavigationStackFlow(coordinator: instance) {
            EmptyView()
        }
    }

    @ViewBuilder
    func scene(for destination: Destination) -> some View {
        switch destination {
        case .destination:
            EmptyView()
        }
    }
}

extension ___VARIABLE_flowCoordinatorIdentifier___FlowCoordinator {
    @EnumIdentable
    enum Destination {
        case destination
    }
}
