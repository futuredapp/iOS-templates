import ___VARIABLE_kmpModuleName___
import SwiftUI

struct ___VARIABLE_sceneIdentifier___ViewModel: ___VARIABLE_sceneIdentifier___ViewModelProtocol {
    @ObservedObject @KotlinState private var viewState: ___VARIABLE_sceneIdentifier___ViewState
    private let actions: ___VARIABLE_sceneIdentifier___ScreenActions

    init(_ screen: ___VARIABLE_sceneIdentifier___Screen) {
        self._viewState = .init(screen.viewState)
        self.actions = screen.actions
    }
}
