%Variables
window = 500; 
indexOutput = 0;
indexOmmitedData = 1;
outputData = [];
ommitedData = [];
yes = 'Y';
ommit = 'O';
no = 'N';
endOfProgram = false;
endAll = 'E';

% %Titles of output data
% outputData(indexOutput,1)= {indexMax};
% outputData(indexOutput,2)= {maxValue};
% outputData(indexOutput,3)= {timeToPeak};
% outputData(indexOutput,4)= {halfRelaxTime};

%Plot all data
plot(data);
uiwait;

%Calculate size of data
sizeDataInput = size(data);
numberOfSamples = sizeDataInput(1,2);
[dataBegin,dataEnd] = sampleWindow( numberOfSamples );

if (dataBegin == 1)&&(dataEnd == numberOfSamples)
    index = window + 1;
    plot(data);
    movegui('west') 
    %Ask for threshold
    threshold = inputdlg('Enter threshold:');
    waitfor(threshold);
    thresholdValue = str2double(threshold{:}); 

    while (index < (numberOfSamples-window))&&(endOfProgram == false)

    [indexMax,maxValue] = findMax(data,index,window,thresholdValue,numberOfSamples);
    
        if indexMax == (numberOfSamples+1)
            endOfProgram = true;
            endOfData = msgbox('This is the end of data');
            break
        end
        
    [stdDev, meanValue] = findStdDev( data,indexMax);
    [indexStartTwitch] = findStartTwitch( data, indexMax, meanValue, stdDev);

    %Plot twitch
    plotTwitch(indexMax,window,data, indexStartTwitch);

    %Save data found
    saveData = inputdlg('Is this a Twitch? Y/N/O/E');
    waitfor(saveData);
   
    while (strcmp(saveData,yes)||strcmp(saveData,no)||strcmp(saveData,endAll)...
          ||strcmp(saveData,ommit))==false
        invalidCommand = msgbox('Please enter a valid command:');
        waitfor(invalidCommand);
        saveData = inputdlg('Is this a Twitch? Y/N/O/E');
        waitfor(saveData);
    end
    
    if ~strcmp(saveData,no)
    %Calculate time to peak
    timeToPeak = indexMax - indexStartTwitch;

    %Claculate half relaxation time
    [ halfTimeRelaxIndex ] = findHalfTimeRelax( data, indexMax, maxValue, meanValue);
    halfRelaxTime = halfTimeRelaxIndex - indexMax;
    end
            if strcmp(saveData,yes)
                indexOutput = indexOutput + 1; 
                outputData(indexOutput,1)= indexMax;
                outputData(indexOutput,2)= maxValue - meanValue;
                outputData(indexOutput,3)= timeToPeak;
                outputData(indexOutput,4)= halfRelaxTime;
%                 saved = msgbox('Data was saved');
%                 waitfor(saved);   
            elseif strcmp(saveData,ommit)
                dataOmmited = warndlg('Data was ommited');
                waitfor (dataOmmited);
            elseif strcmp(saveData,no)
                notsaved = errordlg('Nothing was saved');
                waitfor(notsaved);
            elseif strcmp(saveData,endAll)
                endOfProgram = true;
                endOfAllProgram = msgbox('Good Bye');
                waitfor(endOfAllProgram);
                break                
            end
        %   Check next one
        index = indexMax + 1;
    end
   

else
    plotsection( data, dataBegin, dataEnd );
    %Ask for threshold
    threshold = inputdlg('Enter threshold:');
    waitfor(threshold);
    thresholdValue = str2double(threshold{:});
    index = window + dataBegin;
    while (index < (dataEnd-window))&&(endOfProgram == false)

    [indexMax,maxValue] = findMax(data,index,window,thresholdValue,dataEnd);
    
    if indexMax == (dataEnd+1)
        endOfProgram = true;
        endOfData = msgbox('This is the end of data');
        break
    end
    [stdDev, meanValue] = findStdDev( data,indexMax);
    [indexStartTwitch] = findStartTwitch( data, indexMax, meanValue, stdDev);
    %Calculate time to peak
    timeToPeak = indexMax - indexStartTwitch;

    %Plot twitch
    plotTwitch(indexMax,window,data, indexStartTwitch);
    
    %Save data found
    saveData = inputdlg('Is this a Twitch? Y/N/O/E');
    waitfor(saveData);
    

    while (strcmp(saveData,yes)||strcmp(saveData,no)||strcmp(saveData,endAll)...
          ||strcmp(saveData,ommit))==false
        invalidCommand = msgbox('Please enter a valid command:');
        waitfor(invalidCommand);
        saveData = inputdlg('Is this a Twitch? Y/N/O/E');
        waitfor(saveData);
    end
            
    if ~strcmp(saveData,no)
    %Calculate time to peak
    timeToPeak = indexMax - indexStartTwitch;

    %Claculate half relaxation time
    [ halfTimeRelaxIndex ] = findHalfTimeRelax( data, indexMax, maxValue, meanValue);
    halfRelaxTime = halfTimeRelaxIndex - indexMax;
    end
    
            if strcmp(saveData,yes)
                indexOutput = indexOutput + 1; 
                outputData(indexOutput,1)= indexMax;
                outputData(indexOutput,2)= maxValue - meanValue;
                outputData(indexOutput,3)= timeToPeak;
                outputData(indexOutput,4)= halfRelaxTime;
%                 saved = msgbox('Data was saved');
%                 waitfor(saved);   
            elseif strcmp(saveData,ommit)
                dataOmmited = warndlg('Data was ommited');
                waitfor (dataOmmited);
            elseif strcmp(saveData,no)
                notsaved = errordlg('Nothing was saved');
                waitfor(notsaved);
            elseif strcmp(saveData,endAll)
                endOfProgram = true;
                break                
            end

        %   Check next one
        index = indexMax + 1;
    end
end    

