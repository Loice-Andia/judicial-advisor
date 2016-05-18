<div class="page-header">
					<div class="page-header-content">
						<div class="page-title">
							<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Home</span> - Search Case</h4>
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
							<li class="active">Search a Case</li>
						</ul>
					</div>
					</div>
					</div>

		<!-- Content area -->
				<div class="content">

			<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Website search results</h5>
							<div class="heading-elements">
								<ul class="icons-list">
			                		<li><a data-action="collapse"></a></li>
			                		<li><a data-action="close"></a></li>
			                	</ul>
		                	</div>
						</div>

						<div class="panel-body">
							<form action="search_results" class="main-search" method="POST">
								<div class="input-group content-group">
									<div class="has-feedback has-feedback-left">
										<input type="text" class="form-control input-xlg" name="search_case" placeholder=" use case number, name or Legal rep ">
										<div class="form-control-feedback">
											<i class="icon-search4 text-muted text-size-base"></i>
										</div>
									</div>

									<div class="input-group-btn">
										<button type="submit" class="btn btn-primary btn-xlg">Search</button>
									</div>
								</div>

								<div class="row search-option-buttons">
									<div class="col-sm-6">
										<ul class="list-inline list-inline-condensed no-margin-bottom">
											<li class="dropdown">
												<a href="#" class="btn btn-link btn-sm dropdown-toggle" data-toggle="dropdown">
													<i class="icon-stack2 position-left"></i> All categories <span class="caret"></span>
												</a>

												<ul class="dropdown-menu">
													<li><a href="#"><i class="icon-question7"></i> Getting started</a></li>
													<li><a href="#"><i class="icon-accessibility"></i> Registration</a></li>
													<li><a href="#"><i class="icon-reading"></i> General info</a></li>
													<li><a href="#"><i class="icon-gear"></i> Your settings</a></li>
													<li><a href="#"><i class="icon-graduation"></i> Copyrights</a></li>
													<li class="divider"></li>
													<li><a href="#"><i class="icon-mail-read"></i> Contacting authors</a></li>
												</ul>
											</li>
											<li><a href="#" class="btn btn-link btn-sm"><i class="icon-reload-alt position-left"></i> Refine your search</a></li>
										</ul>
									</div>

									<div class="col-sm-6 text-right">
										<ul class="list-inline no-margin-bottom">
											<li><a href="#" class="btn btn-link btn-sm"><i class="icon-make-group position-left"></i> Browse website</a></li>
											<li><a href="#" class="btn btn-link btn-sm"><i class="icon-menu7 position-left"></i> Advanced search</a></li>
										</ul>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /search field -->