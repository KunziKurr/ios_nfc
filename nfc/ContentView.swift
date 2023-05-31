//
//  ContentView.swift
//  nfc
//
//  Created by Korir on 31/05/2023.
//

import SwiftUI
import CoreNFC

struct ContentView: View {
    @State var urlT = ""
    var body: some View {
        
        VStack{
            TextField("Enter your name", text: $urlT)
            Button(action:{}){
                Text("Scan card")
            }.padding()
        }
      
//        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }nfc
    
}


class NFCReader: NSObject, ObservableObject, NFCNDEFReaderSessionDelegate{
    
    var theactualData = ""
    var nfcSession: NFCNDEFReaderSession?
    
    func scan(theactualData: String){
        self.theactualData = theactualData
        nfcSession = NFCNDEFReaderSession(delegate: self, queue: nil, invalidateAfterFirstRead: true)
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didInvalidateWithError error: Error) {
        <#code#>
    }
    
    func readerSession(_ session: NFCNDEFReaderSession, didDetectNDEFs messages: [NFCNDEFMessage]) {
        <#code#>
    }
    

}
