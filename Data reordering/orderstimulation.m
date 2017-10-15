newOne = 6;
newTwo = 7;
newThree = 1;
newFour = 2;
newFive = 4;
newSix = 5;
newSeven= 3;
outputOrder = 1:128;
rowIndex = 1;
columnIndex = 1;
counterOne= 1;
counterSix= 8;
counterTwo = 15;
counterFive = 36;
counterThree = 57;
counterFour = 92;
myArray=[
0	1	0	0	0	0	0	1	1	1	0	1	1	1	0	1	0	1	0	0	0	0	0	1	1	0	0	0	0	0	0	1	0	1	0	1	1	1	0	0	0	0	1	0	1	1	1	1	1	1	1	1	1	0	1	1	0	1	0	0	0	0	1	0	0	1	0	1	0	0	0	1	1	0	0	0	0	1	0	1	0	1	0	1	1	0	0	1	1	1	1	0	1	1	1	0	1	0	0	0	0	1	1	0	1	1	0	0	1	1	1	0	0	1	1	1	1	1	0	0	0	1	1	0	1	1	1	1;
0	0	0	0	0	1	0	1	1	1	1	0	1	1	0	0	1	0	0	0	0	1	0	0	0	0	0	0	1	1	0	0	1	1	0	1	1	0	1	0	1	1	1	1	0	1	0	1	1	1	0	1	1	1	0	1	0	0	1	0	1	1	0	1	1	0	0	0	1	0	0	0	0	1	0	0	0	0	0	1	1	1	1	0	0	0	1	1	0	1	1	0	1	1	1	0	1	1	0	1	0	0	1	1	0	1	1	1	1	0	1	1	1	0	0	1	0	0	1	0	1	0	0	1	0	1	1	1;
0	0	1	0	0	0	0	1	0	1	1	1	1	1	0	1	0	0	1	0	0	1	0	0	0	0	1	1	0	0	0	0	0	0	1	1	0	1	1	1	1	0	0	1	0	0	1	1	1	0	1	1	1	1	1	1	1	0	0	1	1	1	0	0	0	0	0	0	1	1	0	0	0	0	1	0	1	1	0	0	1	0	0	1	1	1	0	1	1	0	0	1	0	0	1	0	0	0	1	0	1	0	1	1	1	1	1	1	1	1	0	0	0	0	1	0	1	0	1	1	1	0	1	1	1	0	1	1;
1	0	0	0	0	0	0	1	1	0	1	1	1	1	0	0	1	1	1	1	0	0	1	0	0	0	0	0	0	0	1	0	0	0	0	1	1	1	1	1	0	1	0	1	1	1	1	0	1	1	1	1	0	1	0	0	1	1	0	0	0	1	1	0	0	1	1	0	0	1	0	0	0	1	0	1	0	0	1	0	0	1	1	1	0	1	1	0	0	0	0	0	0	0	0	1	1	1	1	1	1	1	0	1	1	0	1	0	1	1	1	1	0	1	1	0	0	1	0	1	0	0	0	1	0	1	1	1;
0	0	0	1	0	0	0	1	1	1	1	1	0	1	0	0	0	0	0	1	1	0	0	0	1	1	1	0	1	0	0	0	0	0	0	1	0	1	1	1	1	1	1	0	1	1	1	0	0	1	0	0	1	1	1	1	1	1	1	1	1	0	0	1	0	0	0	1	0	0	1	1	0	1	0	1	1	0	1	0	0	0	0	0	0	0	0	0	1	0	1	1	1	0	1	1	0	0	1	1	0	0	0	0	1	0	1	1	0	0	1	1	1	1	0	1	1	1	0	1	1	1	0	0	1	0	1	1;
0	0	0	0	0	0	1	1	1	1	1	1	1	0	1	0	0	0	0	0	1	0	0	0	0	0	0	0	0	1	1	1	0	0	1	0	1	1	0	1	1	1	1	1	1	0	0	1	0	1	1	1	1	1	1	0	0	0	1	0	0	0	0	0	1	1	1	1	1	0	1	0	1	0	1	1	1	1	0	1	0	0	0	0	0	1	1	0	0	0	0	1	1	1	0	1	0	1	1	1	1	1	0	1	0	1	0	1	0	1	0	0	1	1	0	0	1	0	1	0	0	1	1	0	0	1	1	1;
0	0	0	0	1	0	0	0	1	1	1	1	1	1	1	0	0	0	0	0	0	0	1	1	0	1	0	1	0	0	0	0	1	0	0	0	1	0	1	1	1	1	1	1	1	1	1	1	1	0	1	0	0	0	1	1	0	0	0	1	0	0	1	1	1	0	1	0	0	1	1	1	1	0	1	0	0	0	1	0	1	0	1	0	1	0	0	0	0	1	0	1	0	1	0	1	1	1	0	0	1	1	1	0	0	0	0	0	0	0	0	1	1	0	1	1	0	1	1	1	1	1	1	1	1	0	1	1
];

