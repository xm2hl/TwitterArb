//
//  Maintenance.swift
//  TwittrArb
//
//  Created by Apple on 21/05/2023.
//

import SwiftUI

struct Maintenance: View {
    var body: some View {
        VStack{
            Image("Custom-Icon-Design-Pretty-Office-5-Maintenance.256")
                .resizable()
                .shadow(radius: 10)
                .frame(width: 60, height: 60)
            Text("الخدمة تحت الصيانة").bold()
        }
    }
}

struct Maintenance_Previews: PreviewProvider {
    static var previews: some View {
        Maintenance()
    }
}
