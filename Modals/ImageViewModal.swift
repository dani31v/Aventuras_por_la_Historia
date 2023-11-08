//
//  ImageViewModal.swift
//  book
//
//  Created by Iñaki Sigüenza on 08/11/23.
//

import SwiftUI

class ImageSaver: NSObject {
    func writeToPhotoAlbum(image: UIImage) {
        UIImageWriteToSavedPhotosAlbum(image, self, #selector(saveCompleted), nil)
    }

    @objc func saveCompleted(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
       
    }
}

struct ImageViewModal: View {
    @Binding var isPresented: Bool
    var image: UIImage?

    var body: some View {
        NavigationView {
            VStack{
                Image(uiImage: image!)
                    .resizable()
                    .scaledToFit()
                    .navigationBarItems(trailing: Button("Cerrar") {
                        isPresented = false
                    })
                
                Button(action:{
                    guard let inputImage = image else { return }

                        let imageSaver = ImageSaver()
                        imageSaver.writeToPhotoAlbum(image: inputImage)
                }){
                    ZStack{
                        RoundedRectangle(cornerRadius: 20)
                            .foregroundStyle(Color.colorMOC)
                        Text("Guardar mi obra de arte")
                            .foregroundStyle(Color.white)
                    }
                    .frame(width: 400, height: 50)
                    .padding()
                }
            }
            
                .navigationTitle("🎨 Tu obra de arte")
        }
    }
}
