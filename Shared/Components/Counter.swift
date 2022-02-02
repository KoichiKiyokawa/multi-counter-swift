//
//  Counter.swift
//  multi-counter
//
//  Created by 清川航一 on 2022/02/02.
//

import SwiftUI

struct Counter: View {
    @Binding var count: Int
    
    var body: some View {
        
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
    }

    private func increment() {
        self.count += 1
    }
    
    private func decrement() {
        if (self.count > 0) { self.count -= 1 }
    }
}
