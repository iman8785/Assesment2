//
//  ListViewController.swift
//  Week2Assessment - HABIB
//
//  Created by Habib Zarrin Chang Fard on 18/08/2017.
//  Copyright © 2017 Habib Zahrrin Chang Fard. All rights reserved.
//

import UIKit

class ListViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var Items : [Item] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        self.title = "List of Items"
        
        let product1 = Item(title: "Item1", details: "iPod Classic 6th generation", imageName: "product1", link : "https://en.wikipedia.org/wiki/IPod_Classic")

        Items.append(product1)
        
        let product2 = Item(title: "Item2", details: "iMac", imageName: "product2", link : "https://en.wikipedia.org/wiki/IMac ")
        
        Items.append(product2)
        
        let product3 = Item(title: "Item3", details: "iPhone 5", imageName: "product3", link : "https://en.wikipedia.org/wiki/IPhone_5")
        
        Items.append(product3)
        
        let product4 = Item(title: "Item4", details: "The original Mac Mini design", imageName: "product4", link: "https://commons.wikimedia.org/wiki/File:Mac-mini-1st-gen.jpg" )
        
        Items.append(product4)
        
        
        let product5 = Item(title: "Item5", details: "AirPort", imageName: "product5", link: "https://en.wikipedia.org/wiki/AirPort#AirPort_Base_Station")
        
        Items.append(product5)
        
        //let randomItem = Item()
        //Items.append(randomItem)
           tableView.reloadData()
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // add some pokemon
  
        
    }

    
}


    extension ListViewController : UITableViewDataSource {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return Items.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "items", for: indexPath) as? ItemsTableViewCell
                else {return UITableViewCell()}
            
            let item = Items[indexPath.row]
             
            cell.titileLable.text = item.title
            cell.detailsLabel.text = item.details
            cell.itemImageView.image = item.image
            
            return cell
        
        }

}

extension ListViewController : UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedItem = Items[indexPath.row]
        
        //navigate to next VC
        //1. get the storyboard
        
        let mainStoryBoard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        //2. get the vc by identifier
        
        
        guard let destination = mainStoryBoard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
            else {return}
        //3. present it
        
       
        destination.delegate = self
        destination.item = selectedItem
       
        navigationController?.pushViewController(destination, animated: true)
    }
    
}
extension ListViewController: DetailViewControllerDelegate {
    func changeTitleTo(newName: String) {
        self.title = newName
    }
}

