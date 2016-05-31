
import UIKit
import XCPlayground

let container = UIView(frame: CGRectMake(0,0,600,600))

container.backgroundColor = UIColor(red: 0.97,green: 0.97,blue: 0.97,alpha: 1.0)

var balls: [Ball] = Array()
for i in 0...5 {
    let ball = Ball(frame: CGRectMake(10,10 + 60 * CGFloat(i),50,50))
    ball.backgroundColor = UIColor.redColor()
    container.addSubview(ball)
    balls.append(ball)
    
    ball.moveX(200).makeWidth(100).duration(2)
        .delay(Double(i) * 0.1).repeatCount(1)
        .autoreverses()
        .animate()
    
    ball.makeWidth(200).animate()
}


XCPlaygroundPage.currentPage.liveView = container

////basic curve
//
//100.0.animateTo(300, duration: 1, delay: 0.0, type: .SwiftOut, autoreverses: false, repeatCount: 0, render: { (d) in
//    let y = d
//    }, completion: nil)
//
//
//100.0.pushedTo(300, render: { (d) in
//    let y = d
//    }, completion: nil)
//
//
//100.0.snapTo(150, damping: 0.4, render: { (d) in
//    let t = d
//    }, completion: nil)
//
//100.0.attachmentTo(200, damping: 0.3, frequency: 1, render: { (d) in
//    let y = d
//    }, completion: nil)
//
////100.0.fallTo(200, magnitude: 0.6, render: { (d) in
////    let y = d
////    }, completion: nil)