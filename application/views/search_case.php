<div class="page-header">
					<div class="page-header-content">
						<div class="page-title">
							<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Home</span> </span> - 
				<?php if ($this->session->userdata('role_id') == '1') {
                    echo "Judge ";
                	} else if ($this->session->userdata('role_id') == '2') {
                    echo "Court Clerk ";
                	} else {
                	echo "Admin";
                	} ?>
                	Dashboard - Search Case</h4>
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
							<h5 class="panel-title">Case Base Search </h5>
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
										<input type="text" class="form-control input-xlg" name="search_case" placeholder=" use case number,case type, name of plaintiff or defendant ">
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
										
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- /search field -->