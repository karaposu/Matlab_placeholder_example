classdef operation_cell < node

    %This is where we create our operations
    %   inherits properties from node class.
    
    properties
    end
    
    methods
         function  obj = operation_cell(id,a,b,c)  %constructor     Typically, constructor methods accept input arguments to assign the data stored in properties and return an initialized object.
              
                       obj.id=id;
                       obj.input_nodes={a b};
                       obj.type=c;
                 
          
         end 
         
         
         function  result = compute(obj)%method for calculation
             if  obj.type==0
           result=  obj.inputs{1}+obj.inputs{2}
             
             elseif  obj.type==1
           result=  obj.inputs{1}*obj.inputs{2}
           
           
             elseif  obj.type==2
           result=  obj.inputs{1}/obj.inputs{2}
           
             elseif  obj.type==3
           result=  obj.inputs{1}*obj.inputs{2}
           
             elseif  obj.type==4
          
           result=  1./  (   1+exp(-obj.inputs{1})  )
           
%             elseif  obj.type==3
%            result=  1/ (1+e^-z)
             end

             
         end
        
    end
    
end

