//
//  ContentView.swift
//  appdongnae
//
//  Created by aronkim on 2021/02/15.
//

import SwiftUI

struct ContentView: View {
    @State var index = 0

    var images = ["10-12", "10-13", "10-14", "10-15"]
    var body: some View { 
        VStack(alignment: .leading, content: {
            MapView()
            SnapCarousel(index: $index.animation(), maxIndex: images.count - 1) {
                            ForEach(self.images, id: \.self) { imageName in
                                Image(imageName)
                                    .resizable()
                                    .scaledToFill()
                            }
                        }
                        .aspectRatio(3/4, contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 15))

        }).edgesIgnoringSafeArea(.vertical)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct MapView: UIViewControllerRepresentable {
    func makeUIViewController(context: Context) -> UIViewController {
            MapViewController()
        }
 
    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {}
}
