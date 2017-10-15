function [ indexStartTwitch ] = findStartTwitch( inputData, indexMax, meanValue, stdDev)
%This fuction will find the starting poing of each twitch
indexStartTwitch = indexMax - 200;
referenceData = meanValue + (4*stdDev);
found = false;
    while (found == false)
        if (inputData(1,indexStartTwitch) >= referenceData )
           found = true; 
           break
        end
        indexStartTwitch = indexStartTwitch + 1;
        
    end
end

