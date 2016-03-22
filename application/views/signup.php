<div class="page-container login-container">

    <!-- Page content -->
    <div class="page-content">

      <!-- Main content -->
      <div class="content-wrapper">

        <!-- Content area -->
        <div class="content">

          <!-- Registration form -->
          <?php echo validation_errors("<p class='validationerrors'>");?>
          <?php echo form_open('Signup/add_user');?>
            <div class="row">
              <div class="col-lg-6 col-lg-offset-3">
                <div class="panel registration-form">
                  <div class="panel-body">
                    <div class="text-center">
                      <div class="icon-object border-success text-success"><i class="icon-plus3"></i></div>
                      <h5 class="content-group-lg">Create account <small class="display-block">All fields are required</small></h5>
                    </div>

                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group has-feedback">
                          <input type="text" class="form-control" required="" placeholder="Surname" name="surname" value="<?php echo set_value('surname'); ?>">
                          <div class="form-control-feedback">
                            <i class="icon-user-check text-muted"></i>
                          </div>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group has-feedback">
                          <input type="text" class="form-control" required="" placeholder="Other Names" name="other_names" value="<?php echo set_value('other_names'); ?>">
                          <div class="form-control-feedback">
                            <i class="icon-user-check text-muted"></i>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group has-feedback">
                          <input type="text" class="form-control" required="" placeholder="Phone Number" name="phone_number" value="<?php echo set_value('phone_number'); ?>">
                          <div class="form-control-feedback">
                            <i class="icon-user-check text-muted"></i>
                          </div>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group has-feedback">
                          <input type="email" class="form-control" required="" placeholder="Email Address" name="email" value="<?php echo set_value('email'); ?>">
                          <div class="form-control-feedback">
                            <i class="icon-user-check text-muted"></i>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group has-feedback">
                          <select name="court_name" class="form-control" placeholder="Choose Court Station" required="" value="<?php echo set_value('court_name'); ?>">
          <?php 
          echo "<option >Choose Court Station</option>";
          ?>
       <?php
                foreach ($court_name->result() as $row) {

                    echo "<option value='$row->court_id'> $row->court_name </option>";
                }
                ?>
                
            </select>
                          <div class="form-control-feedback">
                            <i class="icon-user-check text-muted"></i>
                          </div>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group has-feedback">
                         <select name="role" class="form-control" placeholder="Choose your role" required="" value="<?php echo set_value('role'); ?>">
          <?php 
          echo "<option>Choose your role</option>";
          ?>
          <?php
                foreach ($role ->result() as $row) {

                    echo "<option value='$row->role_id'> $row->role_name </option>";
                }
                ?>
                
            </select>
                          <div class="form-control-feedback">
                            <i class="icon-user-check text-muted"></i>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group has-feedback">
                          <input type="password" required="" class="form-control" placeholder="Create password" name="password">
                          <div class="form-control-feedback">
                            <i class="icon-user-lock text-muted"></i>
                          </div>
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="form-group has-feedback">
                          <input type="password" required="" class="form-control" placeholder="Repeat password" name="repeat_password">
                          <div class="form-control-feedback">
                            <i class="icon-user-lock text-muted"></i>
                          </div>
                        </div>
                      </div>
                    </div>

                    <div class="form-group">
                      
                      <div class="checkbox">
                        <label>
                          <input type="checkbox" class="styled">
                          Accept <a href="#">terms of service</a>
                        </label>
                      </div>
                    </div>

                    <div class="text-right">
                      <a href="<?php echo base_url();?>" class="btn btn-link"><i class="icon-arrow-left13 position-left"></i> Back to login form</a>
                      <button type="submit" class="btn bg-teal-400 btn-labeled btn-labeled-right ml-10"><b><i class="icon-plus3"></i></b> Create account</button>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </form>
          <!-- /registration form -->

        </div>
        <!-- /content area -->

      </div>
      <!-- /main content -->

    </div>
    <!-- /page content -->

  </div>
  <!-- /page container -->

