function [dataBegin,dataEnd] = sampleWindow( numberOfSamples )
%This fucntion will ask for the user for the window to be analized
s = num2str(numberOfSamples);
prompt = {'Start','End'};
dlg_title = 'Select window for analisis';
num_lines = 1;
defaultans = {'1',s};
anwerWindowData = inputdlg(prompt,dlg_title,num_lines,defaultans);
dataBegin = str2num(anwerWindowData{1,1});
dataEnd = str2num(anwerWindowData{2,1});
end

