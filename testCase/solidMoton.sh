#!/bin/sh

 
cd solidMotionVisualization
 
for i in `seq 0 0.0005 .1465`
do
	cd solidMotionVisualization;
	mkdir $i
	cd $i
	mkdir polyMesh
	cd ..
	cp ../cavity/$i/currentcloudofpoints $i/polyMesh/points

	sed -i 's/currentcloudofpoints/points/g' $i/polyMesh/points
    sed -i 's/2409/2410/g' $i/polyMesh/points
    sed -i '21i (0 0 0)' $i/polyMesh/points
	
	cd ..;
done
