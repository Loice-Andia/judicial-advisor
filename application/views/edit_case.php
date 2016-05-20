<div class="page-header">
	<div class="page-header-content">
		<div class="page-title">
			<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Home</span> - 
				<?php if ($this->session->userdata('role_id') == '1') {
                    echo "Judge ";
                	} else if ($this->session->userdata('role_id') == '2') {
                    echo "Court Clerk ";
                	} else {
                	echo "Admin";
                	} ?>
                	Dashboard - Edit Case</h4>
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
				<li class="active">Edit Case</li>
			</ul>
		</div>
	</div>
</div>
<?php echo validation_errors("<p class='validationerrors'>"); ?>

<!-- 2 columns form --> 
<?php 
$case_num = $_REQUEST['case_num'];

foreach($case_details->result() as $row) {
	$court_id = $row->court_id;
	$case_num = $row->case_num;
	$plaintiffs = $row->plaintiffs;
	$defendants = $row->defendants;
	$origcasenum_appeal = $row->origcasenum_appeal;
}

?>
<form class="form-horizontal" action="update_case?case_num=<?php echo $case_num;?>" method="POST">
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
						<legend class="text-semibold"><i class="icon-reading position-left"></i> Case details</legend>

						<div class="form-group">
												<label class="col-lg-3 control-label">case number:</label>
												
												<div class="col-lg-5">
												<input name="case_num" id="case_number" disabled="true" class="form-control" placeholder="case number" required="" value="<?php echo $case_num; ?>">

												</div>
											</div>
						<div class="form-group">
							<label class="col-lg-3 control-label">Court name:</label>
							<div class="col-lg-9">
								<select name="court_name" placeholder="e.g. High Court" >
          			<?php 
          				echo "<option value='23001'> Milimani Criminal Division</option>";
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
												<label class="col-lg-3 control-label">Plaintiff:</label>
												
												<div class="col-lg-5">
												<input name="plaintiffs" id="plaintiff" class="form-control" required="" value="<?php echo $plaintiffs; ?>">

												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label">Defendant:</label>
												
												<div class="col-lg-5">
												<input name="defendants" id="defendants" class="form-control" required="" value="<?php echo $defendants; ?>">

												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label">Original Case Number:</label>
												
												<div class="col-lg-5">
												<input name="origcasenum_appeal" id="origcasenum_appeal" class="form-control" required="" value="<?php echo $origcasenum_appeal; ?>">

												</div>
											</div>
					</fieldset>
				</div>
				<div class="col-md-6">
									<fieldset>
						                	<legend class="text-semibold"><i class="icon-reading position-left"></i> Appeal Grounds</legend>

											<div class="form-group">
											<?php foreach ($case_info->result() as $row) { ?>
												<textarea rows="12" cols="5" name="case_grounds" required="" class="form-control" ><?php echo $case_grounds=$row->case_details; ?></textarea>
											</div>

											
										</fieldset>
										
									</div>
									<div class="col-md-12">

										<fieldset>
						                	<legend class="text-semibold"><i class="icon-reading position-left"></i> Evidence</legend>

											<div class="form-group">
											
												<textarea rows="8" cols="5" name="evidence" required="" class="form-control" ><?php echo $case_evidence=$row->evidence; ?></textarea>
											</div>

											
										</fieldset>
										<?php } ?>
									</div>
									<div class="text-right">
									<button type="submit" class="btn btn-primary">Update Case<i class="icon-arrow-right14 position-right"></i></button>
								</div>
			</div>
		</div>
	</div>
</form>
