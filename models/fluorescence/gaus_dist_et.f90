function gaus_dist_et(current_model,current_data) result(fluor)
	use h_struct
	use h_fluor_models, only : dist_et,gaus_decay
	use h_utils, only : gaus_dist
	use h_vars
	implicit none
		
	type(model_struct), pointer :: current_model
	type (data_struct),pointer :: current_data	
	real,dimension(current_data%len) :: fluor 

! Begin
	fluor=dist_et(current_model,current_data,gaus_decay,gaus_dist)

return
end function
