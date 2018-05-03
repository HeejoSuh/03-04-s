//----------------------------------------------------------------
//----------------------------------------------------------------
//
//  TowerOfHanoi.swift
//
//  This program plays the tower of hanoi using recurion
//
//
//  Created by Heejo Suh in Apr 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//
//	




class TowerOfHanoi {
	//plays the tower of hanoi using recursion
	//------------------------------
	init() {
		//Default constructor
	}

    //--------------------------
    func towerOfHanoi(diskNum: Int, startPoint: String, midPoint: String, endPoint: String) {
    	//ploay tower of hanoi
    
        if (diskNum == 1){
        	//only one disk left-> move it to destination
            print("Disk 1:  \(startPoint) --> \(endPoint)")
            return //end recursion
        }
        towerOfHanoi(diskNum: diskNum-1, startPoint: startPoint, midPoint: endPoint, endPoint: midPoint)
        print("Disk \(diskNum):  \(startPoint) --> \(endPoint)")
        towerOfHanoi(diskNum: diskNum-1, startPoint: midPoint, midPoint: startPoint, endPoint: endPoint)//start from mid point to endpoint
    }
 }

//Instantiate object
var numberOfDisks: Int = 3
let obj: TowerOfHanoi = TowerOfHanoi()
obj.towerOfHanoi(diskNum: numberOfDisks, startPoint: "A", midPoint: "B", endPoint: "C")


