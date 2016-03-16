<div id="heading"> ADD USER</div>
<?php
echo validation_errors("<p class='validationerrors'>");?>
<?php echo form_open('Signup/add_user');?>
    <table class="form_table">
        <tr><td> Username: <input type="text" required="" placeholder="e.g. Judgment." name="username" value="<?php echo set_value('username'); ?>"></td></tr>
        <tr><td> Other Names: <input type="text" required="" placeholder="e.g. Judgment." name="other_names" value="<?php echo set_value('other_names'); ?>"></td></tr>
        <tr><td> Phone Number: <input type="text" required="0-9" placeholder="e.g. Judgment." name="phone_number" value="<?php echo set_value('phone_number'); ?>"></td></tr>
        <tr><td> Email: <input type="email" required="" placeholder="e.g. Judgment." name="email" value="<?php echo set_value('email'); ?>"></td></tr>
        <tr><td> Choose your court station: <select name="court_name" placeholder="e.g. High Court" value="<?php echo set_value('court_name'); ?>">
          <?php 
          echo "<option value='$row->court_id'> $row->court_name</option>";
          ?>
       <?php
                foreach ($court_name->result() as $row) {

                    echo "<option value='$row->court_id'> $row->court_name </option>";
                }
                ?>
                
            </select></td></tr>
            <tr><td> Choose your role: 

            <select name="role" placeholder="e.g. High Court" value="<?php echo set_value('role'); ?>">
          <?php 
          echo "<option value='$row->role_id'> $row->role_name</option>";
          ?>
          <?php
                foreach ($role ->result() as $row) {

                    echo "<option value='$row->role_id'> $row->role_name </option>";
                }
                ?>
                
            </select></td></tr>
        <tr><td> Password: <input type="password" required="" placeholder="e.g. Judgment." name="password" ></td></tr>
        <tr><td> Confirm Password: <input type="password" required="" placeholder="e.g. Judgment." na ></td></tr>
        <tr><td><input type="submit"value="Save" /></td></tr>
    </table>
</form>