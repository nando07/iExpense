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
   
//    @State private var showingSheet = false
    
    @State private var numbers = [Int]()
    @State private var currentNumber = 1
    
    var body: some View {
        NavigationView {
            VStack {
                List {
                    ForEach(numbers, id: \.self) {
                        Text("Row \($0)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Add Number") {
                    numbers.append(currentNumber)
                    currentNumber += 1
                }
            }
            .navigationTitle("onDelete()")
            .toolbar {
                EditButton()
            }
            //        Button("Show Sheet") {
            
            //            showingSheet.toggle()
            // }
            //        .sheet(isPresented: $showingSheet) {
            //            SecondView(name: "@twostraws")
            //        }
        }
    }
    
    func removeRows(at offsets: IndexSet) {
        numbers.remove(atOffsets: offsets)
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
