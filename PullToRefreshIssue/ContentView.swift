//
//  ContentView.swift
//  PullToRefreshIssue
//
//  Created by Robb Böhnke on 31.03.25.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    ScrollView {
      ForEach(0 ..< 200) { i in
        Button {
          print(i)
        } label: {
          Text("Hello #\(i)").frame(maxWidth: .infinity)
        }
        .buttonStyle(.borderedProminent)
      }
    }
    .refreshable {
      try? await Task.sleep(for: .seconds(1_000_000))
    }
    .safeAreaPadding()
  }
}

#Preview {
  ContentView()
}

