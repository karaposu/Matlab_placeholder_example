classdef Sessions
    %SESSÝON Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
    end
    
    methods
        
         function  result = run(obj,operation,feed_dict)  % 
            
            
            nodes_postorder= pot_nested(operation)
           
            
            %how_many_obj( ccc )
            for k=1:length(nodes_postorder)
               element=nodes_postorder{k};
                 
                  if  isa(element,'placeholder')
                         element.output=feed_dict
                          result= element.output
                  elseif  isa(element,'variable')
                         element.output=element.value
                          result= element.output
                   elseif  isa(element,'constant')
                         element.output=element.value
                          result= element.output
                  else %eger operasyon ise
                     
                     
                        for j=1:length(element.input_nodes)%operasyonun postorder sýralamasýndaki 1. nodedan baþla
                            zed=element.input_nodes{j}; %o nodu gecici degiskene ata
                            element.inputs{j}  =  zed.output  %o giris nodunun cýkýsýný post order sýralamasýndaki bir sonraki node yap
                            
                        end
                        
                       %element.output= element.compute(  element.inputs)
                        element.output= element.compute()
                         result= element.output
                   end 

            end                 
               
         end             
               
            
             
         
            
            
            
            
           
        
    end
    
end

