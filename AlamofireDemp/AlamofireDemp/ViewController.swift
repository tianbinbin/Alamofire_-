//
//  ViewController.swift
//  AlamofireDemp
//
//  Created by 田彬彬 on 2017/6/4.
//  Copyright © 2017年 田彬彬. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
       // 网络测试。httpbin.org
        /*  get 请求
        Alamofire.request("http://httpbin.org/get", method: .get, parameters: nil).responseJSON { (response) in
            
            guard let result =  response.result.value else{
                
                print(response.result.error as Any)
                return
            }
            
            print(result)
        }
       */
        
        
        
        let parameters = ["name":"tianbin"]
        
        // post 请求
        /*
        Alamofire.request("http://httpbin.org/post", method: .post, parameters: parameters).responseJSON { (response) in
            
            guard let result =  response.result.value else{
                
                print(response.result.error as Any)
                return
            }
            
            print(result)
        }
       */
        
        NetWorkTools.RequestData(type: .GET, URLString: "http://httpbin.org/get", parameters: nil, SuccessCallBack: { (reslut) in
            
              print(reslut)
            
        }) { (false) in
            
            print(false)
        }

    }
}

