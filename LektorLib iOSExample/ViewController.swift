//
//  ViewController.swift
//  LektorLib
//
//  Created by Vladimir Urbano on 6/24/16.
//
//

import UIKit
import LektorLib

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
		
		let lektor = Lektor(path: "/Volumes/Rauenstein/Users/vla/Xcode/LektorLib/Tests/test2.txt")
		do {
			while let line = try lektor?.nextLine() {
				print(line)
			}
		} catch {
			print("Error")
		}
	}

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
