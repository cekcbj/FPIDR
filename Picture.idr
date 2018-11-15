data Shape = Triangle Double Double
           | Rectangle Double Double
           | Circle Double

area : Shape -> Double
area (Triangle base height) = 0.5 * base * height
area (Rectangle length height) = length * height
area (Circle radius) = pi * radius * radius

data Picture = Primitive Shape
             | Combine Picture Picture
             | Rotate Double Picture
             | Translate Double Double Picture

rectangle : Picture

circle : Picture

testPicture : Picture
testPicture = Combine (Translate 5 5 rectangle)
               (Combine (Translate 35 5circle)
               (Translate 15 25 ?triangle))
