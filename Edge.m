%% Edge object
%   Represents connection between two nodes

classdef Edge < handle
    properties
        nodes   % 2x1 vector of nodes connected by edge
    end

    methods
        function obj = Edge(nodes)
            if(nargin <1)
                error('Edge must have nodes to connect defined');
            else
                obj.nodes = nodes;
            end
        end
    end
end
