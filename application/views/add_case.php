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
							<li class="active">Add New Case</li>
						</ul>
					</div>
					</div>
<!-- 2 columns form -->
					<form class="form-horizontal" action="#">
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
												<label class="col-lg-3 control-label">Enter your name:</label>
												<div class="col-lg-9">
													<input type="text" class="form-control" placeholder="Eugene Kopyov">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Enter your password:</label>
												<div class="col-lg-9">
													<input type="password" class="form-control" placeholder="Your strong password">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Select your state:</label>
												<div class="col-lg-9">
													<select data-placeholder="Select your state" class="select">
														<option></option>
														<optgroup label="Alaskan/Hawaiian Time Zone">
															<option value="AK">Alaska</option>
															<option value="HI">Hawaii</option>
														</optgroup>
														<optgroup label="Pacific Time Zone">
															<option value="CA">California</option>
															<option value="NV">Nevada</option>
															<option value="WA">Washington</option>
														</optgroup>
														<optgroup label="Mountain Time Zone">
															<option value="AZ">Arizona</option>
															<option value="CO">Colorado</option>
															<option value="WY">Wyoming</option>
														</optgroup>
														<optgroup label="Central Time Zone">
															<option value="AL">Alabama</option>
															<option value="AR">Arkansas</option>
															<option value="KY">Kentucky</option>
														</optgroup>
														<optgroup label="Eastern Time Zone">
															<option value="CT">Connecticut</option>
															<option value="DE">Delaware</option>
															<option value="WV">West Virginia</option>
														</optgroup>
													</select>
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Attach screenshot:</label>
												<div class="col-lg-9">
													<input type="file" class="file-styled">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Your message:</label>
												<div class="col-lg-9">
													<textarea rows="5" cols="5" class="form-control" placeholder="Enter your message here"></textarea>
												</div>
											</div>
										</fieldset>
									</div>

									<div class="col-md-6">
										<fieldset>
						                	<legend class="text-semibold"><i class="icon-reading position-left"></i> Case Information</legend>

											<div class="form-group">
												<label class="col-lg-3 control-label">Your name:</label>
												<div class="col-lg-9">
													<div class="row">
														<div class="col-md-6">
															<input type="text" placeholder="First name" class="form-control">
														</div>

														<div class="col-md-6">
															<input type="text" placeholder="Last name" class="form-control">
														</div>
													</div>
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Email:</label>
												<div class="col-lg-9">
													<input type="text" placeholder="eugene@kopyov.com" class="form-control">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Phone #:</label>
												<div class="col-lg-9">
													<input type="text" placeholder="+99-99-9999-9999" class="form-control">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Location:</label>
												<div class="col-lg-9">
													<div class="row">
														<div class="col-md-6">
															<div class="mb-15">
									                            <select data-placeholder="Select your country" class="select">
									                            	<option></option>
									                                <option value="1">Canada</option> 
									                                <option value="2">USA</option> 
									                                <option value="3">Australia</option> 
									                                <option value="4">Germany</option> 
									                            </select>
								                            </div>

								                            <input type="text" placeholder="ZIP code" class="form-control">
														</div>

														<div class="col-md-6">
															<input type="text" placeholder="State/Province" class="form-control mb-15">
															<input type="text" placeholder="City" class="form-control">
														</div>
													</div>
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Address:</label>
												<div class="col-lg-9">
													<input type="text" placeholder="Your address of living" class="form-control">
												</div>
											</div>

											<div class="form-group">
												<label class="col-lg-3 control-label">Additional message:</label>
												<div class="col-lg-9">
													<textarea rows="5" cols="5" class="form-control" placeholder="Enter your message here"></textarea>
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