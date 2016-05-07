<div class="ui vertical segment" style="margin-top: 7em;padding-top: 0rem;">
  <div class="ui main grid container">
    <?php echo heading('Kategori <b>"'.$name_category.'"</b>', 3, 'class="ui dividing header"'); ?>
  </div>
  <div class="ui center aligned stackable grid container">
    <div class="row">
      <?php
      // echo heading('Kategori <b>"'.$name_category.'"</b>', 3, 'class="ui dividing header"');
      echo br();
      if(count($query_products->result()) > 0){
        foreach ($query_products->result() as $item):
        $uri = "p/".$slug_category."/".$item->slug;
        $image_properties = array(
          'src'   => $item->image1,
          'alt'   => $item->name_products,
          'title' => $item->name_products,
          'class' => 'products',
          'style' => 'height: 216px;'
        );
        ?>
        <div class="four wide column except">
          <div class="ui card">
            <div class="image"><?php echo img($image_properties); ?></div>
            <div class="content">
              <?php echo anchor($uri, $item->name_products);?>
              <div class="description">
                <?php echo $this->lib->format_rupiah($item->price); ?>
              </div>
            </div>
          </div>
        </div>
        <?php endforeach;
      }
      else
      {
        echo "Belum ada barang di kategori ".$name_category."<br />";
      }
      ?>
    </div>
  </div>
</div>