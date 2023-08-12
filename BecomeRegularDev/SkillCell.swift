//
//  SkillCell.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI

struct SkillCell: View {
    
    @State private var isCompleted: Bool = false
    @ObservedObject var viewModel: SkillsViewModel
    var body: some View {
        HStack {
            Image(systemName: isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(isCompleted ? .green : .gray)
               
            Text("My Skill")
        }
        .onTapGesture {
            isCompleted.toggle()
        }
    }
}

struct SkillCell_Previews: PreviewProvider {
    static var previews: some View {
        SkillCell(viewModel: SkillsViewModel())
    }
}
