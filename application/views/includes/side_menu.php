	<!-- Page container -->
	<div class="page-container">

		<!-- Page content -->
		<div class="page-content">

			<!-- Main sidebar -->
			<div class="sidebar sidebar-main">
				<div class="sidebar-content">

					<!-- User menu -->
					<div class="sidebar-user">
						<div class="category-content">
							<div class="media">
								<a href="#" class="media-left"><img src="<?php echo base_url();?>assets/images/demo/users/face11.jpg" class="img-circle img-sm" alt=""></a>
								<div class="media-body">
									<span class="media-heading text-semibold" ><?php echo($this->session->userdata('surname').' '.$this->session->userdata('other_names'));?></span>
									<div class="text-size-mini text-muted">
										<i class="icon-pin text-size-small"></i> &nbsp;
										<?php foreach ($court_name->result() as $row) {

                    						echo $row->court_name ;
                							}
                							if ($this->session->userdata('role_id') == '1') {
                    						echo " &nbsp Judge";
                							} else if ($this->session->userdata('role_id') == '2') {
                    						echo "</br>  &nbsp;Court Clerk";
                							} else {
                							echo "Admin";
                							}

                						?>

									</div>
								</div>

								<div class="media-right media-middle">
									<ul class="icons-list">
										<li>
											<a href="#"><i class="icon-cog3"></i></a>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- /user menu -->


					<!-- Main navigation -->
					<div class="sidebar-category sidebar-category-visible">
						<div class="category-content no-padding">
							<ul class="navigation navigation-main navigation-accordion">

								<!-- Main -->
								<li class="navigation-header"><span>Main</span> <i class="icon-menu" title="Main pages"></i></li>
								<li class=""><a href="<?php echo base_url();?>index.php/clerk_controller/index">  <i class="icon-home4"></i> <span>Dashboard</span></a></li>
								<?php if($this->session->userdata('role_id') == '2'){
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/search_case"."><i class='icon-pencil3'></i> <span>Search a case</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-pencil3'></i> <span>Add a New Case</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-pencil3'></i> <span>View a Case</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-pencil3'></i> <span>Edit a Case</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-copy'></i> <span>View Reports</span></a></li>";
								} elseif ($this->session->userdata('role_id') == '1') {
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/search_case"."><i class='icon-pencil3'></i> <span>Search a case</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/judge_controller/view_cases"."><i class='icon-pencil3'></i> <span>View recent Cases</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-pencil3'></i> <span>Edit a Case</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-copy'></i> <span>View Reports</span></a></li>";
								} else {
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-pencil3'></i> <span>Users</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-pencil3'></i> <span>Courts</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-pencil3'></i> <span>Case codes</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-pencil3'></i> <span>Outcomes</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-pencil3'></i> <span>Judicial Officers</span></a></li>";
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-pencil3'></i> <span>Legal Reps</span></a></li>";
								
									echo "<li class=''><a href=".base_url()."index.php/clerk_controller/add_case_view"."><i class='icon-copy'></i> <span>Reports</span></a></li>";
								}
									 ?>
								<!-- /page kits -->

							</ul>
						</div>
					</div>
					<!-- /main navigation -->

				</div>
			</div>
			<!-- /main sidebar -->