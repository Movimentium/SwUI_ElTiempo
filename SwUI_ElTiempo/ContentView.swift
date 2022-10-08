//
//  ContentView.swift
//  SwUI_ElTiempo
//
//  Created by Miguel Gallego on 8/10/22.
//

import SwiftUI

@available(iOS 15.0, *)
struct ContentView: View {
    var body: some View {
        NavigationView {
            List(DataModel.data, id: \.self) { item in
                HStack {
                    let strDia = item.diaSem.str
                    Image(systemName: item.ico.rawValue)
                    Text("\(item.max)°")
                        .foregroundColor(.red)
                    Text("\(item.min)°")
                        .foregroundColor(.blue)
                    Text("\(strDia)")
                    NavigationLink(strDia, destination: DetalleVw(dataItem: item))
                }
            }
            .navigationTitle("Madrid")
        }
    }
}

@available(iOS 15.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}

