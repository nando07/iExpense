//
//  ContentView.swift
//  iExpense
//
//  Created by Fernando Gomez on 2/6/23.
//

import SwiftUI


struct SecondView: View {
    
    @Environment(\.dismiss) var dismiss
    
    let name: String

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
        }
        .sheet(isPresented: $showingSheet) {
            SecondView(name: "@twostraws")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
