//
//  ContentView.swift
//  Shared
//
//  Created by 清川航一 on 2022/02/02.
//

import SwiftUI

struct CounterEntity: Identifiable {
    var id: UUID
    var count: Int
    
    init(count: Int) {
        id = UUID()
        self.count = count
    }
}

struct ContentView: View {
    @State private var counters: [CounterEntity] = [CounterEntity(count: 0)]
    
    var body: some View {
        VStack {
            ForEach($counters) { counter in
                Counter(count: counter.count)
            }
            Divider()
            Text("sum: \(counters.reduce(0, { sum, counter in sum + counter.count}))")
            Button("Add counter", action: addCounter)
        }
    }
    
    private func addCounter() {
        counters.append(CounterEntity(count: 0))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

