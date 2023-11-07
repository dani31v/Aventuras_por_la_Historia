//
//  NoteView.swift
//  book
//
//  Created by Daniela Valencia on 06/11/23.
//

import SwiftUI

struct NoteView: View {
    @State var title = ""
    @State var noteText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua"
    var body: some View {
        //TextEditor(text: $noteText)
        TextView(text:$noteText)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing){
                    Button("Done"){
                        print("Done")
                    }
                }
            }
    }
}

struct TextView: UIViewRepresentable{
    @Binding var text: String
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    func makeUIView(context: Context) -> UITextView {
        let textView = UITextView()
        return textView
    }
    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = context.coordinator.updateAttributedString()
        
    }
    class Coordinator: NSObject{
        var parent: TextView
        
        init(_ textView: TextView){
            self.parent = textView
        }
        func updateAttributedString() -> NSAttributedString{
            let attrs = [NSAttributedString.Key.font: UIFont.preferredFont(forTextStyle: .largeTitle)]
            let attrString = NSAttributedString(string: parent.text, attributes:attrs)
            return attrString
        }
        typealias UIViewType = UITextView
    }
    struct NoteView_Previews:PreviewProvider{
        static var previews: some View {
            
            NoteView()
        }
    }
}