%1 electrode
while (columnIndex <=7)
    [electrodeToFind, electrode2ToFind, electrode3ToFind] = electrodeFinder(myArray,columnIndex,1);
    newToFind = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrodeToFind(1,1));
    columnFound = newElectrodeFinder( myArray,1, newToFind,0,0 );
    outputOrder(1,columnFound) = counterOne;
    counterOne = counterOne +1;
    columnIndex= columnIndex +1;
end

%6 electrode

while (columnIndex <=14)
    [electrodeToFind, electrode2ToFind, electrode3ToFind] = electrodeFinder(myArray,columnIndex,6);
    newToFind = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrodeToFind);
    columnFound = newElectrodeFinder( myArray,6, newToFind,0,0 );
    outputOrder(1,columnFound) = counterSix;
    counterSix = counterSix +1;
    columnIndex= columnIndex +1;
end

%2 electrode

while (columnIndex <=35)
    [electrodeToFind, electrode2ToFind, electrode3ToFind] = electrodeFinder(myArray,columnIndex,2);
    newToFind1 = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrodeToFind);
    newToFind2 = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrode2ToFind);
    columnFound = newElectrodeFinder( myArray,2, newToFind1, newToFind2, 0);
    outputOrder(1,columnFound) = counterTwo;
    counterTwo = counterTwo +1;
    columnIndex= columnIndex +1;
end


%5 electrode
while (columnIndex <=56)
    [electrodeToFind, electrode2ToFind, electrode3ToFind] = electrodeFinder(myArray,columnIndex,5);
    newToFind1 = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrodeToFind);
    newToFind2 = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrode2ToFind);
    columnFound = newElectrodeFinder( myArray,5, newToFind1, newToFind2, 0);
    outputOrder(1,columnFound) = counterFive;
    counterFive = counterFive +1;
    columnIndex= columnIndex +1;
end

%3 electrode

while (columnIndex <=91)
    [electrodeToFind, electrode2ToFind, electrode3ToFind] = electrodeFinder(myArray,columnIndex,3);
    newToFind1 = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrodeToFind);
    newToFind2 = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrode2ToFind);
    newToFind3 = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrode3ToFind);
    columnFound = newElectrodeFinder( myArray,3, newToFind1, newToFind2, newToFind3);
    outputOrder(1,columnFound) = counterThree;
    counterThree = counterThree +1;
    columnIndex= columnIndex +1;
end

%4 electrode
while (columnIndex <=126)
    [electrodeToFind, electrode2ToFind, electrode3ToFind] = electrodeFinder(myArray,columnIndex,4);
    newToFind1 = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrodeToFind);
    newToFind2 = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrode2ToFind);
    newToFind3 = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrode3ToFind);
    columnFound = newElectrodeFinder( myArray,4, newToFind1, newToFind2, newToFind3);
    outputOrder(1,columnFound) = counterFour;
    counterFour = counterFour +1;
    columnIndex= columnIndex +1;
end
%7 electrode
