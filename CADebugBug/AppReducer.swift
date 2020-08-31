//
//  AppReducer.swift
//  CADebugBug
//
//  Created by George Kaimakas on 31/8/20.
//  Copyright © 2020 gkaimakas. All rights reserved.
//

import ComposableArchitecture
import Foundation

let AppReducer = Reducer<AppState, AppAction, AppEnvironment> { (state, action, env) -> Effect<AppAction, Never> in

    return .none
}.debug()
