//
//  ContentView.swift
//  Shared
//
//  Created by Steven Lipton on 2/28/21.
//

import SwiftUI

struct ContentView: View {
    @State private var model:[Bool] = Array(repeating: false,count:8)
    @State private var index:Int = 0
    var body: some View {
        VStack{
            /// An Image to show the selection
            Image(systemName:"\(index).square.fill")
                .resizable()
                .scaledToFit()
            
            /// A list to show selected check Items
            HStack{
                ForEach(0..<model.count, id:\.self){ item in
                    Image(systemName: model[item] ? "\(item).square" : "circle")
                } .font(.title)
            }
            
            /// The List to select from
            List(0..<model.count,id:\.self){ item in
                RowView(index: .constant(item), isChecked: $model[item] )
                    .font(.title)
                    .padding()
                    .onTapGesture {
                        self.index = item
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
