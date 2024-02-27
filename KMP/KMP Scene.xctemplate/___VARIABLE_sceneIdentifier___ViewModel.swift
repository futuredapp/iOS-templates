import ___VARIABLE_kmpModuleName___
import SwiftUI

protocol ___VARIABLE_sceneIdentifier___ViewModelProtocol: DynamicProperty {
}

struct ___VARIABLE_sceneIdentifier___ViewModel {
    @ObservedObject @KotlinStateFlow private var viewState: ___VARIABLE_sceneIdentifier___ViewState
    private let actions: ___VARIABLE_sceneIdentifier___ScreenActions
    private let events: SkieSwiftFlow<___VARIABLE_sceneIdentifier___Event>

    init(_ screen: ___VARIABLE_sceneIdentifier___Screen) {
        self._viewState = .init(screen.viewState)
        self.actions = screen.actions
        self.events = screen.events
    }
}

extension ___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModelProtocol {}