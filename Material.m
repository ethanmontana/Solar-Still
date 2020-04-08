%% Material object
%   Holds material properties of a particular node

classdef Material < handle
    properties
        k       % thermal conductivity: W/mK
        c_p     % specific heat capacity: J/kgK
        rho     % density: kg/m^3
        T_vap   % vaporization temperature: C
        E_vap   % enthalpy of vaporizaton: J

    end
    properties (Dependent)
        alpha   % thermal diffusivity:m^2/s
    end

    methods
        function obj = Material(k, c_p, rho,T_vap,E_vap)
            if(nargin >= 5)
                obj.E_vap = E_vap;
            else
                obj.E_vap = nan; % means no state change
            end
            if(nargin >=4)
                obj.T_vap = T_vap;
            else
                obj.T_vap = nan; % no state change
            end
            if(nargin <3)
                error('Material must have at k, c_p, rho defined');
            else
                obj.k = k;
                obj.c_p = c_p;
                obj.rho = rho;
            end
        end

        function alpha = get.alpha(obj);
            alpha = obj.k / (obj.rho*obj.c_p);
        end
    end
end
