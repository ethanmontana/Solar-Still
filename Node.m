%% Node object
%   Represents discretized 2D space control volume
%   Nodes are updated each time step of the simulation

classdef Node < handle
    properties
        P           % 2x1 (x,y)' coordinates: m
        T           % temperature: C
        E           % stored energy: J
        Material    % material object
    end

    methods
        function obj = Node(P, T, E,Mat)
            if(nargin <4)
                error('Node must have P, T, E, Material defined');
            else
                obj.P = P;
                obj.T = T;
                obj.E = E;
                obj.Material = Mat;
            end
        end
    end
end
