//
//  GameView.swift
//  tic-tac-toe-multiplayer
//
//  Created by Rick Brown on 07/11/2021.
//

import SwiftUI

struct GameView: View {
  @ObservedObject var vm: GameViewViewModel
  @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
  
  var body: some View {
    GeometryReader { geometryProxy in
      VStack {
        Button(action: { presentationMode.wrappedValue.dismiss() }) {
          GameButtonView(title: "quit", color: .red)
        }
        
        Text("Waiting for your opponents move..")
        
        LoadingView()
        
        Spacer()
        
        VStack {
          LazyVGrid(columns: vm.columns) {
            ForEach(0..<9) { index in
              ZStack {
                GameSquareView(geometryProxy: geometryProxy)
                
                PlayerIndicatorView(systemImageName: "applelogo")
              }
              .onTapGesture { }
            }
          }
        }
        .padding()
      }
    }
  }
}

struct GameView_Previews: PreviewProvider {
  static var previews: some View {
    GameView(vm: GameViewViewModel())
  }
}
