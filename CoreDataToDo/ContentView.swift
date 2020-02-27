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
    var body: some View {
        Text("Hello, World!")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
