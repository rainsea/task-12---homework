//
//  LocationMovie.swift
//  MovieCinema
//
//  Created by RainSea on 11/12/14.
//  Copyright (c) 2014 RainSea. All rights reserved.
//

import UIKit

class LocationMovie: UITableViewController {
    
    var data = Array<DiaChi>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Địa chỉ xem phim"
        self.edgesForExtendedLayout = UIRectEdge.None
        data.append(DiaChi(name: "Rạp chiếu phim quốc gia", description: "Số 1 Thái Hà, Đống Đa, Hà Nội"))
        data.append(DiaChi(name: "Rạp Royal City", description: "Tầng 2C - Royal City"))
        data.append(DiaChi(name: "Rạp Lotter Lia", description: "Tầng 2 - Lotte Lya"))

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - Table view data source


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell: UITableViewCell
        if let dequeCell = tableView.dequeueReusableCellWithIdentifier("#") as? UITableViewCell
        {
            cell = dequeCell
        } else {
            cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "#")
            cell.accessoryType = UITableViewCellAccessoryType.DisclosureIndicator
        }
        let diaChi = data[indexPath.row] as DiaChi
        cell.textLabel.text = diaChi.name
        cell.detailTextLabel?.text = diaChi.description

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
