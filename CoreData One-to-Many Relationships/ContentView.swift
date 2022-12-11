//
//  ContentView.swift
//  CoreData One-to-Many Relationships
//
//  Created by Arthur Sh on 11.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @FetchRequest(sortDescriptors: []) var countries: FetchedResults<Country>
    
    var body: some View {
        VStack {
            List{
                ForEach(countries, id: \.self){country in
                    Section(country.wrappeName) {
                        ForEach(country.candyArray) { candy in
                            Text(candy.wrappedName)
                        }
                    }
                }
                
            }
            
            Button("ADD CANDY") {
                let mars = Candy(context: moc)
                mars.name = "Mars"
                mars.origin = Country(context: moc)
                mars.origin?.name = "United Kingdom"
                mars.origin?.shortName = "UK"
                
                let twix = Candy(context: moc)
                twix.name = "twix"
                twix.origin = Country(context: moc)
                twix.origin?.name = "United Kingdom"
                twix.origin?.shortName = "UK"
                
                let bountie = Candy(context: moc)
                bountie.name = "bountie"
                bountie.origin = Country(context: moc)
                bountie.origin?.name = "United States"
                bountie.origin?.shortName = "USA"
                
                try? moc.save()
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
