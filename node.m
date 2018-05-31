classdef node<handle
    %Everything is a node. A node may have many properties
    %   this is base for our structure
    
    properties
         input_nodes
        output_nodes
        value
        id
        output
        inputs
        type
    end
    
    methods
        
        function  obj = init(obj,value)
            obj.value=value;
            
        end   
    end
    
end

