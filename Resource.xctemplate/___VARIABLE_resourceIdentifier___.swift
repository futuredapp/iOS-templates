//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import RxSwift

final class Production___VARIABLE_resourceIdentifier___: Resource {

    public struct LoadData: Equatable {
        // code..
    }

    // MARK: - Observables

    // TODO: - Add observables here to make code more readable

    // MARK: - Responses

    struct SyncResponse: Equatable, Codable, GraphQLQueriable {
        // TODO: - Add properties you want to load from API (located in StateModels.swift)
        // these properties must reflect LoadData struct, but their names has to be capitalized.
    }

    // MARK: - Actions: read

    public func sync() -> Completable {
        return Completable.firstly {
            let request = APIRequest(device: try self.preferredDevice(), requestParams: .graphQL(type: SyncResponse.self))
            return self.execute(request: request).do(onSuccess: { [unowned self] (response: SyncResponse) in
                // TODO: - update self.state.value.<property name> properties from response
            }).asCompletable()
        }
    }

    //    public func get() -> Observable<LoadData> {
    //        return Observable.combineLatest(/*TODO: - add observables*/).map { peripherals, pgStates in
    //            LoadData()
    //        }.distinctUntilChanged()
    //    }
}
