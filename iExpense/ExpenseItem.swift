//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Meitar Basson on 15/07/2022.
//

import SwiftUI

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}

class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()

}
