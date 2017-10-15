function [ halfTimeRelaxIndex ] = findHalfTimeRelax( inputData, indexMax, maxValue, meanValue )
%This fucntion will calculate the half time relaxation
change = 1;
found = false;
    while found == false
        if inputData(1,(indexMax+change))<= ((maxValue-meanValue)/2 + meanValue)
            halfTimeRelaxIndex = indexMax+change;
            found = true;
            break
        end
        change = change + 1;
    end
end

