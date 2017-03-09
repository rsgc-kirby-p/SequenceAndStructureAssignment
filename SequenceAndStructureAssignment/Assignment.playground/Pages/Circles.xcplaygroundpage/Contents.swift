/*:
 [Previous](@previous) / [Next](@next)
 
 # Circles
 
 Here we use random number generation (0 through 25) to determine a circle's size.
 
 When you run the playground, it should look something like this (exact form will vary each time):
 
 ![example-circles](example-circles.png "Circles")
 
 ## Note
 
 The following two statements are required to make the playground run. Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 500, height: 500)

// make the boarder
//canvas.fillColor = Color(hue: 300, saturation: 100, brightness: 100, alpha: 100)
//canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 450, width: 500, height: 75)
//canvas.drawRectangle(bottomLeftX: 450, bottomLeftY: 0, width: 200, height: 500)
//canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 50)
//canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 50, height: 500)
//
//canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 50, height: 50)
//canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 450, width: 50, height: 50)
//canvas.drawRectangle(bottomLeftX: 450, bottomLeftY: 0, width: 50, height: 50)
//canvas.drawRectangle(bottomLeftX: 450, bottomLeftY: 450, width: 50, height: 50)



                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               



canvas.drawShapesWithFill = true
canvas.defaultBorderWidth = 5
canvas.drawShapesWithBorders = false


// This loop makes a 10 rows of columns
for x in stride(from: 25, through: 500, by: 50){
    // This loop makes a single column, bottom to top
    for y in stride(from: 25, through: 500, by: 50) {
        
        // Get some entropy (a random number, 0 through 25, but never 26)
        let expansion = random(from: 5, toButNotIncluding: 45)
        
        // Set the diameter of the circle | makes the change more noticable
        let diameter = 50 - expansion
        
        //Draw the circles
        canvas.borderColor = Color.blue
        if (diameter > 40){
            canvas.fillColor = Color(hue: 180, saturation: 100, brightness: 100, alpha: 100)
        }else if(diameter < 20){
            canvas.fillColor = Color(hue: 301, saturation: 100, brightness: 100, alpha: 100)
        }else if(diameter < 40){
            canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 47, alpha: 100)
        }else if(diameter < 40){
            canvas.fillColor = Color(hue: 0, saturation: 100, brightness: 47, alpha: 100)
        
    


//        canvas.fillColor = Color(hue: x * expansion, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawEllipse(centreX: x, centreY: y, width: diameter, height: diameter)
        

        
    }
}


//canvas.copyToClipboard()

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
