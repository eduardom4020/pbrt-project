pbrt --outfile ./src/$1.exr; --cropwindow $2 $3 $4 $5 ./src/$1.pbrt
imgtool convert ./src/$1.{exr,png}