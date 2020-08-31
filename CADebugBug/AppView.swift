//
//  AppView.swift
//  CADebugBug
//
//  Created by George Kaimakas on 31/8/20.
//  Copyright © 2020 gkaimakas. All rights reserved.
//

import ComposableArchitecture
import Foundation
import SwiftUI

public struct AppView: View {
    var store: Store<AppState, AppAction>

    public var body: some View {
        WithViewStore(store) { viewStore in
            Button(action: { viewStore.send(.buttonClicked) },
                   label: { Text("Click me") })
        }
    }
}

struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView(store: .init(initialState: .init(),
                                 reducer: AppReducer,
                                 environment: .init()))
    }
}
