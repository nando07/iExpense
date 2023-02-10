//
//  Expenses.swift
//  iExpense
//
//  Created by Fernando Gomez on 2/9/23.
//

import Foundation

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}

