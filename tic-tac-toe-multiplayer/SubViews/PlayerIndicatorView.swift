//
//  PlayerIndicatorView.swift
//  tic-tac-toe-multiplayer
//
//  Created by Rick Brown on 07/11/2021.
//

import SwiftUI

struct PlayerIndicatorView: View {
  let systemImageName: String
  
  var body: some View {
    Image(systemName: systemImageName)
      .resizable()
      .frame(width: 40, height: 40)
      .foregroundColor(.white)
      .opacity(systemImageName == "applelogo" ? 0.0 : 1.0)
  }
}

struct PlayerIndicatorView_Previews: PreviewProvider {
  static var previews: some View {
    ZStack {
      Color.black
      
      PlayerIndicatorView(systemImageName: "xmark")
        .padding()
    }
    .previewLayout(.sizeThatFits)
  }
}
 
