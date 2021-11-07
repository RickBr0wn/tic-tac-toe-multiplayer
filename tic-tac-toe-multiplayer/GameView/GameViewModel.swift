//
//  GameViewModel.swift
//  tic-tac-toe-multiplayer
//
//  Created by Rick Brown on 07/11/2021.
//

import SwiftUI

final class GameViewViewModel: ObservableObject {
  let columns: Array<GridItem> = [
    GridItem(.flexible()),
    GridItem(.flexible()),
    GridItem(.flexible()),
  ]
  
  
}
