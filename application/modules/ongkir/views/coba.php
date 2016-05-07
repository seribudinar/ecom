<!DOCTYPE html>
<html>
<head>
	<title>Coba RajaOngkir</title>
	<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>
	<script>
	$(document).ready(function(){
		cariPropinsi('#combopropinsi');
		cariPropinsi('#descombopropinsi');

		$('#combopropinsi').change(function(){
			$('#combokota').show();
			var idprovince = $('#combopropinsi').val();
			cariKota(idprovince,'#combokota');
		});

		$('#descombopropinsi').change(function(){
			$('#descombokota').show();
			var idprovince = $('#descombopropinsi').val();
			cariKota(idprovince,'#descombokota');
		});
	});

	function cariPropinsi(id){
		$('#combokota').hide();
		$('#descombokota').hide();

		$(id).html('loading..');

		$.ajax({
			url:'<?php echo base_url()."ongkir/propinsi";?>',
			dataType: 'json',
			success: function(response){
				$(id).html('');
				province = '';

				$.each(response['rajaongkir']['results'], function(i,n){
					province = '<option value="'+n['province_id']+'">'+n['province']+'</option>';
					province = province + '';
					$(id).append(province); 
				});
			}, 
			error:function(){
				$(id).html('ERROR');
			}
		});
	}

	function cariKota(idprovince,id){
		$.ajax({
			url:'<?php echo base_url()."ongkir/kota/'+idprovince+'";?>',
			dataType:'json',
			data:{province:idprovince},success:function(response){
				$(id).html('');
				city = '';

				$.each(response['rajaongkir']['results'], function(i,n){
					city = '<option value="'+n['city_id']+'">'+n['type']+' '+n['city_name']+'</option>';
					city = city + '';
					$(id).append(city);
				});
			},
			error:function(){
				$(id).html('ERROR');
			}
		});
	}

	function cekHarga(){
		var origin = $('#combopropinsi').val();
		var destination = $('#descombopropinsi').val();
		var weight = $('#berat').val();
		var courier = $('#service').val();
		$.ajax({
			url:'<?php echo base_url()."ongkir/cek_harga/'+origin+'/'+destination+'/'+weight+'/'+courier+'";?>',
			data:{origin:origin,destination:destination,weight:weight,courier:courier},
			success:function(response){
				// var trHTML = '';
    //     		$.each(response, function (i, item) {
    //         		trHTML += '<tr><td>' + item.service + '</td><td>' + item.description + '</td><td>' + item.etd + '</td><td>' + item.value + '</td></tr>';
    //     		});
    //     		$('#records_table').append(trHTML);

        		var cost = '';
				

				$.each(response['rajaongkir']['results'], function(i,n){
					cost = '<tr><td>'+n['service']+'</td></tr>';
					cost = cost + '';
					$('#records_table').append(cost);
				});


				// $('#resultsbox').html(response);
			},
			error:function(){
				$('#resultsbox').html('ERROR');
			}
		});
	}
	</script>
</head>
<body>
<p>Asal</p>
<select name="" id="combopropinsi">
	<option value="">- Provinsi</option>
</select>
<select name="" id="combokota">
	<option value="">- Kota</option>
</select>
<p>Tujuan</p>
<select name="" id="descombopropinsi">
	<option value="">- Provinsi</option>
</select>
<select name="" id="descombokota">
	<option value="">- Kota</option>
</select>
<br/>
<select name="service" id="service">
	<option value="all">semua</option>
	<option value="jne">JNE</option>
	<option value="pos">POS</option>
	<option value="tiki">TIKI</option>
</select>
<input type="number" name="weight" id="berat"> 
<button type="button" onclick="cekHarga()">Cek Harga</button>

<br />
<table id="records_table" border='1'>
	<thead>
		<tr>
			<th>Kurir</th>
			<th>Servis</th>
			<th>Deskripsi Servis</th>
			<th>Lama Kirim (hari)</th>
			<th>Total Biaya (Rp)</th>
		</tr>
	</thead>
	<tbody id="resultsbox"></tbody>
</table>
<!-- <div id="resultsbox"></div> -->
</body>
</html>