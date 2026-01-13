//  ___FILEHEADER___

import Combine
import FuturedArchitecture

protocol ExampleComponentModelProtocol: ComponentModel {
    func onAppear() async
    @MainActor func onTouchUpInside()
}

final class ExampleComponentModel: @MainActor ExampleComponentModelProtocol {

    let onEvent: @MainActor (Event) -> Void

    private let dataCache: DataCache<DataCacheModel>

    init(
        dataCache: DataCache<DataCacheModel>,
        onEvent: @escaping @MainActor (Event) -> Void
    ) {
        self.dataCache = dataCache
        self.onEvent = onEvent
    }

    func onAppear() async {
        // Subscribe to dataCache changes
        // Fetch fresh data
    }

    @MainActor
    func onTouchUpInside() {
        onEvent(.touchEvent)
    }
}

extension ExampleComponentModel {
    enum Event {
        case touchEvent
    }
}

#if DEBUG
final class ExampleComponentModelMock: @MainActor ExampleComponentModelProtocol {
    typealias Event = ExampleComponentModel.Event

    var onEvent: @MainActor (Event) -> Void = { _ in }

    func onAppear() async { }

    func onTouchUpInside() { }
}
#endif
