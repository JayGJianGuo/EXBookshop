module ExordersHelper
   def render_exorder_chose_state(exorder)
     if exorder.is_chose?
       "已选择交换方式"
     else
       "未选择交换方式"
     end
   end
end
