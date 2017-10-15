function [indexMax, maxValue] = findMax(inputData, inputIndex, window, threshold,sizeOfData)
tempMax = -100;
tempIndex = inputIndex;
maxValue = 0;
checkNext = false;
foundOne = false;

    while (foundOne == false)
        change = 1;
        if(tempIndex > (sizeOfData - window))
            indexMax = sizeOfData+1;
            maxValue = -50;
            break
        else
        while (inputData(1,tempIndex)> tempMax)&&(checkNext == false)...
              &&(inputData(1,tempIndex)> threshold)
            
            %check neighbohrs
            while (change <= window)
            %Check left and right side
                if inputData(1,tempIndex-change)>= inputData(1,tempIndex)...
                   ||inputData(1,tempIndex+change)> inputData(1,tempIndex)     
                        checkNext = true;
                        break
                end                
            change = change + 1;
            end
            %Don
            if checkNext == true
                break
            end
            %save found max value
            tempMax = inputData(1,tempIndex);
            maxValue = tempMax;
            indexMax = tempIndex;
            foundOne = true;
        end
        %Check next
        if (foundOne == false)
            tempIndex = tempIndex +1;
            checkNext = false;
        else 
            break
        end
        end 
    end
end



            