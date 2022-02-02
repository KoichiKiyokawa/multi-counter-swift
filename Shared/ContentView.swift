//
//  ContentView.swift
//  Shared
//
//  Created by 清川航一 on 2022/02/02.
//

import SwiftUI

struct ContentView: View {
    @State private var count: Int = 0
    
    
    var body: some View {
        VStack {
            HStack {
                Text(String(count))
                    .padding()
                    .frame(width: 200.0)
                Button("+1", action: increment)
                    .accessibilityAddTraits([.isButton])
                    .padding(.all)
                    .accessibilityLabel("increment")
                    .foregroundColor(Color.white)
                    .background(Color.blue)
                Button("-1", action: decrement)
                    .padding(.all)
                    .accessibilityLabel("decrement")
                    .foregroundColor(Color.white)
                    .background(Color.red)
            }
            Button("Add counter", action: addCounter)
        }
    }
    
    
    func increment() {
        count += 1
    }
    
    func decrement() {
        if (count > 0) { count -= 1 }
    }
    
    func addCounter() {
        // TODO:
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
