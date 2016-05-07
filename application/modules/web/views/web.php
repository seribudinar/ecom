<div class="ui main container center aligned header">Kategori</div>
<div class="ui huge message grid container center aligned">
  <div class="ui basic buttons">
    <?php
    foreach ($query->result() as $row): 
      $url_category = base_url().'c/'.$row->slug;
    ?>
      <button class="ui button">
      <?php echo anchor($url_category, $row->category);?>
      </button>
    <?php endforeach;
    ?>
  </div>
</div>