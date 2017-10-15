function [ stdDev, meanValue ] = findStdDev( inputData,indexMax )
%This function will find the starting point each contraction using the
%standard deviation for 250 samples starting 0.5 seconds before the peak
startingPoint = indexMax - 300;
dataForStdDev = inputData (1, (startingPoint) : (indexMax -201));
stdDev = std(dataForStdDev);
meanValue = mean (dataForStdDev);
end

