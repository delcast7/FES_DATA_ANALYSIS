function [ columnFound ] = newElectrodeFinder( myArray,numberOfElectrodes, newToFind1, newToFind2, newToFind3 )

    if numberOfElectrodes == 1
        rowIndex = newToFind1;
        columnIndexF = 1;
        while (columnIndexF <=7)
            if (myArray(rowIndex,columnIndexF) == 1)
                columnFound = columnIndexF;
                break
            end
            columnIndexF = columnIndexF +1;
        end
    end
    
    if numberOfElectrodes == 6
        rowIndex = newToFind1;
        columnIndexF = 8;
        while (columnIndexF <=14)
            if (myArray(rowIndex,columnIndexF) == 0)
                columnFound = columnIndexF;
                break
            end
            columnIndexF = columnIndexF +1;
        end
    end
    
    if numberOfElectrodes == 2
        rowIndex = newToFind1;
        rowIndex2 = newToFind2;
        columnIndexF = 15;
        while (columnIndexF <=35)
            if (myArray(rowIndex,columnIndexF) == 1)
                if (myArray(rowIndex2,columnIndexF) == 1)
                    columnFound = columnIndexF;
                    break
                end
            end
            columnIndexF = columnIndexF +1;
        end
    end
    
    if numberOfElectrodes == 5
        rowIndex = newToFind1;
        rowIndex2 = newToFind2;
        columnIndexF = 36;
        while (columnIndexF <=56)
            if (myArray(rowIndex,columnIndexF) == 0)
                if (myArray(rowIndex2,columnIndexF) == 0)
                    columnFound = columnIndexF;
                    break
                end
            end
            columnIndexF = columnIndexF +1;
        end
    end
    
    if numberOfElectrodes == 3
        rowIndex = newToFind1;
        rowIndex2 = newToFind2;
        rowIndex3 = newToFind3;
        columnIndexF = 57;
        while (columnIndexF <=91)
            if (myArray(rowIndex,columnIndexF) == 1)
                if (myArray(rowIndex2,columnIndexF) == 1)
                    if (myArray(rowIndex3,columnIndexF) == 1)
                        columnFound = columnIndexF;
                        break
                    end
                end
            end
            columnIndexF = columnIndexF +1;
        end
    end
    
    if numberOfElectrodes == 4
        rowIndex = newToFind1;
        rowIndex2 = newToFind2;
        rowIndex3 = newToFind3;
        columnIndexF = 92;
        while (columnIndexF <=126)
            if (myArray(rowIndex,columnIndexF) == 0)
                if (myArray(rowIndex2,columnIndexF) == 0)
                    if (myArray(rowIndex3,columnIndexF) == 0)
                        columnFound = columnIndexF;
                        break
                    end
                end
            end
            columnIndexF = columnIndexF +1;
        end
    end
    
end
