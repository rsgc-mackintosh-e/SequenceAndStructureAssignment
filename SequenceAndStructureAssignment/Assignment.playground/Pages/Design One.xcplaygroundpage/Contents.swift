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
canvas.drawShapesWithFill = true
canvas.defaultBorderWidth = 1

canvas.fillColor = Color.black
canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)


for x in stride(from: 0, through: 500, by: 500){
    for y in stride(from: 0, through: 500, by: 20){
        canvas.lineColor = Color(hue: y, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawLine(fromX: 250, fromY: 250, toX: x, toY: y)
    }
}

for x in stride(from: 0, through: 500, by: 500){
    for y in stride(from: 0, through: 500, by: 20){
        canvas.lineColor = Color(hue: y, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawLine(fromX: 250, fromY: 250, toX: y, toY: x)
    }
}


canvas.fillColor = Color.black

var c = random(from: 0, toButNotIncluding: 361)

canvas.borderColor = Color.init(hue: c, saturation: 100, brightness: 100, alpha: 100)
for x in stride(from: 500, through: 0, by: -10){
    canvas.drawEllipse(centreX: 0, centreY: 0, width: x, height: x)
}

var sc = (c + 180) % 360
canvas.borderColor = Color.init(hue: sc, saturation: 100, brightness: 100, alpha: 100)
for x in stride(from: 500, through: 0, by: -10){
    canvas.drawEllipse(centreX: 500, centreY: 0, width: x, height: x)
}

canvas.borderColor = Color.init(hue: c, saturation: 100, brightness: 100, alpha: 100)

for x in stride(from: 500, through: 0, by: -10){
    canvas.drawEllipse(centreX: 500, centreY: 500, width: x, height: x)
}

canvas.borderColor = Color.init(hue: sc, saturation: 100, brightness: 100, alpha: 100)

for x in stride(from: 500, through: 0, by: -10){
    canvas.drawEllipse(centreX: 0, centreY: 500, width: x, height: x)
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
