//
//  Queue.swift
//  DyeHygh
//
//  Created by Matt Jasaitis on 4/14/17.
//  Copyright © 2017 Jasaitis. All rights reserved.
//

import Foundation

class Queue {
    
    var players : [Player] = []
    var front: Int = -1
    var rear: Int = -1
    
    func isEmpty() -> Bool {
        return (front == -1 && rear == -1)
    }
    
    func enqueue(player: Player) {
        if (isEmpty()) {
            rear = 0
        }
        else {
            rear = rear+1
        }
        players[rear] = player
    }
    
    func Dequeue() {
        if (isEmpty()) {
            return
        }
        else if(front == rear) {
            rear = -1
            front = -1
            
        }
        else {
            front = front + 1
        }
    }
    
    
    
}
