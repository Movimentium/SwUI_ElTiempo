//
//  DetalleVw.swift
//  SwUI_ElTiempo
//
//  Created by Miguel on 8/10/22.
//

import SwiftUI

@available(iOS 15.0, *)
struct DetalleVw: View {
    var dataItem: DiaTiempoData
    @State var isSheetPresented = false
    
    var body: some View {
        VStack {
            Text(dataItem.diaSem.str)
                .font(.largeTitle)
                .padding(.bottom, 10.0)
                .foregroundColor(.accentColor)
            Image(systemName: dataItem.ico.rawValue)
                .padding([.leading, .bottom, .trailing], 8.0)
                .font(.largeTitle)
                .foregroundColor(dataItem.ico.color)
            HStack {
                Text("\(dataItem.max)°")
                    .foregroundColor(.red)
                Text("\(dataItem.min)°")
                    .foregroundColor(.blue)
            }
            Button {
                isSheetPresented = true
            } label: {
                Text("Mas info")
            }
            .buttonStyle(.bordered)
            .padding()
            .sheet(isPresented: $isSheetPresented) {
                isSheetPresented = false
            } content: {
                MasInfoVw()
            }


        }
    }
    
 }

@available(iOS 15.0, *)
struct DetalleVw_Previews: PreviewProvider {
    static var previews: some View {
        DetalleVw(dataItem: DataModel.data.first!)
    }
}
