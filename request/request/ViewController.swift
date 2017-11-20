//
//  ViewController.swift
//  request
//
//  Created by TOPS on 11/13/17.
//  Copyright © 2017 TOPS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txt3: UITextField!
    @IBOutlet var txt2: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        getdata()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet var txt1: UITextField!

    
    @IBAction func submitt(_ sender: Any) {
        
        let url = "http://localhost/project/index.php?emp_name=\(txt1.text!)&emp_add=\(txt2.text!)&emp_mob=\(txt3.text!)"
        let str = url.addingPercentEscapes(using: String.Encoding.utf8)
        let url1 = URL(string: str!)
        let request = URLRequest(url: url1!)
        let session = URLSession.shared
        let datatask = session.dataTask(with: request, completionHandler: {(data1,resp,err) in
            let resp = String(data: data1!, encoding: String.Encoding.utf8)
            print(resp ?? "poko")
            DispatchQueue.main.async {
                do{
                let arr = try JSONSerialization
                .jsonObject(with: data1!, options: []) as! [[String:Any]]
                
                print(arr)
                
                /*
                let alt = UIAlertController(title: "Conf", message: str, preferredStyle: .alert);
                
                let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alt.addAction(ok);
                self.present(alt, animated: true, completion: nil);*/
            }
                catch{
                    
                }
            
            
        }
        })
        
        datatask.resume()
        
    }
    
    
    @IBAction func postmethod(_ sender: Any) {
        
        let test = "http://localhost/project/insert_post.php"
        let strbody = "emp_name=\(txt1.text!)&emp_add=\(txt2.text!)&emp_mob=\(txt3.text!)"
        let url = URL(string: test)
        var request = URLRequest(url: url!)
        request.addValue(strbody, forHTTPHeaderField: "Content-Length")
        request.httpBody = strbody.data(using: String.Encoding.utf8)
        request.httpMethod = "POST"
        let session = URLSession.shared
        let datatask = session.dataTask(with: request, completionHandler: {(data,resp,err) in
        let resp = String(data: data!, encoding: String.Encoding.utf8)
            //print(resp)
           self.getdata()
            
            
        })
        datatask.resume()
    
        
    }
    
    func getdata()  {
        
        
        let url = "http://localhost/project/select_req.php"
        let str = url.addingPercentEscapes(using: String.Encoding.utf8)
        let url1 = URL(string: str!)
        let request = URLRequest(url: url1!)
        let session = URLSession.shared
        let datatask = session.dataTask(with: request, completionHandler: {(data,resp,err) in
            let resp = String(data: data!, encoding: String.Encoding.utf8)
            print(resp ?? "poko")
            
            
            
            /*
            DispatchQueue.main.async {
                do{
                    let arr = try JSONSerialization.jsonObject(with: data!, options: []) as! [[String:Any]]
                    
                    
                    for i in arr{
                        var temp:[String] = []
                        //temp.append(i[""] as! )
                    }
                    
                   // print(arr)
                }
                catch{
                    
                }
                
                
            }*/
        })
        
        datatask.resume()
        
    }
    
    
    
    @IBAction func deleee(_ sender: Any) {
        
        
        let url = "http://localhost/project/delete.php?emp_name=\(txt1.text!)"
        let str = url.addingPercentEscapes(using: String.Encoding.utf8)
        let url1 = URL(string: str!)
        let request = URLRequest(url: url1!)
        let session = URLSession.shared
        let datatask = session.dataTask(with: request, completionHandler: {(data,resp,err) in
            let resp = String(data: data!, encoding: String.Encoding.utf8)
            print(resp ?? "poko")
            DispatchQueue.main.async {
                
                let alt = UIAlertController(title: "Conf", message: str, preferredStyle: .alert);
                
                let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alt.addAction(ok);
                self.present(alt, animated: true, completion: nil);
            }
            
            
        })
        
        datatask.resume()
        
    
    

    }

    
    @IBAction func deletepost(_ sender: Any) {
        
        let test = "http://localhost/project/delete_post.php"
        var strbody = "emp_name=\(txt1.text!)"
        print(strbody)
        let url = URL(string: test)
        var request = URLRequest(url: url!)
        request.addValue(strbody, forHTTPHeaderField: "Content-Length")
        request.httpBody = strbody.data(using: String.Encoding.utf8)
        request.httpMethod = "POST"
        let session = URLSession.shared
        let dataskq = session.dataTask(with: request, completionHandler: {(data,resp,err) in
        
            let resp = String(data: data!, encoding: String.Encoding.utf8)
            print(resp)
        })
        dataskq.resume()
        
        
        
        
        
        
    }
    
    
    
    
    @IBAction func updatee(_ sender: Any) {
        
        let url = "http://localhost/project/update.php?emp_name=\(txt1.text!)&emp_add=\(txt2.text!)&emp_mob=\(txt3.text!)"
        let str = url.addingPercentEscapes(using: String.Encoding.utf8)
        let url1 = URL(string: str!)
        let request = URLRequest(url: url1!)
        let session = URLSession.shared
        let datatask = session.dataTask(with: request, completionHandler: {(data,resp,err) in
            let resp = String(data: data!, encoding: String.Encoding.utf8)
            print(resp ?? "poko")
            DispatchQueue.main.async {
                
                let alt = UIAlertController(title: "Conf", message: str, preferredStyle: .alert);
                
                let ok = UIAlertAction(title: "Ok", style: .default, handler: nil)
                alt.addAction(ok);
                self.present(alt, animated: true, completion: nil);
            }
            
            
        })
        
         datatask.resume()
        
        
        
    }
    
    
    
    @IBAction func updatepost(_ sender: Any) {
        
        let tst = "http://localhost/project/update_post.php"
        let strbody = "emp_name=\(txt1.text!)&emp_add=\(txt2.text!)&emp_mob=\(txt3.text!)"
        let url = URL(string: tst)
        var request = URLRequest(url: url!)
        request.addValue(strbody, forHTTPHeaderField: "Content-Length")
        request.httpBody = strbody.data(using: String.Encoding.utf8)
        request.httpMethod = "POST"
        let session = URLSession.shared
        let datatask = session.dataTask(with: request, completionHandler: {(data,resp,err) in
        
            let resp = String(data: data!, encoding: String.Encoding.utf8)
            print(resp)
        })
        
        datatask.resume()
        
        
        
        
        
        
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

