//
//  DetailViewController.swift
//  Week2Assessment - HABIB
//
//  Created by Habib Zarrin Chang Fard on 18/08/2017.
//  Copyright © 2017 Habib Zahrrin Chang Fard. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var productNameLabel: UILabel!
    
    
    @IBOutlet weak var ProductImageView: UIImageView!
    
    
    @IBOutlet weak var ProductLunchLabel: UILabel!
    
    @IBOutlet weak var lunchText: UITextField!
    
    @IBOutlet weak var doneButton: UIButton!
    
    
    @IBOutlet weak var edditButton: UIButton!
    
    @IBOutlet weak var productText: UITextField!
    
    var delegate: DetailViewControllerDelegate?
    
    var item : Item = Item(title: "", details : "", imageName : "", link : "")
    
    @IBAction func WebButton(_ sender: Any) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        guard let destination = mainStoryboard.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController else {return}
        destination.specificItem = item
        
        navigationController?.pushViewController(destination, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        productNameLabel.isEnabled = true
        ProductLunchLabel.isEnabled = true
        productText.isHidden = true
        lunchText.isHidden = true
        edditButton.isHidden = false
        doneButton.isHidden = true
        productNameLabel.text = item.title
        ProductLunchLabel.text = item.details
        ProductImageView.image = item.image
        self.title = item.title
        
    }
    
    
    @IBAction func edditButtonTap(_ sender: Any) {
        
        
        productText.isHidden = false
        lunchText.isHidden = false
        
        productNameLabel.isHidden = true
        ProductLunchLabel.isHidden = true
        
        edditButton.isHidden = true
        doneButton.isHidden = false
        
        
    }
    
    
    @IBAction func doneButtonTap(_ sender: Any) {
        
        
        
        productText.isHidden = true
        lunchText.isHidden = true
        
        productNameLabel.isHidden = false
        ProductLunchLabel.isHidden = false
        
        edditButton.isHidden = false
        doneButton.isHidden = true
        
        item.title = productText.text!
        item.details = lunchText.text!
        
        productNameLabel.text = item.title
        ProductLunchLabel.text = item.details
        self.title = item.title
        
        
    }
    
    @IBAction func changeButton(_ sender: Any) {
        delegate?.changeTitleTo(newName: item.title)
        
    }
    
}

protocol DetailViewControllerDelegate {
    func changeTitleTo(newName: String)
}


