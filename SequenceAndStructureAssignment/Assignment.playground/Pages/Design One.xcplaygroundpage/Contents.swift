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

// Generate a grid
canvas.drawShapesWithFill = true
canvas.defaultBorderWidth = 5
canvas.defaultLineWidth = 3

canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)

//Create the lines that are in the middle
for x in stride(from: 0, through: 500, by: 500){
    for y in stride(from: 0, through: 500, by: 50){
        canvas.lineColor = Color(hue: y, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawLine(fromX: 250, fromY: 250, toX: x, toY: y)
    }
}

for x in stride(from: 0, through: 500, by: 500){
    for y in stride(from: 0, through: 500, by: 30){
        canvas.lineColor = Color(hue: y, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawLine(fromX: 250, fromY: 250, toX: y, toY: x)
    }
}

//Set the background color of the circles
canvas.fillColor = Color.black

//Generate a random number from 0 to 360
var c = random(from: 0, toButNotIncluding: 361)

//Use c as the value for hue to chance the color
canvas.borderColor = Color.init(hue: c, saturation: 100, brightness: 100, alpha: 100)

//draw the bottom left set of circles
for x in stride(from: 500, through: 0, by: -20){
    canvas.drawEllipse(centreX: 0, centreY: 0, width: x, height: x)
}

//Get the remainder of dividing it by 360 to get the complimentary color
var sc = (c + 180) % 360
canvas.borderColor = Color.init(hue: sc, saturation: 100, brightness: 100, alpha: 100)

//Draw the bottom right circles (using loops)
for x in stride(from: 500, through: 0, by: -20){
    canvas.drawEllipse(centreX: 500, centreY: 0, width: x, height: x)
}

canvas.borderColor = Color.init(hue: c, saturation: 100, brightness: 100, alpha: 100)

//Draw the top right set of circles
for x in stride(from: 500, through: 0, by: -20){
    canvas.drawEllipse(centreX: 500, centreY: 500, width: x, height: x)
}

canvas.borderColor = Color.init(hue: sc, saturation: 100, brightness: 100, alpha: 100)

//Draw the top left set of circles
for x in stride(from: 500, through: 0, by: -20){
    canvas.drawEllipse(centreX: 0, centreY: 500, width: x, height: x)
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
