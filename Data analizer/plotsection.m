function plotsection( inputData, dataBegin, dataEnd )
%This function will plot the section selected fro the user
indexPlotSection = 1;
dataForPlotSection = [];
change = 0;

while (indexPlotSection < (dataEnd- dataBegin + 1))
    dataForPlotSection(1,indexPlotSection) = dataBegin + change;
    dataForPlotSection(2,indexPlotSection) = inputData(1, (dataBegin + change));
    indexPlotSection = indexPlotSection + 1;
    change = change +1;
end
plot(dataForPlotSection(1,:),dataForPlotSection(2,:));
end

