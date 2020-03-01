//
//  ContentView.swift
//  AddRowOnListSample
//
//  Created by iDev0 on 2020/03/02.
//  Copyright © 2020 Ju Young Jung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var appleDevices = ["iPad", "iPhone", "iMac", "AirPods"]
    
    func addRow() {
        self.appleDevices.append("Macbook")
    }
    
    
    var body: some View {
        
        NavigationView {
            List {
                ForEach(appleDevices, id: \.self) { device in
                    Text(device)
                }
            }
            .navigationBarTitle(Text("Apple Devices"))
            .navigationBarItems(trailing: Button(action : {
                self.addRow()
            }) {
                Image(systemName: "plus")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
