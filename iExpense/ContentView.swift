//
//  ContentView.swift
//  iExpense
//
//  Created by Fernando Gomez on 2/6/23.
//

import SwiftUI


//struct SecondView: View {
//
//    @Environment(\.dismiss) var dismiss
//
//    let name: String
//
//        var body: some View {
//            Button("Dismiss") {
//                dismiss()
//            }
//        }
//}

struct ContentView: View {
   @StateObject var expenses = Expenses()
    @State private var showinAddExpense = false
    


    @AppStorage("tqpCount") private var tapCount = 0
    var body: some View {
        
        NavigationView {
            List {
                ForEach(expenses.items) { item in
                    Text(item.name)
                }
                .onDelete(perform: removeItems)
            }
            .navigationTitle("iExpense")
            .toolbar {
                Button {
                    showinAddExpense = true
                } label: {
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $showinAddExpense) {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeItems(at offsets: IndexSet) {
        expenses.items.remove(atOffsets: offsets)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
