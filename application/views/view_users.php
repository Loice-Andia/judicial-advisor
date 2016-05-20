<div class="page-header">
					<div class="page-header-content">
						<div class="page-title">
							<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Home</span> -<?php if ($this->session->userdata('role_id') == '1') {
                    						echo " &nbsp Judge";
                							} else if ($this->session->userdata('role_id') == '2') {
                    						echo "Court Clerk";
                							} else {
                							echo "Admin";
                							} ?>Dashboard - View Users</h4>
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
							<li class="active">View Users</li>
						</ul>
					</div>
</div>
<div class="content"> 


					<!-- Basic responsive table -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Registered Users</h5>
							<div class="heading-elements">
								<ul class="icons-list">
			                		<li><a data-action="collapse"></a></li>
			                		<li><a data-action="reload"></a></li>
			                		<li><a data-action="close"></a></li>
			                	</ul>
		                	</div>
						</div>

						<div class="table-responsive">
							<table class="table">
								<thead>
									<tr>
										<th>Surname</th>
										<th>Other Names</th>
										<th>Phone Number</th>
										<th>Email</th>
										<th>Court</th>
										<th>Role</th>
										<th class="text-center" style="width: 30px;"><i class="icon-menu-open2"></i></th>
									</tr>
								</thead>
								<tbody>
								<?php
       
        foreach ($users->result() as $row) {
        	$court_id = $row->court_id;
        	$role_id = $row->role_id;

            ?>
									<tr>
										<td><?php
                    echo $surname = $row->surname;
                   
                    ?></td>
										<td><?php
                    echo $other_names = $row->other_names;
                   
                    ?></td>
										<td><?php
                    echo $phone_number = $row->phone_number;
                   
                    ?></td>
										<td><?php
                    echo $email = $row->email;
                   
                    ?></td>
                    <td><?php echo get_court_name_from_id($court_id); ?></td>
                    <td><?php echo get_role_name_from_id($role_id); ?></td>
                    
										<td class="text-center">
											<a href="<?php echo base_url();?>index.php/admin_controller/edit_user?user_id=<?php echo $row->user_id; ?>">Edit User</a>
										</td>
									</tr>
								
								<?php } ?>
								</tbody>
							</table>
						</div>
					</div>
					<!-- /basic responsive table -->