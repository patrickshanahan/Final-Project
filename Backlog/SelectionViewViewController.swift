//
//  SelectionViewViewController.swift
//  Backlog
//
//  Created by cis290 on 11/14/16.
//  Copyright © 2016 Rock Valley College. All rights reserved.
//

import UIKit
import CoreData


class SelectionViewViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var titleDescription: UITextView!
    @IBOutlet weak var btnBack: UIBarButtonItem!
    @IBAction func btnDelete(sender: UIBarButtonItem) {
    }
    @IBAction func btnSave(sender: UIButton) {
    }
    
    @IBOutlet weak var labelTitle: UILabel!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var url = NSURL(string: "http://www.wikipedia.org/wiki/")
        //add title to end of wiki link here
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        super.touchesBegan(touches , withEvent:event)
        if (touches.first as UITouch!) != nil {
            DismissKeyboard()
        }
    }
    //**End Copy**
    
    //7 Add to hide keyboard
    
    //**Begin Copy**
    func DismissKeyboard(){
        //forces resign first responder and hides keyboard
        titleDescription.endEditing(true)
       
        
    }
    
    func textFieldShouldReturn(textField: UITextField!) -> Bool     {
        textField.resignFirstResponder()
        return true;
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
