import graphics
from graphics import circle, rectangle
from graphics.threegraphics import cuboid,sphere
from graphics.circle import *

rad1 = float(input("Enter the radius of the circle: "))
print("Area of circle is:", circle.area_circle(rad1))
print("Perimeter of circle is:",
circle.perimeter_circle(rad1))

len1 = float(input("Enter the length of the rectangle: "))
breadth1 = float(input("Enter the breadth of the rectangle: "))
print("Area of rectangle is:", rectangle.area_rec(len1,
breadth1))
print("Perimeter of rectangle is:",
rectangle.perimeter_rec(len1, breadth1))

len2 = float(input("Enter the length of the cuboid: "))
breadth2 = float(input("Enter the breadth of the cuboid: "))
height = float(input("Enter the height of the cuboid: "))
print("Area of cuboid is:", cuboid.area_cuboid(len2, breadth2,
height))
print("Perimeter of cuboid is:", cuboid.perimeter_cuboid(len2,
breadth2, height))

rad2 = float(input("Enter the radius of the sphere: "))
print("Area of sphere is:",sphere.area_sphere(rad2))
print("Perimeter of sphere is:",
sphere.perimeter_sphere(rad2))