import ___VARIABLE_kmpModuleName___
import KMPNativeCoroutinesCore
import SwiftUI

protocol ___VARIABLE_sceneIdentifier___ViewModelProtocol: DynamicProperty {
}

struct ___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModelProtocol {
    @ObservedObject @KotlinState private var viewState: ___VARIABLE_sceneIdentifier___ViewState
    private let actions: ___VARIABLE_sceneIdentifier___ScreenActions
    private let events: NativeFlow<___VARIABLE_sceneIdentifier___UiEvent, Error, KotlinUnit>

    init(_ screen: ___VARIABLE_sceneIdentifier___Screen) {
        self._viewState = .init(screen.viewState)
        self.actions = screen.actions
        self.events = ___VARIABLE_sceneIdentifier___ScreenNativeKt.events(screen)
    }
}
