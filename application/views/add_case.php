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
                							} ?> Dashboard - Add Case</h4>
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
							<li class="active">Add New Case</li>
						</ul>
					</div>
					</div>
<!-- 2 columns form --> 
					<form class="form-horizontal" action="add_case" method="POST">
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
												<label class="col-lg-3 control-label">Court name:</label>
												<div class="col-lg-9">
													<input type="text" name="court_name" disabled="true" class="form-control" placeholder="e.g. Busia High Court" value="<?php foreach($court_name->result() as $row) {
														echo $row->court_name ;
														}
														?>">
												</div>
											</div>

											

											<div class="form-group">
												<label class="col-lg-3 control-label">case code:</label>
												<div class="col-lg-4">
												<select name="case_code" id="case_code" class="select" placeholder="Choose Case Code" required="" value="<?php echo set_value('case_code'); ?>">
												<?php 
												echo "<option >Choose Case code</option>";
												?>
												<?php
												foreach ($case_code->result() as $row) {
													echo "<option value='$row->case_code'> $row->case_code </option>";
													}
													?>
												</select>

												</div>
												<div class="col-lg-5">
												<input name="case_number" id="case_number" class="form-control" placeholder="case number" required="">

												</div>
											</div>

											
											<div class="form-group">
												<label class="col-lg-3 control-label">case type:</label>
												<div class="col-lg-9">
												<input type="text" name="case_type" placeholder="case type" class="form-control">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Date filed:</label>
												<div class="col-lg-9">
													<input type="date" name="date_filed" class="form-control" placeholder="Date Filed">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Original Case Details:</label>
												<div class="col-lg-9">
													
													<input type="text" name="origcasenum_appeal" placeholder="Original case num" class="form-control">
												</div>
											</div>
											</fieldset>
										</div>

									<div class="col-md-6">
										<fieldset>
						                	<legend class="text-semibold"><i class="icon-reading position-left"></i> Case Parties</legend>

											<div class="form-group">
												<label class="col-lg-3 control-label">Plaintiff:</label>
												<div class="col-lg-9">
													<input type="text" name="plaintiffs" class="form-control" placeholder="Plaintiffs name">
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label">Defendant:</label>
												<div class="col-lg-9">
													<input type="text" name="defendants" class="form-control" placeholder="defendants name">
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label">Judicial Officer:</label>
												<div class="col-lg-9">
													<select name="judicial_officers" id="judicial_officers" class="select" placeholder="Choose Judicial Officer" required="" value="<?php echo set_value('judicial_officer_name'); ?>">
												<?php 
												echo "<option >Choose Judicial Officer</option>";
												?>
												<?php
												foreach ($judicial_officers->result() as $row) {
													echo "<option value='$row->judicial_officer_id'> $row->judicial_officer_name </option>";
													}
													?>
												</select>
												</div>
											</div>
											<div class="form-group">
												<label class="col-lg-3 control-label">Legal Rep:</label>
												<div class="col-lg-9">
													<select name="legalrep" id="legalrep" class="select" placeholder="Choose Legal Rep" required="" value="<?php echo set_value('judicial_officer_name'); ?>">
												<?php 
												echo "<option >Choose Legal Rep</option>";
												?>
												<?php
												foreach ($legalrep->result() as $row) {
													echo "<option value='$row->legalrep_id'> $row->legalrep_name </option>";
													}
													?>
												</select>
												</div>
												</fieldset>
											</div>
										
									</div>
									
								</div>
								<div class="col-md-12">

										<fieldset>
						                	<legend class="text-semibold"><i class="icon-reading position-left"></i> Case Information</legend>				

											<div class="form-group">
												<label class="col-lg-1 control-label">GROUNDS OF FILING: </label>
												<div class="col-lg-11">
													<textarea rows="7" cols="5" name="case_details" required="" class="form-control" placeholder="Enter the summary of the case here"></textarea>
											</div>
											<div class="form-group">
												<label class="col-lg-1 control-label">EVIDENCE: </label>
												<div class="col-lg-11">
													<textarea rows="7" cols="5" name="evidence" required="" class="form-control" placeholder="witness testimonies"></textarea>
											</div>
										</fieldset>
								</div>


								<div class="text-right">
									<button type="submit" class="btn btn-primary">Submit form <i class="icon-arrow-right14 position-right"></i></button>
								</div>
							</div>
						</div>
					</form>