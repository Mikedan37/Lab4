//
//  MyTableViewController.swift
//  Lab4
//
//  Created by Michael Danylchuk on 3/4/17.
//  Copyright © 2017 Group. All rights reserved.
//

import UIKit

class MyTableViewController: UITableViewController {

    //Namez of the foodz Placez non alphebetical
    
    //var restaurants = ["DishDash", "Shadow Brook", "Kula", "Whole Foods", "Adega", "Ciceroes", "Chef Chus", "Cheesecake Factory","Gayles", "Chipotle","Cafe Rehobot", "Cascal", "Taj Cafe", "Falafel Stop", "Kyusu Burmese", "Eureka", "Oren HUmmus", "Chatpatta Corner", "Tayyibaat", "Craftsman & Wolves", "De Afghan"]
    
    // name of food places alphabetical
    
    let animals: [String: [String]] = ["A" : ["Adega"],
                                           "C" : ["Cafe Rehoboth","Cascal","Chatpatta Corner","Chef Chus","Cheesecake Factory","Chipotle" ,"Ciceros","Craftsman & Wolves"],
                                           "D" : ["De Afghan", "Dish Dash"],
                                           "E" : ["Eureka"],
                                           "F" : ["Falafel Stop"],
                                           "G" : ["Gayles"],
                                           "K" : ["Kula"],
                                           "O" : ["Oren humus"],
                                           "S" : ["Shadowbrook"],
                                           "T" : ["Taj Cafe","Tayyibaat"],
                                           "W" : ["Whole Foods"]]
    var animalDict = [String: [String]]()
    var animalSectionTitles = [String]()
    
    // Images of Food Places
    
