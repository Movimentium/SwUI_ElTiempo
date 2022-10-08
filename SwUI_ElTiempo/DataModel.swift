//
//  DataModel.swift
//  SwUI_ElTiempo
//
//  Created by Miguel Gallego on 8/10/22.
//

import SwiftUI

enum DiaSemana: Int {
    case lun = 0
    case mar
    case mie
    case jue
    case vie
    case sab
    case dom
    
    var str: String {
        var s = ""
        switch self {
        case .lun:  s = "Lunes"
        case .mar:  s = "Martes"
        case .mie:  s = "Miércoles"
        case .jue:  s = "Jueves"
        case .vie:  s = "Viernes"
        case .sab:  s = "Sábado"
        case .dom:  s = "Domingo"
        }
        return s
    }
}

enum IcoTiempo: String {
    case sol = "sun.max.fill"
    case lluvia = "cloud.fog.fill"
    case nieve = "cloud.drizzle.fill"
}

struct DiaTiempoData: Hashable {
    var diaSem: DiaSemana
    var max: Int
    var min: Int
    var ico: IcoTiempo
    
    var idDia: Int {
        diaSem.rawValue
    }
}

class DataModel {
    static let data: [DiaTiempoData] = [
        DiaTiempoData(diaSem: .lun, max: 27, min: 15, ico: .sol),
        DiaTiempoData(diaSem: .mar, max: 24, min: 17, ico: .sol),
        DiaTiempoData(diaSem: .mie, max: 15, min: 10, ico: .nieve),
        DiaTiempoData(diaSem: .jue, max: 22, min: 16, ico: .lluvia),
        DiaTiempoData(diaSem: .vie, max: 23, min: 18, ico: .sol),
        DiaTiempoData(diaSem: .sab, max: 27, min: 17, ico: .sol),
        DiaTiempoData(diaSem: .dom, max: 26, min: 15, ico: .sol)
    ]
}
