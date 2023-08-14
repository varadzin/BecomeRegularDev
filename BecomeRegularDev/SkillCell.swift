//
//  SkillCell.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI
import RealmSwift

struct SkillCell: View {
    
    @Environment(\.realm) var realm
    let skill: Skill
    
  

    @ObservedObject var viewModel: SkillsViewModel
    var body: some View {
        HStack {
            
            Image(systemName: skill.isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(skill.isCompleted ? .green : .gray)
            Text(skill.name)
            Spacer()
                .frame(maxWidth: .infinity)
            ZStack {
                RoundedRectangle(cornerRadius: 5)
                    .fill(viewModel.priorityBackground(skill.priority))
                    .frame(width: 70, height: 30)
                Text(skill.priority.rawValue)
                    .font(.footnote)
                    .foregroundColor(.white)
            }
         }
        
        .onTapGesture {
            let skillToUpdate = realm.object(ofType: Skill.self, forPrimaryKey: skill._id)
            try? realm.write {
                skillToUpdate?.isCompleted.toggle()
            }
        }
    }
}

