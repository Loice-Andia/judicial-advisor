<div class="page-header">
					<div class="page-header-content">
						<div class="page-title">
							<h4><i class="icon-arrow-left52 position-left"></i> <span class="text-semibold">Home</span> -<?php if ($this->session->userdata('role_id') == '1') {
                    						echo " &nbsp Judge";
                							} else if ($this->session->userdata('role_id') == '2') {
                    						echo "Court Clerk";
                							} else {
                							echo "Admin";
                							} ?>Dashboard - Reports</h4>
						</div>

						<div class="heading-elements">
							<div class="heading-btn-group">
								<a href="<?php echo base_url(); ?>index.php/judge_controller/reports" class="btn btn-link btn-float has-text"><i class="icon-bars-alt text-primary"></i><span>Statistics</span></a>
								
							</div>
						</div>
						<div class="breadcrumb-line">
						<ul class="breadcrumb">
							<li><a href="<?php echo base_url();?>"><i class="icon-home2 position-left"></i> Home</a></li>
							<li class="active">Dashboard</li>
							<li class="active">Reports</li>
						</ul>
					</div>
</div>
<div class="content"> 


					<!-- Basic responsive table -->
					<div class="panel panel-flat" style="width: 70%;">
						<div class="panel-heading">
							<h5 class="panel-title">Reports</h5>
							<div class="heading-elements">
								<ul class="icons-list">
			                		<li><a data-action="collapse"></a></li>
			                		<li><a data-action="reload"></a></li>
			                		<li><a data-action="close"></a></li>
			                	</ul>
		                	</div>
						</div>

						<div class="table-responsive">
						
							<table class="table" >
								<thead>
									<tr>
									<th></th>
									<th>INDICATOR</th>
									<th class="text-center" style="width: 30px;">STATISTICS</th>
										
									</tr>
								</thead>
								<tbody>
								<?php
						$i=1;
						foreach ($indicators->result() as $row) {
							$indicator=$row->indicators;
						
						?>
						
									<tr>
									<td><?php echo $i; 
									?></td>
										<td >
										<?php echo $indicator; ?>
										</td>
										<td class="text-center" style="width: 30px;">
										<?php 
										if ($i==1) {
											echo $no_closed;
										}
										else if ($i==2) {
											echo $filedcases;
										} else if ($i==3){
											echo $no_closed-$filedcases;
										} else {
											echo "140 days";
										}
										?>
											
										</td>
										
									</tr>
									<?php $i++;
									} ?>
								
								</tbody>
							</table>
							
						</div>
					</div>
					<!-- /basic responsive table -->