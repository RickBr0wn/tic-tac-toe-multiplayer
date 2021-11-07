//
//  HomeView.swift
//  tic-tac-toe-multiplayer
//
//  Created by Rick Brown on 07/11/2021.
//

import SwiftUI

struct HomeView: View {
  @StateObject private var vm: HomeViewModel = HomeViewModel()
  
  var body: some View {
    VStack {
      Button(action: { vm.isGameViewPresented = true }) {
        GameButtonView(title: "play", color: .green)
      }
    }
    .fullScreenCover(isPresented: $vm.isGameViewPresented, onDismiss: nil) {
      GameView(vm: GameViewViewModel())
    }
  }
}

struct HomeView_Previews: PreviewProvider {
  static var previews: some View {
    HomeView()
  }
}
