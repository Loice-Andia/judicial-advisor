<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
				<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Home</span> - 
				<?php if ($this->session->userdata('role_id') == '1') {
                    						echo " &nbsp Judge";
                							} else if ($this->session->userdata('role_id') == '2') {
                    						echo "Court Clerk";
                							} else {
                							echo "Admin";
                							} ?> Dashboard - Case Information</h4>
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
			<li class="active">Case Information</li>
		</ul>
	</div>
	</div>
</div>

<!-- Content area -->
				<div class="content">
				<?php
				foreach ($court_name->result() as $row) {

                    						$court_name=$row->court_name;
                							}
                	

						$plaintiffs = $_REQUEST['plaintiffs'];
						$defendants = $_REQUEST['defendants'];
						$case_num = $_REQUEST['case_num'];
       
        				foreach ($case_info->result() as $row) {
            			?>

					<!-- Autocomplete type -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">
							<center><strong>REPUBLIC OF KENYA</strong></center> </br>
							<center><strong><?php echo strtoupper($court_name); ?></strong></center>
							
							</h5>
							<div class="heading-elements">
								<ul class="icons-list">
			                		<li><a data-action="collapse"></a></li>
			                		<li><a data-action="reload"></a></li>
			                		<li><a data-action="close"></a></li>
			                	</ul>
		                	</div>
						</div>

						<div class="panel-body">
							
							<div class="content-group-lg">
							<div class="hot-container">
									<div id="hot_ac_lazy"></div>
								</div>
								<center>CRIMINAL APPEAL CASE: <strong><?php echo $case_num; ?></strong></br></center>
								<center><?php echo " Case of <strong>".$plaintiffs ."</strong> versus <strong>". $defendants;?></strong></center>
								<div id="hot_ac_lazy"></div>
								<h6 class="text-semibold"><strong>Grounds of Appeal</strong></h6>
								<p class="content-group">
								<?php
                    			echo $case_details = $row->case_details;
                   
                    			?></p>

								<div class="hot-container">
									<div id="hot_ac_lazy"></div>
								</div>
							</div>

							<div class="content-group-lg">
								<h6 class="text-semibold"><strong>Analysis of Evidence</strong></h6>
								<p class="content-group"><?php
                    			echo $evidence = $row->evidence;
                   
                    			?></p>

								<div class="hot-container">
									<div id="hot_ac_strict"></div>
								</div>
							</div>
							<?php } ?>
						</div>
						<div class="row">
								<div class="col-md-6 text-left">								
									<a href="<?php echo base_url();?>index.php/judge_controller/view_cases"> <i class="icon-arrow-left15 position-left"></i>Case List </a>
								</div>
								<div class="col-md-6 text-right">
									<a href="<?php echo base_url()?>index.php/judge_controller/view_judgment?case_num=<?php echo $case_num; ?>&plaintiffs=<?php echo $plaintiffs;?>&defendants=<?php echo $defendants;?>"> Case Judgement <i class='icon-arrow-right15 position-right'></i></a>
								</div>
						</div>
					</div>
					<!-- /autocomplete type -->
					</div>
