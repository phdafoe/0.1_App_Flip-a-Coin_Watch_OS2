//
//  InterfaceController.swift
//  App_Flip a Coin_Watch_OS2 WatchKit Extension
//
//  Created by User on 17/1/16.
//  Copyright © 2016 iCologic. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    
    //MARK: - VARIABLES LOCALES GLOBALES
    
    var coinValue = 0
    var coinState = ""
    
    
    
    //MARK: - IBOUTLET
    
    @IBOutlet var myLblCoin: WKInterfaceLabel!
    
    
    
    
    //MARK: - IBACTION
    
    
    @IBAction func btnFlipACTION() {
        
        flipTheCoin()
        print(coinValue)
        
        
    }
    
    //MARK: - UTILS / AUXILIARES
    
    func flipTheCoin(){
        
        coinValue = Int(arc4random_uniform(2))
        setCoinState()
        
        
    }
    
    
    func setCoinState(){
        
        if coinValue == 0{
            
            coinState = "Heads"
            
        }else if coinValue == 1{
            
            coinState = "Tails"
        }
        
        printCoinState()
        
    }
    
    func printCoinState(){
        
        myLblCoin.setText(coinState)
    }
    
    
    
    
    
    
    

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
