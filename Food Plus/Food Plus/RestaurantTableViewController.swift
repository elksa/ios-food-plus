//
//  RestaurantTableViewController.swift
//  Food Plus
//
//  Created by Alejandro Casanova Mutis on 12/4/16.
//  Copyright © 2016 elKsa. All rights reserved.
//

import UIKit

class RestaurantTableViewController: UITableViewController {
    
    var restaurants:[Restaurant] = [
        Restaurant(name: "Cafe Deadend", type: "Coffee & Tea Shop", location: "Hong Kong", image: "cafedeadend.jpg", isVisited: false, phoneNumber: "123-000-01"),
        Restaurant(name: "Homei", type: "Cafe", location: "Hong Kong", image: "homei.jpg", isVisited: false, phoneNumber: "123-000-02"),
        Restaurant(name: "Teakha", type: "Tea House", location: "Hong Kong", image: "teakha.jpg", isVisited: false, phoneNumber: "123-000-03"),
        Restaurant(name: "Cafe loisl", type: "Austrian / Causual Drink", location: "Hong Kong", image: "cafeloisl.jpg", isVisited: false, phoneNumber: "123-000-04"),
        Restaurant(name: "Petite Oyster", type: "French", location: "Hong Kong", image: "petiteoyster.jpg", isVisited: false, phoneNumber: "123-000-05"),
        Restaurant(name: "For Kee Restaurant", type: "Bakery", location: "Hong Kong", image: "forkeerestaurant.jpg", isVisited: false, phoneNumber: "123-000-06"),
        Restaurant(name: "Po's Atelier", type: "Bakery", location: "Hong Kong", image: "posatelier.jpg", isVisited: false, phoneNumber: "123-000-07"),
        Restaurant(name: "Bourke Street Backery", type: "Chocolate", location: "Sydney", image: "bourkestreetbakery.jpg", isVisited: false, phoneNumber: "123-000-08"),
        Restaurant(name: "Haigh's Chocolate", type: "Cafe", location: "Sydney", image: "haighschocolate.jpg", isVisited: false, phoneNumber: "123-000-09"),
        Restaurant(name: "Palomino Espresso", type: "American / Seafood", location: "Sydney", image: "palominoespresso.jpg", isVisited: false, phoneNumber: "123-000-10"),
        Restaurant(name: "Upstate", type: "American", location: "New York", image: "upstate.jpg", isVisited: false, phoneNumber: "123-000-11"),
        Restaurant(name: "Traif", type: "American", location: "New York", image: "traif.jpg", isVisited: false, phoneNumber: "123-000-12"),
        Restaurant(name: "Graham Avenue Meats", type: "Breakfast & Brunch", location: "New York", image: "grahamavenuemeats.jpg", isVisited: false, phoneNumber: "123-000-13"),
        Restaurant(name: "Waffle & Wolf", type: "Coffee & Tea", location: "New York", image: "wafflewolf.jpg", isVisited: false, phoneNumber: "123-000-14"),
        Restaurant(name: "Five Leaves", type: "Coffee & Tea", location: "New York", image: "fiveleaves.jpg", isVisited: false, phoneNumber: "123-000-15"),
        Restaurant(name: "Cafe Lore", type: "Latin American", location: "New York", image: "cafelore.jpg", isVisited: false, phoneNumber: "123-000-16"),
        Restaurant(name: "Confessional", type: "Spanish", location: "New York", image: "confessional.jpg", isVisited: false, phoneNumber: "123-000-17"),
        Restaurant(name: "Barrafina", type: "Spanish", location: "London", image: "barrafina.jpg", isVisited: false, phoneNumber: "123-000-18"),
        Restaurant(name: "Donostia", type: "Spanish", location: "London", image: "donostia.jpg", isVisited: false, phoneNumber: "123-000-19"),
        Restaurant(name: "Royal Oak", type: "British", location: "London", image: "royaloak.jpg", isVisited: false, phoneNumber: "123-000-20"),
        Restaurant(name: "CASK Pub and Kitchen", type: "Thai", location: "London", image: "caskpubkitchen.jpg", isVisited: false, phoneNumber: "123-000-21")
    ]
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey : Any]? = nil) -> Bool {
        
        // Override point for customization after application launch. Here you can out the code you want.
        UINavigationBar.appearance().barTintColor = UIColor(red: 216.0/255.0, green: 74.0/255.0, blue: 32.0/255.0, alpha: 1.0)
        UINavigationBar.appearance().tintColor = UIColor.white
        
        if let barFont = UIFont(name: "Avenir-Light", size: 24.0) {
            UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white, NSFontAttributeName:barFont]
        }
        
        UIApplication.shared.statusBarStyle = .lightContent
        
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        // Remove the title of the back button
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.hidesBarsOnSwipe = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurants.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! RestaurantTableViewCell

        // Configure the cell...
        cell.nameLabel?.text = restaurants[indexPath.row].name
        cell.locationLabel?.text = restaurants[indexPath.row].location
        cell.typeLabel?.text = restaurants[indexPath.row].type
        cell.thumbnailImageView?.image = UIImage(named: restaurants[indexPath.row].image)
        cell.accessoryType = restaurants[indexPath.row].isVisited ? .checkmark : .none
        // Uncomment to make the image circular at runtime, currently that behaviour is handled by the UI builder
        //cell.thumbnailImageView.layer.cornerRadius = 30
        //cell.thumbnailImageView.clipsToBounds = true

        return cell
    }
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        
//        // Create an option menu as an action sheet
//        let optionMenu = UIAlertController(title: nil, message: "What do you want to do?", preferredStyle: .actionSheet)
//        
//        // Call handler
//        let callActionHandler = { (action:UIAlertAction!) -> Void in
//            let alertMessage = UIAlertController(title: "Service Unavailable", message: "Sorry, the call feature is not available yet. Please retry later.", preferredStyle: .alert)
//            alertMessage.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
//            self.present(alertMessage, animated: true, completion: nil)
//        }
//        
//        
//        // Add actions to the menu
//        let checkMessage = restaurantIsVisited[indexPath.row] ? "Undo check in" : "Check in"
//        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
//        let callAction = UIAlertAction(title: "Call 123-000-\(indexPath.row)", style: .default, handler: callActionHandler)
//        // Check-in handler
//        let checkInAction = UIAlertAction(title: checkMessage, style: .default, handler: { (action:UIAlertAction!) -> Void in
//            let cell = tableView.cellForRow(at: indexPath)
//            cell?.accessoryType = self.restaurantIsVisited[indexPath.row] ? .none : .checkmark
//            self.restaurantIsVisited[indexPath.row] = !self.restaurantIsVisited[indexPath.row]
//        })
//        
//        optionMenu.addAction(cancelAction)
//        optionMenu.addAction(callAction)
//        optionMenu.addAction(checkInAction)
//        
//        // Create the menu
//        present(optionMenu, animated: true, completion: nil)
//        
//        // Deselect the row
//        tableView.deselectRow(at: indexPath, animated: false)
//    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    // Override to support editing the table view.
    /*override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        
        if editingStyle == .delete {
            // Delete the row from the data source
        }
        else if editingStyle == .insert {
            // Insert the row
        }
        
        tableView.deleteRows(at: [indexPath], with: .fade)
    }*/
    
    override func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath) -> [UITableViewRowAction]? {
        
        // Social sharing button
        let shareAction = UITableViewRowAction(style: .default, title: "Share", handler: { (action, indexPath) -> Void in
            
            let defaultText = "Just checking in at \(self.restaurants[indexPath.row].name)"
            if let imageToShare = UIImage(named: self.restaurants[indexPath.row].image) {
                let activityController = UIActivityViewController(activityItems: [defaultText, imageToShare], applicationActivities: nil)
                self.present(activityController, animated: true, completion: nil)
            }
        })
        
        // Delete button
        let deleteAction = UITableViewRowAction(style: .default, title: "Delete", handler: { (action, indexPath) -> Void in
            
            // Delete the row from the data source
            self.restaurants.remove(at: indexPath.row)

            tableView.deleteRows(at: [indexPath], with: .fade)
        })
        
        shareAction.backgroundColor = UIColor(red: 48.0/255.0, green: 173.0/255.0, blue: 99.0/255.0, alpha: 1.0)
        deleteAction.backgroundColor = UIColor(red: 202.0/255.0, green: 202.0/255.0, blue: 203.0/255.0, alpha: 1.0)
        
        return [deleteAction, shareAction]
    }

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "showRestaurantDetail" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! RestaurantDetailViewController
                destinationController.restaurant = restaurants[indexPath.row]
            }
        }
    }

}
