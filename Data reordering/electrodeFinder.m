function [ electrodeToFind, electrode2ToFind, electrode3ToFind] = electrodeFinder( myArray,columnIndex,numberOfElectrodes )

electrodeToFind = 0;
rowIndexF = 1;

    if numberOfElectrodes == 1
        while (rowIndexF <=7)
            if myArray(rowIndexF,columnIndex) == 1
                electrodeToFind = rowIndexF;
                electrode2ToFind = 0;
                electrode3ToFind = 0;
                break
            end
            rowIndexF= rowIndexF +1;
        end
    end
    
    if numberOfElectrodes == 6
        while (rowIndexF <=7)
            if myArray(rowIndexF,columnIndex) == 0
                electrodeToFind = rowIndexF;
                electrode2ToFind = 0;
                electrode3ToFind = 0;
                break
            end
            rowIndexF= rowIndexF +1;
        end
    end
    
    if numberOfElectrodes == 2
        firstFound = 0;
        while (rowIndexF <=7)
            if ((myArray(rowIndexF,columnIndex) == 1 )&&(firstFound == 0))
                firstFound = 1;
                electrodeToFind = rowIndexF;
            end
            if ((myArray(rowIndexF,columnIndex) == 1)&& (firstFound == 1))                
                electrode2ToFind = rowIndexF;
                electrode3ToFind = 0;
            end
            rowIndexF= rowIndexF +1;
        end
    end
    
    if numberOfElectrodes == 5
        firstFound = 0;
        while (rowIndexF <=7)
            if ((myArray(rowIndexF,columnIndex) == 0 )&&(firstFound == 0))
                firstFound = 1;
                electrodeToFind = rowIndexF;
            end
            if ((myArray(rowIndexF,columnIndex) == 0)&& (firstFound == 1))                
                electrode2ToFind = rowIndexF;
                electrode3ToFind = 0;
            end
            rowIndexF= rowIndexF +1;
        end
    end
    
    if numberOfElectrodes == 3
        firstFound = 0;
        secondFound = 0;
        while (rowIndexF <=7)
            if ((myArray(rowIndexF,columnIndex) == 1 )&&(firstFound == 0)&&(secondFound == 0))
                firstFound = 1;
                electrodeToFind = rowIndexF;

            elseif ((myArray(rowIndexF,columnIndex) == 1)&& (firstFound == 1)&&(secondFound == 0))                
                secondFound = 1;
                electrode2ToFind = rowIndexF;

            elseif ((myArray(rowIndexF,columnIndex) == 1)&& (firstFound == 1)&&(secondFound == 1))                          
                electrode3ToFind = rowIndexF;
            end            
            rowIndexF= rowIndexF +1;
        end
    end
    
    if numberOfElectrodes == 4
        firstFound = 0;
        secondFound = 0;
        while (rowIndexF <=7)
            if ((myArray(rowIndexF,columnIndex) == 0 )&&(firstFound == 0)&&(secondFound == 0))
                firstFound = 1;
                electrodeToFind = rowIndexF;

            elseif ((myArray(rowIndexF,columnIndex) == 0)&& (firstFound == 1)&&(secondFound == 0))                
                secondFound = 1;
                electrode2ToFind = rowIndexF;

            elseif ((myArray(rowIndexF,columnIndex) == 0)&& (firstFound == 1)&&(secondFound == 1))                          
                electrode3ToFind = rowIndexF;
            end            
            rowIndexF= rowIndexF +1;
        end
    end
    
end

