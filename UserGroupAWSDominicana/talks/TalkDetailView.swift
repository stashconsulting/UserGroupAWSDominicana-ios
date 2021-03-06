//
//  TalkDetailView.swift
//  cuantoes?
//
//  Created by Shailyn javier Ortiz jimenez on 6/29/20.
//  Copyright © 2020 Shailyn javier Ortiz jimenez. All rights reserved.
//

import Foundation
import SwiftUI


struct TalkDetailsView: View {
    var talkItem: Talk
    
    var body: some View {
        return VStack{
            Text(talkItem.name)
                .fontWeight(.semibold)
                .font(.system(size: 30))
                .padding()
            if (talkItem.speaker != nil){
                Text(talkItem.speaker!.name)
                .fontWeight(.light)
                .font(.system(size: 20))
            }

            if talkItem.description != nil
            {
                Text(talkItem.description!)
                    .padding(20.0)
                    .padding(.bottom, 40.0)
            }
            if talkItem.date != ""
            {
                Text(talkItem.date)
                    .fontWeight(.bold)
                Spacer()
            }
            
            Spacer()
            
            if (strToDate(talkItem: self.talkItem) ?? Date() > Date()){
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Text("I want to assist!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width: 180.0, height: 35.0)
                    .background(Color.blue)
                    .cornerRadius(10.0)
                    .padding()
                }
                
            } else {
                Text("This party is over :(")
            }
            Spacer()
        }
            .padding()
            .foregroundColor(Color(.black))
    }

}

struct TalkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TalkDetailsView(talkItem: Talk(
            id: "01",
            name: "test",
            description: "test desk",
            date: "01/01/01",
            speaker: Speaker(
                id: "01",
                name: "Nicki Stone"
            )
        ))
    }
}

//TalkDetailsView(talkItem: Talk(
//    id: UUID(),
//    talkTitle: "Swift on lambda",
//    talkDesc: "On this talk Nicki Stone how awesome and powerful the combination between swift and lambda can be!",
//    talkAuthors: "Nicki Stone",
//    talkDate: "11/22/2021"
//))
