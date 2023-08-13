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
                .padding()
            
            Picker("Skill Priority", selection: $priority) {
                ForEach(Priority.allCases, id: \.self) { priority in
                    Text(priority.rawValue)
                }
            }
            .pickerStyle(.segmented)
            
            Button {
                let newSkill = Skill(id: UUID(), name: enteredText, isCompleted: false, priority: .medium)
                viewModel.mySkills.append(newSkill)
                enteredText = ""
                print(viewModel.mySkills)
            } label: {
                Text("Speichern")
                    .frame(maxWidth: .infinity)
            }
            
            .buttonStyle(.borderedProminent)
            .padding(.vertical)
            
            List {
                ForEach(viewModel.mySkills, id: \.id) { skill in
                    SkillCell(skill: skill, viewModel: SkillsViewModel())
                }
            }
            .listStyle(.plain)
            
            Spacer()
                .navigationTitle("Become Regular Dev")
        }
        .padding()
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        SkillsView(viewModel: SkillsViewModel())
    }
}
