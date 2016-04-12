<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
				<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Home</span> - Clerk Dashboard - Add Case</h4>
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

						$plaintiffs = $_REQUEST['plaintiffs'];
						$defendants = $_REQUEST['defendants'];
       
        foreach ($case_info->result() as $row) {
            ?>

					<!-- Autocomplete type -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Case Information : <?php echo " Case of ".$plaintiffs ." vs ". $defendants;?></h5>
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
								<h6 class="text-semibold">Summary of case</h6>
								<p class="content-group">
								<?php
                    echo $case_details = $row->case_details;
                   
                    ?></p>

								<div class="hot-container">
									<div id="hot_ac_lazy"></div>
								</div>
							</div>

							<div class="content-group-lg">
								<h6 class="text-semibold">Evidence</h6>
								<p class="content-group"><?php
                    echo $evidence = $row->evidence;
                   
                    ?></p>

								<div class="hot-container">
									<div id="hot_ac_strict"></div>
								</div>
							</div>

							<div>
								<h6 class="text-semibold">Witnesses</h6>
								<p class="content-group"><?php
                    echo $witnesses = $row->witnesses;
                   
                    ?></p>

								<div class="hot-container">
									<div id="hot_ac_ajax"></div>
								</div>
							</div>
							<?php } ?>
						</div>
					</div>
					<!-- /autocomplete type -->
					</div>
