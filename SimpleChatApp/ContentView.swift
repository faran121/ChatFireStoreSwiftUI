//
//  ContentView.swift
//  SimpleChatApp
//
//  Created by Maliks.
//

import SwiftUI

struct ContentView: View {
    @StateObject var messageManager = MessagesManager()
    //var dummyMessageArray = ["Hi!", "How Are you?", "Are you having fun?"]
    
    var body: some View {
        VStack {
            VStack {
                TitleRow()
                
                ScrollViewReader { proxy in
                    ScrollView {
                        ForEach(self.messageManager.messages, id: \.id) { message in
                            MessageBubble(message: message)
                        }
                    }
                    .padding(.top, 10)
                    .background(.white)
                    .cornerRadius(30, corners: [.topLeft, .topRight])
                    .onChange(of: messageManager.lastMessageId) { id in
                        withAnimation {
                            proxy.scrollTo(id, anchor: .bottom)
                        }
                    }
                }
            }.background(Color("SecondaryColor"))
            
            MessageField()
                .environmentObject(messageManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
