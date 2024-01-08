//
//  ContentView.swift
//  DevEasy
//
//  Created by hev1n on 2024/1/3.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var jsonStr: String = ""

    var body: some View {
        NavigationSplitView {
            List {
                Button("JSON") {
                    jsonStr = "{\"text\": \"Hello world\"}"
                    jsonStr = formatJSONString(jsonStr)!
                }
                Text("Text Diff")
            }
            .navigationSplitViewColumnWidth(min: 180, ideal: 200)
        } detail: {
            Text(jsonStr)
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
