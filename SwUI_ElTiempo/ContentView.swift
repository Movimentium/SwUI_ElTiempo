//
//  ContentView.swift
//  SwUI_ElTiempo
//
//  Created by Miguel on Gallego 8/10/22.
//

import SwiftUI

struct ContentView: View {
    let sGrads = "°"
    var body: some View {
        NavigationView {
            List(DataModel.data, id: \.self) { item in
                HStack {
                    Image(systemName: item.ico.rawValue)
                    Text("\(item.max)\(sGrads)")
                        .foregroundColor(.red)
                    Text("\(item.min)\(sGrads)")
                        .foregroundColor(.blue)
                    Text("\(item.diaSem.str)")
                }
            }
            .navigationTitle("Madrid")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
/*
 °" ( i.e degree symbol)? using built in Cocoa utility (with NSAttributedString) [duplicate]
 */
