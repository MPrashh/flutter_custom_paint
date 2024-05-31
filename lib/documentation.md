# CustomPainter

important properties of the CustomPaint Widget are:

1. painter: The painter that paints before the child.
2. foregroundPainter: The painter that paints after the child.
3. child: By default, the canvas will take the size of the child, if it is defined.
4. size: If the child is not defined, then the size of the canvas should be specified.

class ShapePainter extends CustomPainter {
@override
void paint(Canvas canvas, Size size) {
// implement paint
}

@override
bool shouldRepaint(CustomPainter oldDelegate) {
// implement shouldRepaint
return null;
}
}

As the ShapePainter class extends from CustomPainter, which is an abstract class, two methods must be implemented within it:

1. paint: This method is called whenever the object needs to be repainted.

2. shouldRepaint: This method is called when a new instance of the class is provided.

The paint method has two parameters:

1. canvas
2. size

If we have a child specified inside the CustomPaint widget, then the canvas will have the same size as that child. In our case, the canvas area will take the size of the entire Container.

(0,0)______________________(size.width, 0)
|                           |
|                           |
|                           |
(0,size.height/2)           |(size.width, size.height/2)
|                           |
|                           |
|                           |
(0, size.height)__________(size.width,size.height)              




paint variable storing an instance of the Paint class, which is like a paintbrush and helps in specifying its color, strokeWidth, strokeCap, etc.

Then, there are two Offset variables that specify the starting and ending position coordinates.

drawLine method is called on the canvas for drawing a line between the two Offset positions, and the paint variable is also passed to this method.

You can return false in the shouldRepaint method because there is no need to redraw the line.