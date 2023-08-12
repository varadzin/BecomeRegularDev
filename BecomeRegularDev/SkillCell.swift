//
//  SkillCell.swift
//  BecomeRegularDev
//
//  Created by Varadzin, Frantisek on 12.08.23.
//

import SwiftUI

struct SkillCell: View {
    
    @State private var isCompleted: Bool = false
   
    var body: some View {
        HStack {
            Image(systemName: isCompleted ? "checkmark.circle.fill" : "circle")
                .foregroundColor(isCompleted ? .green : .gray)
            Text("NAME IF SKILL")
        }
    }
}

struct SkillCell_Previews: PreviewProvider {
    static var previews: some View {
        SkillCell()
    }
}
