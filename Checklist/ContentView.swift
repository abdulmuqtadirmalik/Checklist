//
//  ContentView.swift
//  Checklist
//
//  Created by Abdul Muqtadir Malik on 19/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedItems = Set<String>(["Milk", "Cheese"])

        let items = [
            "Milk",
            "Sugar",
            "Bread",
            "Cheese"
        ]
    
    var body: some View {
        Text("Hello World")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
