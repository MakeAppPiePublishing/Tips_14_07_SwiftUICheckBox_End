//
//  RowView.swift
//  SwiftUICheckBox
//
//  Created by Steven Lipton on 2/28/21.
//

import SwiftUI

struct RowView: View {
    @Binding var index:Int
    @Binding var isChecked:Bool
    var body: some View{
        HStack{
            HStack{
                Text(NumberFormatter.localizedString(from: NSNumber(value:index), number: .spellOut))
            }
            Spacer()
            CheckRectangle(isChecked: $isChecked)
        }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(index:.constant(1),isChecked: .constant(true))
    }
}
