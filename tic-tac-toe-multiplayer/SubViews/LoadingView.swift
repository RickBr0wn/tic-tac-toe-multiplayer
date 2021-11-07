//
//  LoadingView.swift
//  tic-tac-toe-multiplayer
//
//  Created by Rick Brown on 07/11/2021.
//

import SwiftUI

struct LoadingView: View {
  var body: some View {
    ZStack {
      Color(.systemBackground).edgesIgnoringSafeArea(.all)
      
      ProgressView()
        .progressViewStyle(CircularProgressViewStyle())
        .scaleEffect(2)
    }
  }
}

struct LoadingView_Previews: PreviewProvider {
  static var previews: some View {
    LoadingView()
  }
}
