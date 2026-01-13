//  ___FILEHEADER___

import Combine
import FuturedArchitecture

protocol ___VARIABLE_sceneIdentifier___ComponentModelProtocol: ComponentModel {
    func onAppear() async
}

final class ___VARIABLE_sceneIdentifier___ComponentModel: @MainActor ___VARIABLE_sceneIdentifier___ComponentModelProtocol {

    let onEvent: @MainActor (Event) -> Void

    private let dataCache: DataCache<DataCacheModel>
    private let resource: ___VARIABLE_sceneIdentifier___Resource

    init(
        dataCache: DataCache<DataCacheModel>,
        resource: ___VARIABLE_sceneIdentifier___Resource,
        onEvent: @escaping @MainActor (Event) -> Void
    ) {
        self.dataCache = dataCache
        self.resource = resource
        self.onEvent = onEvent
    }

    func onAppear() async {
        // Subscribe to dataCache changes
        // Fetch fresh data
    }
}

extension ___VARIABLE_sceneIdentifier___ComponentModel {
    enum Event {}
}

#if DEBUG
final class ___VARIABLE_sceneIdentifier___ComponentModelMock: @MainActor ___VARIABLE_sceneIdentifier___ComponentModelProtocol {
    typealias Event = ___VARIABLE_sceneIdentifier___ComponentModel.Event

    var onEvent: @MainActor (Event) -> Void = { _ in }

    func onAppear() async {}
}
#endif
