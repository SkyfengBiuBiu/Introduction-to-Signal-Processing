function [P] = population(x)

d=x-1913.25;
P=197273000./(1+exp(-0.03134*d));