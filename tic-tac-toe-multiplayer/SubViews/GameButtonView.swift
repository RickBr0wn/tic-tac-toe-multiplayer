//
//  GameButtonView.swift
//  tic-tac-toe-multiplayer
//
//  Created by Rick Brown on 07/11/2021.
//

import SwiftUI

struct GameButtonView: View {
  let title: String
  let color: Color
  
  var body: some View {
    Text(title.capitalized)
      .font(.title)
      .fontWeight(.semibold)
      .frame(width: 300, height: 50)
      .background(color)
      .foregroundColor(.white)
      .cornerRadius(15.0)
  }
}

struct GameButton_Previews: PreviewProvider {
  static var previews: some View {
    GameButtonView(title: "dev", color: .blue)
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
