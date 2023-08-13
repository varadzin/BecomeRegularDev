//
//  SkillCell.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI

struct SkillCell: View {
    
    let skill: Skill
    
    
    @State private var isCompleted: Bool = false
    @ObservedObject var viewModel: SkillsViewModel
    var body: some View {
        HStack {
            
            Image(systemName: isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(isCompleted ? .green : .gray)
            Text(skill.name)
            Spacer()
            Text(skill.priority.rawValue)
                .font(.footnote)
                .foregroundColor(.white)
                .background {
                    RoundedRectangle(cornerRadius: 5)
                        .fill(viewModel.priorityBackground(skill.priority))
                        .frame(width: 70, height: 30)
                    
                }
            Spacer(minLength: 2)
        }
        
        .onTapGesture {
            isCompleted.toggle()
        }
    }
}

