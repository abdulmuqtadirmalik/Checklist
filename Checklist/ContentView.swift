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
        VStack(alignment: .leading){
            Text("Groceries").font(.largeTitle).padding(.leading, 16.0)
            
            Spacer()
            List {
                        Section(header: Text("")) {
                            ForEach(items, id: \.self) { item in
                                Button(action: {
                                    if selectedItems.contains(item) {
                                        selectedItems.remove(item)
                                    } else {
                                        selectedItems.insert(item)
                                    }
                                })
                                {
                                    HStack {
                                        Text(item).foregroundColor(.black)
                                        Spacer()
                                        if selectedItems.contains(item) {
                                            Image(systemName: "checkmark").tint(.black)
                                        }
                                    }
                                }
                            }
                        }
                    }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
