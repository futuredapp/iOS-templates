//  ___FILEHEADER___

import SwiftUI

#error("Add https://github.com/futuredapp/FuturedKit.git to the project!")

@main
struct ___PACKAGENAME:identifier___App: App {
    @UIApplicationDelegateAdaptor private var appDelegate: AppDelegate

    @StateObject private var coordinator: AppCoordinator

    init() {
        let coordinator = AppCoordinator(container: Container())
        self._coordinator = StateObject(wrappedValue: coordinator)
        self.appDelegate.delegate = coordinator
    }

    var body: some Scene {
        WindowGroup {
            coordinator.rootView
        }
    }
}
