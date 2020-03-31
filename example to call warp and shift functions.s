//If you want to use warp and shift function for 3D and 4D data
//Here the example, how to call the functions

//for 3D-data
image img3D :=getfrontimage()
//the warp function only warp along the 1st and 2nd dimension
number shear = 0.1   //  shear ratio along x axis, shear < 0 warp to right, shear > 0 warp to left
number strainy = 1  // warp along y axis: strainy < 1 compression, strain > 1 extesnion
image img1 := warp3D(img3D, shear, strainy)
showimage(img1)

//border option, 1 border area will be filled with origial edge data, 0 border area will be fill with 0
number border = 0
number dx, dy, dz //number of offset in 3 axis
image img2 := offset3d(img3D, border, dx, dy, dz)
showimage(img2)

// for 4D-data
image img4D :=getfrontimage()
//the warp function only warp along the 1st and 2nd dimension
number shear = 0.1   //  shear ratio along x axis, shear < 0 warp to right, shear > 0 warp to left
number strainy = 1  // warp along y axis: strainy < 1 compression, strain > 1 extesnion
image img1 := warp4D(img4D, shear, strainy)
showimage(img1)

//border option, 1 border area will be filled with origial edge data, 0 border area will be fill with 0
number border = 0
number dx, dy, dzx, dzy //number of offset in 4 axis
image img2 := offset4D(img4D, border, dx, dy, dzx, dzy)
showimage(img2)


