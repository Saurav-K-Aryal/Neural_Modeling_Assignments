%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% File: sigmoid.m           %%%%%%%%%%%%%%%%%%%%%%%%
%%%%%% Author: Saurav Keshari Aryal  %%%%%%%%%%%%%%%%%%%
%%%%%% Helper Function file for a simple sigmoid cost%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [result] = sigmoid(x)
  result = 1.0 ./ (1.0 + exp(-x));
end