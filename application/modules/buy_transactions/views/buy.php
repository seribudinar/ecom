<div class="twelve wide column except">
	<h1 class="ui dividing header"><?=$title?></h1>
	<table class="ui celled structured table">
		<thead>
			<tr>
				<th>No</th>
				<th>No Invoice</th>
				<th>Tgl Beli</th>
				<th>Status</th>
			</tr>
		</thead>
		<tbody>
			<?php
			if (count($check_user->num_rows() > 0)) {
				$no = 1; 
				foreach ($check_user->result() as $item):
			?>
				<tr>
					<td><?php echo $no; ?></td>
					<td><a href="<?php echo base_url()."buy_transactions/detail/".$item->no_invoice; ?>"><?php echo $item->no_invoice; ?></td>
					<td><?php echo $item->order_date; ?></td>
					<td><?php echo $this->lib->status_checkout($item->status); ?></td>
				</tr>
			<?php
				$no++;
				endforeach;
			}else{
				echo "Belum ada.";
			}
			?>
		</tbody>
	</table>
</div>
      </div>
    </div>
  </div>