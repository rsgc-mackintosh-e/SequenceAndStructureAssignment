/*:
 [Previous](@previous) / [Next](@next)
 
 # Design One
 
 Here is a starting point for your assignment that you can build upon.
 
 It will produce this output:
 
 ![example_grid](example_grid.png "Grid example")
 
 From this basic form, make the modifications necessary to produce your intended design.
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

//// Generate a grid
canvas.drawShapesWithFill = false
canvas.defaultBorderWidth = 1
//
//
//// This loop makes a 10 rows of columns
//for x in stride(from: 25, through: 475, by: 50){
//    
//    // This loop makes a single column, bottom to top
//    for y in stride(from: 25, through: 475, by: 50) {
//        
//        // Draw the shapes
//        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
//        canvas.drawRectangle(centreX: x, centreY: y, width: 50, height: 50)
//    }
//}

//canvas.fillColor
//canvas.drawRectangle(bottomLeftX: 50, bottomLeftY: 50, width: 50, height: 50)
//canvas.drawRectangle(bottomLeftX: 100, bottomLeftY: 100, width: 50, height: 50)
//


//canvas.borderColor = Color.red
//
//for x in stride(from: 0, through: 500, by: 20){
//    canvas.drawEllipse(centreX: 250, centreY: 250, width: x, height: x)
//}

canvas.borderColor = Color.red

for x in stride(from: 0, through: 500, by: 20){
    canvas.drawEllipse(centreX: 0, centreY: 0, width: x, height: x)
}


canvas.borderColor = Color.blue

for x in stride(from: 0, through: 500, by: 20){
    canvas.drawEllipse(centreX: 500, centreY: 0, width: x, height: x)
}

canvas.borderColor = Color.green


for x in stride(from: 0, through: 500, by: 20){
    canvas.drawEllipse(centreX: 500, centreY: 500, width: x, height: x)
}

canvas.borderColor = Color.purple


for x in stride(from: 0, through: 500, by: 20){
    canvas.drawEllipse(centreX: 0, centreY: 500, width: x, height: x)
}

//for x in stride(from: 250, through: 0, by: -25){
//canvas.drawLine(fromX: 250, fromY: 250, toX: x, toY: x)
//}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
