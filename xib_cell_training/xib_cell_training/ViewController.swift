//
//  ViewController.swift
//  xib_cell_training
//
//  Created by Takahiro Noguchi on 2016/05/07.
//  Copyright © 2016年 Takahiro Noguchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource , UITableViewDelegate {
    
    @IBOutlet weak var testTableView: UITableView!
    
    //データを返すメソッド
    func tableView(tableView:UITableView, cellForRowAtIndexPath indexPath:NSIndexPath) -> UITableViewCell {
        
        let cell:TestTableViewCell = tableView.dequeueReusableCellWithIdentifier("TestCell", forIndexPath: indexPath) as! TestTableViewCell
        
//        let cell2:TestTableViewCell2 = tableView.dequeueReusableCellWithIdentifier("TestCell2", forIndexPath: indexPath) as! TestTableViewCell2

//        cell.Label0.text = String(indexPath.row)
        cell.Label0.text = "(\(indexPath.section), \(indexPath.row))"
        cell.Image0?.image = UIImage(named: "2")
        cell.Image1?.image = UIImage(named: "4")
        
//        cell2.Label1.text = "\(indexPath.row)"
//        cell2.Image2.image = UIImage(named: "1")
//        cell2.Image3.image = UIImage(named: "3")
        
        return cell
//        return cell2
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    //データの個数を返すメソッド
    func tableView(tableView:UITableView, numberOfRowsInSection section:Int) -> Int {
        return 5
    }

    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 125
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String {
        return "\(section) 番目のセクション"
    }

    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 120
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView {
        let view: UIView = UIView(frame: CGRectMake(0, 0, 320, 120))
        view.backgroundColor = UIColor.redColor()
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testTableView.dataSource = self
        
        //自作セルをテーブルビューに登録する。
        let testXib = UINib(nibName:"TestTableViewCell", bundle:nil)
        testTableView.registerNib(testXib, forCellReuseIdentifier:"TestCell")
        
//        let testXib2 = UINib(nibName: "TestTableViewCell2", bundle: nil)
//        testTableView.registerNib(testXib2, forCellReuseIdentifier: "TestCell2")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

