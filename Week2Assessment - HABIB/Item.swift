//
//  Item.swift
//  Week2Assessment - HABIB
//
//  Created by Habib Zarrin Chang Fard on 18/08/2017.
//  Copyright © 2017 Habib Zahrrin Chang Fard. All rights reserved.
//

import Foundation
import UIKit


// syntact to create class

// class classname : subclass{


// }

class Item {
    
    var title : String = ""
    var details : String = ""
    var image : UIImage = UIImage(named: "") ?? UIImage()
    var link : String = ""
    
    init(link : String) {
        self.link = link
    }
    
    init(title: String, details : String, imageName : String,link : String){
        self.title = title
        self.details = details
        self.link = link
        if let Image = UIImage(named: imageName){
            
            
            self.image = Image
            
        }
        
        
    
    }
    
}
