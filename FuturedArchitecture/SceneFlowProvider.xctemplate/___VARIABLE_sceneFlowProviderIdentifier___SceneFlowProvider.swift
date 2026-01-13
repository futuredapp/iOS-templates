//  ___FILEHEADER___

import EnumIdentable
import FuturedArchitecture
import FuturedHelpers
import SwiftUI

final class ___VARIABLE_sceneFlowProviderIdentifier___SceneFlowProvider: CoordinatorSceneFlowProvider {
    let navigateTo: (Destination) -> Void
    let pop: () -> Void
    let present: ((Destination, ModalCoverModelStyle) -> Void)? = nil
    let dismissModal: (() -> Void)? = nil
    let onModalDismiss: (() -> Void)? = nil
    let popTo: ((Destination?) -> Void)? = nil

    private let container: Container

    init(
        container: Container,
        navigateTo: @escaping (Destination) -> Void,
        pop: @escaping () -> Void
    ) {
        self.container = container
        self.navigateTo = navigateTo
        self.pop = pop
    }

    func scene(for destination: Destination) -> some View {
        switch destination {
        case .someDestination:
            EmptyView()
        case .otherDestination:
            EmptyView()
        // case .end:
        //     EmptyView()
        }
    }
}

extension ___VARIABLE_sceneFlowProviderIdentifier___SceneFlowProvider {
    @EnumIdentable
    enum Destination {
        case someDestination
        case otherDestination
        // Uncomment 'end' case if the coordinator may present additional scenes following those defined by the flow provider.
        // The 'end' scene acts as an indicator for the coordinator to take over scene presentation.
        // case end
    }
}
