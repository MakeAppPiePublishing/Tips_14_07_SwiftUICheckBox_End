//
//  CheckRectangle.swift
//  SwiftUICheckBox (iOS)
//
//  Created by Steven Lipton on 2/28/21.
//

import SwiftUI

struct CheckRectangle:View {
    @Binding var isChecked:Bool
    var body: some View {
        Image(systemName:isChecked ? "checkmark.rectangle": "rectangle")
            .onTapGesture{ isChecked.toggle()}
        
    }
}

struct CheckRectangle_Previews: PreviewProvider {
    static var previews: some View {
        CheckRectangle(isChecked:.constant(false))
    }
}
