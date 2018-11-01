# README

I'll Keep this simple. 

*1
Create your two models. In this case we've got 'Vehicles' and 'Accessories'. Vehicles will have many Accessories. 

*2 
Create your join table. In this case it is AccessoriesVechile. Vehicles will have many Accessories through AccessoriesVehicle. 

*3 
In your Vehicles class, add the following: 

      `has_many :accessories_vehicles`<br>
      `has_many :accessories, :through => :accessories_vehicles`<br>
      `accepts_nested_attributes_for :accessories`
  
*4 
In your Accessories class, make sure it only has the following: 

      `belongs_to :vehicle`

*5
In your Vehicle _form.html.erb, add the available accessories in one line: 

      `<%= f.association :accessories,   as: :check_boxes %>`


That's all there is to it. You should now see one checkbox for each available accessory record in the Vehicle form. Checking one will create a AccessoriesVehicle record and unchecking it will destroy that record. 
