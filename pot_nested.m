function nodes_postorder = pot_nested(op)
%pot_nested = @recurse;

nodes_postorder={};

   function  recurse(ccc)
           if  isa(ccc,'operation_cell')

              recurse( ccc.input_nodes{1,1})
              
              recurse( ccc.input_nodes{1,2})
            end
                
          % nodes_postorder= {  nodes_postorder , ccc };
      
           nodes_postorder{end+1} = ccc;
   end

 recurse(op) 

end