//
//  TableViewController.swift
//  MilestoneChallenge1
//
//  Created by Gregory Leck on 2019-04-18.
//  Copyright © 2019 Gregory Leck. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    var mapPictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Canadian Flagz"
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasSuffix("png") {
                mapPictures.append(item)
            }
        }
        print(mapPictures.count)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mapPictures.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Flag", for: indexPath)
        cell.textLabel?.text = mapPictures[indexPath.row]
        cell.imageView!.image = UIImage(named: mapPictures[indexPath.row])
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let vc = storyboard?.instantiateViewController(withIdentifier: "Detail") as? DetailViewController {
            vc.selectedImage = mapPictures[indexPath.row]
            vc.titleText = "\(mapPictures[indexPath.row])"
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}
