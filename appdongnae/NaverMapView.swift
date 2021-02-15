//
//  NaverMapView.swift
//  appdongnae
//
//  Created by aronkim on 2021/02/16.
//

import SwiftUI
import NMapsMap

struct NaverMapView: UIViewRepresentable {
    typealias UIViewType = <#type#>
    

    var authState: NMFAuthState!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nmapView = NMFMapView(frame: view.frame)
        view.addSubview(nmapView)
    }
}
