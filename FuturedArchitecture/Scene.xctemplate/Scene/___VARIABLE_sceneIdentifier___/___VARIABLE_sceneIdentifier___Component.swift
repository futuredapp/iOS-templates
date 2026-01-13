//  ___FILEHEADER___

import SwiftUI

struct ___VARIABLE_sceneIdentifier___Component<Model: ___VARIABLE_sceneIdentifier___ComponentModelProtocol>: View {
    @StateObject var model: Model

    var body: some View {
        Text( /*@START_MENU_TOKEN@*/"Hello, World!" /*@END_MENU_TOKEN@*/)
            .task {
                await model.onAppear()
            }
    }
}

#if DEBUG
#Preview {
    ___VARIABLE_sceneIdentifier___Component(
        model: ___VARIABLE_sceneIdentifier___ComponentModelMock()
    )
}
#endif