    var restaurantsimgs = [#imageLiteral(resourceName: "Adega-1"),#imageLiteral(resourceName: "rehoboth-1"), #imageLiteral(resourceName: "cascal-1"), #imageLiteral(resourceName: "chatpattaCorner-1"), #imageLiteral(resourceName: "ChefChu-1"),#imageLiteral(resourceName: "Cheesecake Factory-1"),#imageLiteral(resourceName: "Chipotle-1"),#imageLiteral(resourceName: "cicerospizzalogo-1"),#imageLiteral(resourceName: "Craftman&Wolves-1"),#imageLiteral(resourceName: "DeAfghanan-1"), #imageLiteral(resourceName: "DishDash-1"), #imageLiteral(resourceName: "eureka_logo-1"),#imageLiteral(resourceName: "FalafelStop-1"),#imageLiteral(resourceName: "Gayles-1"),#imageLiteral(resourceName: "Kula-1"),#imageLiteral(resourceName: "oren's humus-1"),#imageLiteral(resourceName: "shadowbrook-1"),#imageLiteral(resourceName: "TajCafe-1"),#imageLiteral(resourceName: "tayyibaatmeatandgrill-1"),#imageLiteral(resourceName: "WholeFoods-1")]
    
    // Describes the food we like from place
    
    var fooddiscription = ["Adega is a high class hidden gem found in a place you wouldn't expect, currently the reservations on opentable are booked until march. I would recommend the pasteis de Bacalhau, its a nice spring salad with flavorful codfish cakes.","Cafe Rehoboth serves the best Ethopian cusine in the town.Its a family owned business, which maintaints the authenticity of the food. I would recommend their sampler dish, its enough to share with 3 people!!!","Its a very popular Tapas place in Mountain View. It has delicious Latin American food and some live music on Friday. Very lively and upbeat atmosphere. I love their sangrias and Bacon wrapped goat cheese.","This place makes the best Pani Puri in town. Pani Puri is a very famous street food of india. This is a hidden gem, tucked far far away in Fremont but so well worth the visit","Chef Chus is an amazing chineese restaurant, with many options to eat, I would reccomend the chicken chow mein, although high in calories defineitly worth it","CheeseCake Factory serves american cusine in huge portions, although this is food, I would die for a slice of Oreo Dream Extreme Cheesecake","Who the heck dosn't like Chipotle?! Other then A high amount of sodium and possible exposure to ecoli. I could use a nice burrito bowl with brown rice, fajita veggies, chicken, cheese, hot salsa, and some Guac. Everyone needs Some Guac in their lives 🙌","ciceros pizza is just a regular old pizza place, But! the pizza is served flat bread, I would reccomend the bakerpride, it's a pizza that topped with sausage and veggies","Craftsman and Wolves is like food art on plate. You would be blown away by how beautiful your food can look and taste at the same time. Its a little expensive but so very worth of every penny you spend here. My favorite dish is The Rebel, its a savoury muffin filled with a soft boiled egg, ham and spring onions.","De Afghanan serves afghani food. I would recommend their meat and rice dish. The rice is cooked in chicken broth, which makes it very delicoius. The meat is very flavorful and well seasoned with authentice spices. If you are in a mood for some extra carb calories then definetly order Bolani, its very delicious", "DishDash is a great place to eat at when you're in the mood for medditerainian food, my favorite dish is the shish touk, which is a chicken kabob with a nice aroma of spices and flavores complimented by some nice buttery basmati rice","Eureka is a new American style restaurant, which basically means it serves tradional american food and some new fusion reciepes as well. I love their brussel sprout dish.Also try the watermelon salad. its sumptuous and tasty. And ofcourse the carb overloaded Mac and Cheese is also very tasty","Falafel Stop serves Israeli food and I have heard from the native israeli people that its very much like in thier home country. I love their Chicken Shawarma plate and hummus plate. The Falafel ball are also very delicous. Their pita bread is always warm and soft, unlike a lot of other places. This is because they make their own Pita from scratch","Gayles is a cute place by capitola that offers tons of fresh baked pasteries, and warm home made foods. I would reccomend the Lemon Chicken Breast with macaroni & cheese and Sauteed Garlic Spinach","Kula is a great place to eat japanese cuisene, mainly sushi. This cool restaurant has sushi plates running around on little conveyor belts, id reccomend the salmon belly nigiri, its raw salmon on rice. You only live once!", "Oren Hummus is serves israeli food. Its a nice sit down restaurant. I love their Chicken Schnitzel plate. Their baba ganoush is lip smackingly good. All their hummus variations are also very tasty!","ShadowBrook is a great place to enjoy a meal with a significant other. I would reccomend the Shrimp Sacmpi it's nice and buttery but at the sametime sweet and creamy.", "Taj Cafe is a small cafe within an Asian - Pakistani grocery store. Its a good take out place. The food prepared here is fresh becaus its made to order. You need to call them ahead and they start making the food and then you can pick it up at designated time. I love their samosa's and mango lassi!!!","Tayyibat is actually a meat shop and they sell a limited menu dishes on the side. But all are just so perfectly done that you owuld want to come back for more. I love ther chicken kabob with fresh chopped salad. They also serve burgers which are very juicy and tasty.", "I absolutly love Whole Foods, there is a variety of cooked foods, that taste just like a home made meal. I would recommend the Citus salmon with baked cumin sweet potatoes and grilled vegetables."]
    
    // Hides Status Bar for prettyness
    override var prefersStatusBarHidden: Bool{
        return true
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return animalSectionTitles.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        let animalKey = animalSectionTitles[section]
        if let animalValues = animalDict[animalKey] {
            return animalValues.count
        }
        else{
            return 0
        }
        
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return animalSectionTitles[section]
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
//        let cellidentifier = "restaurantsCell"
//        let cell = tableView.dequeueReusableCell(withIdentifier: cellidentifier, for: indexPath) as! MyTableViewCell
//        cell.restaurantname?.text = restaurants[indexPath.row]
//        cell.restaurantpic?.image = restaurantsimgs[indexPath.row]
//
        //return cell
       let cell = tableView.dequeueReusableCell(withIdentifier: "cellidentifier", for: indexPath)
       let animalKey = animalSectionTitles[indexPath.section]
        if let animalValues = animalDict[animalKey] {
            cell.textLabel?.text = animalValues[indexPath.row]
            let imageFileName = animalValues[indexPath.row].lowercased()
            let imageFile = imageFileName.replacingOccurrences(of: " ", with: "_")
            cell.imageView?.image = UIImage(named: imageFile)
        }
        return cell
    }
    
    override func sectionIndexTitles(for tableView: UITableView) -> [String]? {
        
        let animalIndexTitles : [String] = ["A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"]
        return animalIndexTitles
    }
    
    override func tableView(_ tableView: UITableView, sectionForSectionIndexTitle title: String, at index: Int) -> Int{
        
        if let index = animalSectionTitles.index(of:title){
            return index
        }
        return 0
    }
    
    override func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int){
        let headerview = view as! UITableViewHeaderFooterView
        headerview.contentView.backgroundColor = UIColor.cyan
        headerview.textLabel?.textColor = UIColor.orange
        headerview.textLabel?.font = UIFont(name: "Avenir", size: 25.0)
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50.0
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

//    
//    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
//
//    }
// 

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
//        if segue.identifier == "show item detail"{
//            if let indexPath = self.tableView.indexPathForSelectedRow{
//                let detailVC = segue.destination as! MyDetailViewController
//                detailVC.foodnamelblText = restaurants[indexPath.row]
//                detailVC.restaurantdisText = fooddiscription[indexPath.row]
//                detailVC.foodpicImg = restaurantsimgs[indexPath.row]
            //}

    }
    
    }

