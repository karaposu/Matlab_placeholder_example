classdef Sigmoid<operation_cell
    %SÝGMOÝD Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        z
    end
    
    methods
        
        
          function  obj = Sigmoid(obj,z)
     
            obj.z=z
             
           end
        
          function  result = compute(obj)
     
          result= 1/ (1+e^-obj.z);
             
         end
        
        
        
    end
    
end

