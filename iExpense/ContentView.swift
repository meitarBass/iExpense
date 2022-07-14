//
//  ContentView.swift
//  iExpense
//
//  Created by Meitar Basson on 14/07/2022.
//

import SwiftUI

class User: ObservableObject {
    @Published var firstName = "Bilbo"
    @Published var lastName = "Baggins"
}

struct SecondView: View {
    @Environment(\.dismiss) var dismiss

//    let name: String

    var body: some View {
        Button("Dismiss") {
            dismiss()
        }
    }
}

struct ContentView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }.sheet(isPresented: $showingSheet) {
            SecondView()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
