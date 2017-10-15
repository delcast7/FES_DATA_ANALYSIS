function [ newToFind ] = electrodeSwitch( newOne,newTwo, newThree, newFour, newFive, newSix, newSeven, electrodeFound)

if electrodeFound == 1;
newToFind = newOne;
end
if electrodeFound == 2;
newToFind = newTwo;
end
if electrodeFound == 3;
newToFind = newThree;
end
if electrodeFound == 4;
newToFind = newFour;
end
if electrodeFound == 5;
newToFind = newFive;
end
if electrodeFound == 6;
newToFind = newSix;
end
if electrodeFound == 7;
newToFind = newSeven;
end

end

