//
//  ContentView.swift
//  Library
//
//  Created by Bhat, Rohit on 8/8/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            let library = Library()
            let items : [LibraryItem] = [
                Book(title: "OOPS", uniqueIdentifier: UUID().uuidString),
                Cd(title: "Movie", uniqueIdentifier: UUID().uuidString),
                Dvd(title: "Movie1", uniqueIdentifier: UUID().uuidString)
            ]
            print(library.calculateTotalValueOfAllItems(items: items))
        }
    }
       
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
