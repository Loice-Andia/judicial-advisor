<div class="page-header">
					<div class="page-header-content">
						<div class="page-title">
							<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Home</span> - 
							<?php if ($this->session->userdata('role_id') == '1') {
                    						echo "Judge";
                							} else if ($this->session->userdata('role_id') == '2') {
                    						echo "Court Clerk";
                							} else {
                							echo "Admin";
                							} ?> Dashboard - Edit User</h4>
						</div>

						<div class="heading-elements">
							<div class="heading-btn-group">
								<a href="#" class="btn btn-link btn-float has-text"><i class="icon-bars-alt text-primary"></i><span>Statistics</span></a>
								<a href="#" class="btn btn-link btn-float has-text"><i class="icon-calculator text-primary"></i> <span>Invoices</span></a>
								<a href="#" class="btn btn-link btn-float has-text"><i class="icon-calendar5 text-primary"></i> <span>Schedule</span></a>
							</div>
						</div>
						<div class="breadcrumb-line">
						<ul class="breadcrumb">
							<li><a href="<?php echo base_url();?>"><i class="icon-home2 position-left"></i> Home</a></li>
							<li class="active">Dashboard</li>
							<li class="active"> Edit User</li>
						</ul>
					</div>
					</div>
					<?php 
$user_id = $_REQUEST['user_id'];

foreach($user_info->result() as $row) {
	$surname = $row->surname;
	$other_names = $row->other_names;
	$phone_number = $row->phone_number;
	$email = $row->email;
	$court_id = $row->court_id;
	$role_id = $row->role_id;
}

?>
<!-- 2 columns form --> 
					<form class="form-horizontal" action="update_user?user_id=<?php echo $user_id;?>" method="POST">
						<div class="panel panel-flat">
							<div class="panel-heading">
								
								<div class="heading-elements">
									<ul class="icons-list">
				                		<li><a data-action="collapse"></a></li>
				                		<li><a data-action="reload"></a></li>
				                		<li><a data-action="close"></a></li>
				                	</ul>
			                	</div>
							</div>

							<div class="panel-body">
								<div class="row">
									<div class="col-md-6">
										<fieldset>
											<legend class="text-semibold"><i class="icon-reading position-left"></i> User details</legend>

											<div class="form-group">
												<label class="col-lg-3 control-label">Surname:</label>
												<div class="col-lg-9">
													<input type="text" name="surname" class="form-control" placeholder="e.g. Busia High Court" value="<?php echo $surname; ?>">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Other Names:</label>
												<div class="col-lg-9">
													<input type="text" name="other_names" class="form-control" placeholder="e.g. Busia High Court" value="<?php echo $other_names; ?>">
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label">Phone Number:</label>
												<div class="col-lg-9">
													<input type="number" name="phone_number" class="form-control" placeholder="e.g. Busia High Court" value="<?php echo $phone_number; ?>">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Email:</label>
												<div class="col-lg-9">
													<input type="email" name="email" class="form-control" placeholder="e.g. Busia High Court" value="<?php echo $email; ?>">
												</div>
											</div>

											</fieldset>
										</div>	
										<div class="col-md-6">
										<fieldset>
											

											<div class="form-group">
												<label class="col-lg-3 control-label">Court:</label>
												<div class="col-lg-9">
													<select name="court_name" placeholder="e.g. High Court" >
          			<?php 
          				echo "<option value='$court_id'> $court_name</option>";
          				?>
       								<?php
                		foreach ($court_names->result() as $row) {

                    	echo "<option value='$row->court_id'> $row->court_name </option>";
                		}
               		 ?>
                
            			</select>
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Role:</label>
												<div class="col-lg-9">
													<select name="role_name" placeholder="e.g. High Court" >
          			<?php 
          				echo "<option value='role_id'>$role_name</option>";
          				?>
       								<?php
                		foreach ($roles->result() as $row) {

                    	echo "<option value='$row->role_id'> $row->role_name </option>";
                		}
               		 ?>
                
            			</select>
												</div>
											</div>
											

											</fieldset>
										</div>									
								</div>

								<div class="text-right">
									<button type="submit" class="btn btn-primary">Submit form <i class="icon-arrow-right14 position-right"></i></button>
								</div>
							</div>
						</div>
					</form>