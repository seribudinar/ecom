<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ongkir extends MX_Controller
{

	function __construct() {
        parent::__construct();
		$this->load->library('rajaongkir');
        $this->key = 'f096681274cb5f40a2531422cdc53315';
    }

    public function index()
    {
		// $data['province'] = $this->rajaongkir->province();
    	$this->load->view('coba');
    }

	function propinsi()
	{
		echo $this->rajaongkir->province();
	}

	function kota($province_id, $city_id = NULL)
	{
		echo $this->rajaongkir->city($province_id, $city_id = NULL);
	}

	function cek_harga($origin, $destination, $weight, $courier = NULL)
	{
		echo $this->rajaongkir->cost($origin, $destination, $weight, $courier = NULL);
		// $costarray = json_decode($ss);
		// echo $costarray;
		// $results = $costarray->rajaongkir->results;
		// if(!empty($results)):
		// 	foreach($results as $r):
		// 		foreach($r->costs as $rc):
		// 			foreach($rc->cost as $rcc):
		// 				echo $r->code."<br/>".$rc->service."<br/>".$rc->description."<br/>".$rcc->etd."<br/>".$rcc->value."<br/>";
		// 			endforeach;
		// 		endforeach;
		// 	endforeach;
		// endif;
	}

	function cek()
	{

		$curl = curl_init();

		curl_setopt_array($curl, array(
		  CURLOPT_URL => "http://rajaongkir.com/api/starter/cost",
		  CURLOPT_RETURNTRANSFER => true,
		  CURLOPT_ENCODING => "",
		  CURLOPT_MAXREDIRS => 10,
		  CURLOPT_TIMEOUT => 30,
		  CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
		  CURLOPT_CUSTOMREQUEST => "POST",
		  CURLOPT_POSTFIELDS => "origin=501&destination=114&weight=1700&courier=all",
		  CURLOPT_HTTPHEADER => array(
		    "content-type: application/x-www-form-urlencoded",
		    "key: f096681274cb5f40a2531422cdc53315"
		  ),
		));

		$response = curl_exec($curl);
		$err = curl_error($curl);

		curl_close($curl);

		if ($err) {
		  echo "cURL Error #:" . $err;
		} else {
		  echo $response;
		}
	}
}
