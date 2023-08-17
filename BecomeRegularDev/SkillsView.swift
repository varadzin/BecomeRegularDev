//
//  ContentView.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI
import RealmSwift

struct SkillsView: View {
    @ObservedObject var viewModel: SkillsViewModel
    @State private var enteredText: String = ""
    @State private var priority: Priority = .low
    
    @ObservedResults(Skill.self) var skills: Results<Skill>
    
    
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
                let newSkill = Skill()
                newSkill.name = enteredText
                newSkill.priority = priority
                $skills.append(newSkill)
                enteredText = ""
                
            } label: {
                Text("Speichern")
                    .frame(maxWidth: .infinity)
            }
            
            .buttonStyle(.borderedProminent)
            .padding(.vertical)
            
            List {
                Section {
                    ForEach(pendingSkills, id: \._id) { skill in
                        SkillCell(skill: skill, viewModel: SkillsViewModel())
                    }
                }
            header: {
                Text("New Skills")
            }
                Section {
                    ForEach(completedSkills, id: \.id) { skill in
                        SkillCell(skill: skill, viewModel: SkillsViewModel())
                    }
                }
            header: {
                Text("Learned Skills")
            }
                
                
            }
            .listStyle(.plain)
            
            Spacer()
                .navigationTitle("Become Regular Dev")
        }
        .padding()
    }
    
    var pendingSkills: [Skill] {
        skills.filter { $0.isCompleted == false }
    }
    
    var completedSkills: [Skill] {
        skills.filter { $0.isCompleted == true }
    }
}
