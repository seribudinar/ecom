<div class="ui two column centered grid">
  <div class="column">
      <h2 class="ui teal image header">
        <?php echo img('assets/img/web/logo.png', TRUE, 'class="image"'); ?>
        <div class="content">
          Pendaftaran <a href="<?php echo base_url();?>" class="button">ApAja.COM</a>
        </div>
      </h2>
		<?php
		echo $this->session->flashdata("success");
		echo validation_errors('<div class="ui error message"><i class="close icon"></i><div class="header">', '</div></div>');
		$attributes = array('class' => 'ui large form');
		echo form_open('register/submit', $attributes);
		?>
<div class="ui stacked segment">
	<div class="ui error message"></div>
	<div class="six wide tablet six wide computer column field">
      	<div class="ui left icon input">
            <i class="user icon"></i>
			<?php
			$username = array(
				'name' => '_username',
				'placeholder' => 'Username',
				'autocomplete' => 'off'
			);
			echo form_input($username); ?>
		</div>
    </div>
    <div class="field">
      	<div class="ui left icon input">
	        <i class="user icon"></i>
	        <?php
	        $email = array(
	        	'name' => '_email',
	        	'placeholder' => 'Masukan Email',
				'autocomplete' => 'off'
	        );
	        echo form_input($email); ?>
      	</div>
    </div>
    <div class="field">
      	<div class="ui left icon input">
	        <i class="user icon"></i>
	        <?php
	        $password = array(
	        	'name' => '_password',
	        	'placeholder' => 'Masukan Password',
				'autocomplete' => 'off'
	        );
	        echo form_password($password); ?>
      	</div>
    </div>
    <div class="field">
      	<div class="ui left icon input">
	        <i class="user icon"></i>
	        <?php
	        $nama = array(
	        	'name' => '_nama_lengkap',
	        	'placeholder' => 'Nama Lengkap',
	        	'max-length' => 35,
	        	'min-length' => 5,
				'autocomplete' => 'off'
	        );
	        echo form_input($nama); ?>
      	</div>
    </div>
    <div class="six wide column field">
    	<?php
		$gender = array(
			''	=> 'Pilih...', 
			'2'	=> 'Laki-laki',
			'1'	=> 'Perempuan'
		);

		echo form_dropdown('gender', $gender, '', 'class="ui fluid dropdown"');
		?>
    </div>
    <div class="field">
        <?php
        $alamat = array(
        	'name' => '_alamat',
        	'placeholder' => 'Alamat',
        	'min-length' => 5,
			'autocomplete' => 'off'
        );
        echo form_textarea($alamat); ?>
    </div>

	<div class="ui fluid large teal submit button">Daftar</div>
</div>
<?php echo form_close(); ?>
	<div class="ui message">
      SUDAH MENDAFTAR? <a href="#">Silahkan login</a>
    </div>
  </div>
</div>