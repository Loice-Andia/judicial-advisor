s<div class="page-header">
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
<div class="content">

					<!-- Basic responsive table -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Recent Cases</h5>
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
										<th>Case Number</th>
										<th>Case Type</th>
										<th>Date Filed</th>
										<th>Plaintiff</th>
										<th>Defendant</th>
										<th>Judicial Officer</th>
										<th>Legal Rep</th>
										<th class="text-center" style="width: 30px;"><i class="icon-menu-open2"></i></th>
									</tr>
								</thead>
								<tbody>
								<?php
       
        foreach ($cases->result() as $row) {
            ?>
									<tr>
										<td><?php
                    echo $case_num = $row->case_num;
                   
                    ?></td>
										<td><?php
                    echo $case_type = $row->case_type;
                   
                    ?></td>
										<td><?php
                    echo $date_filed = $row->date_filed;
                   
                    ?></td>
										<td><?php
                    echo $plaintiffs = $row->plaintiffs;
                   
                    ?></td>
                    <td><?php
                    echo $defendants = $row->defendants;
                   
                    ?></td>
                    <td></td>
                    
										<td></td>
										<td class="text-center">
											<ul class="icons-list">
												<li class="dropdown">
													<a href="#" class="dropdown-toggle" data-toggle="dropdown">
														<i class="icon-menu9"></i>
													</a>

													<ul class="dropdown-menu dropdown-menu-right">
														<li><a href="<?php echo base_url();?>index.php/clerk_controller/get_case_details_per_casenum?case_num=<?php echo $row->case_num; ?>&plaintiffs=<?php echo $row->plaintiffs; ?>&defendants=<?php echo $row->defendants; ?>"> Case Information</a></li>
														<li><a href="<?php echo base_url();?>index.php/judge_controller/similarity?case_num=<?php echo $row->case_num; ?>&plaintiffs=<?php echo $row->plaintiffs; ?>&defendants=<?php echo $row->defendants; ?>">Case Judgement</a></li>
													</ul>
												</li>
											</ul>
										</td>
									</tr>
								
								<?php } ?>
								</tbody>
							</table>
						</div>
					</div>
					<!-- /basic responsive table -->