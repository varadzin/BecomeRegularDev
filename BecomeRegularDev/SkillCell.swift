//
//  SkillCell.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI

struct SkillCell: View {
    
    let skill: Skill
    
    @State var skillPriority: Priority = Priority.medium
    @State private var isCompleted: Bool = false
    @ObservedObject var viewModel: SkillsViewModel
    var body: some View {
        HStack {
            Image(systemName: isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(isCompleted ? .green : .gray)
               
            Text(skill.name)
            Spacer()
            Text(skillPriority.rawValue)
                .font(.footnote)
                .foregroundColor(.white)
                .background {
                RoundedRectangle(cornerRadius: 5)
                        .fill(Color.orange)
                        .frame(width: 70, height: 30)
                 
                      
                }
        }
        .onTapGesture {
            isCompleted.toggle()
        }
    }
}

