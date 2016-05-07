<div class="ui fixed stackable menu">
  <div href="#" class="header item">
    <?php echo img('assets/img/web/logo.png', TRUE, 'class="logo"'); ?>
    ApAja&nbsp;&nbsp;<a class="ui teal tag label">&nbsp;&nbsp;Situs Belanja Online Mudah, Cepat, Aman, Berkah</a>
  </div>
  <div class="right menu">
    <?php
    if ($sessid == ""): ?>
      <div class="item">
        <div class="ui buttons">
          <a href="<?php echo base_url();?>login" class="ui positive button">Login</a>
          <div class="or"></div>
          <a href="<?php echo base_url();?>register" class="ui button active">Register</a>
        </div>
      </div>
    <?php
    else:
    ?>
      <div class="ui inline dropdown item" tabindex="0">
        <div class="text">
          <?php echo img('assets/img/web/stevie.jpg', TRUE, 'class="ui avatar image"'); ?>
          ApAja
        </div>
        <i class="dropdown icon"></i>
        <div class="menu" tabindex="-1">
          <div class="ui divider"></div>
          <div class="item">
            <?=Modules::run('must/_show_name');?>
          </div>
          <div class="ui divider"></div>
          <div class="item"><?php echo anchor(base_url().'products/me', 'Barang');?></div>
          <div class="item"><?php echo anchor(base_url().'products/anyar', 'Jual Barang');?></div>
          <div class="item"><?php echo anchor(base_url().'cart/ty', 'Keranjang');?></div>
          <div class="item"><?php echo anchor(base_url().'login/logout', 'Logout');?></div>
        </div>
      </div>
    <?php endif; ?>
  </div>
</div>