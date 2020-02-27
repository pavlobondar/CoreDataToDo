//
//  ContentView.swift
//  CoreDataToDo
//
//  Created by Pavel Bondar on 27.02.2020.
//  Copyright © 2020 Pavel Bondar. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var managedObjectContext
    @FetchRequest(fetchRequest: ToDoItem.getAllToDoItems()) var toDoItems: FetchedResults<ToDoItem>
    
    @State private var newToDoItem = ""
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("What next?")) {
                    HStack {
                        TextField("New item", text: self.$newToDoItem)
                        Button(action: {
                            
                        }) {
                            Image(systemName: "plus.circle.fill")
                                .foregroundColor(.green)
                        }
                    }
                }
            }
        }
    .navigationBarTitle(Text("My list"))
    .navigationBarItems(trailing: EditButton())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
