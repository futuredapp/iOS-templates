//  ___FILEHEADER___

import SwiftUI

struct ExampleComponent<Model: ExampleComponentModelProtocol>: View {
    @StateObject var model: Model

    var body: some View {
        Button("Hello, World!") {
            model.onTouchUpInside()
        }
        .task {
            await model.onAppear()
        }
    }
}

#if DEBUG
#Preview {
    ExampleComponent(
        model: ExampleComponentModelMock()
    )
}
#endif
