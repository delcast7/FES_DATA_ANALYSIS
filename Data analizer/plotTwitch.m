function plotTwitch(indexMax,window,inputData,indexStartTwitch)
indexPlots = 1;
neighboor = 0;
dataForPlots = [];

while neighboor < ((window*2)+1)
    dataForPlots(1,indexPlots) = inputData(1,indexMax - window + neighboor);
    dataForPlots(2,indexPlots) = indexMax - window + neighboor;
    neighboor = neighboor + 1;
    indexPlots = indexPlots + 1;
end
plot(dataForPlots(2,:),dataForPlots(1,:), indexStartTwitch, inputData(1,indexStartTwitch), '*')
movegui('west'); 
end