//
//  GameSquareView.swift
//  tic-tac-toe-multiplayer
//
//  Created by Rick Brown on 07/11/2021.
//

import SwiftUI

struct GameSquareView: View {
  var geometryProxy: GeometryProxy
  
  var body: some View {
    Circle()
      .foregroundColor(.blue.opacity(0.6))
      .frame(width: geometryProxy.size.width / 3 - 15, height: geometryProxy.size.width / 3 - 15, alignment: .center)
  }
}
