//
//  ContentView.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI

struct SkillsView: View {
    @ObservedObject var viewModel: SkillsViewModel
    @State private var enteredText: String = ""
    @State private var priority: Priority = .low
    
    var body: some View {
        NavigationStack {
           TextField("Enter skill", text: $enteredText)
                .textFieldStyle(.roundedBorder)
            
            Picker("Skill Priority", selection: $priority) {
                ForEach(Priority.allCases, id: \.self) { priority in
                    Text(priority.rawValue)
                }
            }
            .pickerStyle(.segmented)
            Spacer()
            
                .navigationTitle("Regular Dev Skills")
        }
        .padding()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView(viewModel: SkillsViewModel())
    }
}
