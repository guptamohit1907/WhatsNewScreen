//
//  ViewController.swift
//  WhatsNewScreenApp
//
//  Created by Mohit Gupta on 15/03/23.
//

import UIKit
import WhatsNewKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated : Bool) {
        super.viewDidAppear(animated)
        let whatsnew = WhatsNew(title : "What's New",
                             items :  [
                                WhatsNew.Item(title : "Add Favourites",
                                              subtitle : "Now you can add favourites in the app",
                                              image : UIImage(systemName: "star")),
                                WhatsNew.Item(title : "Volume",
                                              subtitle : "You can control the volume now!",
                                              image : UIImage(systemName: "volume")),
                                WhatsNew.Item(title : "Listen",
                                              subtitle : "Listen the top songs from around the world!",
                                              image : UIImage(systemName: "ear")),
                                WhatsNew.Item(title : "Settings",
                                              subtitle : "Control the quality of your music",
                                              image : UIImage(systemName: "gear"))
                             ])
//        guard let vc = WhatsNewViewController(whatsNew : whatsnew, versionStore : KeyValueWhatsNewVersionStore()) else {
//            return
//        }
//        vc.isModalInPresentation = true
        let vc = WhatsNewViewController(whatsNew : whatsnew,theme : .green)
        present(vc , animated: true)
    }
    
}


