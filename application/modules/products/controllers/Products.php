<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Products extends MX_Controller
{

	function __construct()
	{
        parent::__construct();
		$this->load->module('template');
    }

	public function index($param='')
	{
		header('Location: '.base_url().'');
	}

	function detail()
	{
		$this->load->model('mdl_products');
		$this->load->model('category/Mdl_category', 'mdl_category');

		$slug_category = $this->uri->segment(2);
		$slug_products = $this->uri->segment(3);
		$col = "slug";
        $cat = $this->mdl_category->count_where($col, $slug_category);
        if ($cat === 1)
        {
        	$query_category = $this->mdl_category->get_where_custom($col, $slug_category);
			foreach ($query_category->result() as $row_category)
	        {
                $data['name_category'] = $row_category->category;
                $data['slug_category'] = $row_category->slug;
	        }

	        $query_products = $this->mdl_products->join_products($col, $slug_products);
	        if ($query_products->num_rows() === 1)
	        {
	        	foreach ($query_products->result() as $row_products)
	        	{
	        		$data['id_products'] = $row_products->id_products;
	        		$data['name_products'] = $row_products->name_products;
	        		$data['description_products'] = $row_products->description;
	        		$data['qty_products'] = $row_products->qty;
	        		$data['nama_lengkap'] = $row_products->nama_lengkap;
	        		$data['price'] = $row_products->price;
	        		$data['id_seller'] = $row_products->id_user;
	        		$data['image_products'] = $row_products->image1;
	        	}

	        	$data['title'] = $data['name_products'];
	        	$this->template->header($data);
	        	$this->template->nav_menu($data);
	        	$this->load->view('products', $data);
	        	$this->template->footer();
	        }
	        else
	        {
	        	echo "Barang tidak ada!";
	        }
        }
        else
        {
        	echo "Tidak Ada";
        }
	}

	function order()
	{
		if ($this->lib->login() == "")
		{
			$this->session->set_flashdata('not_login', '<p style="color: red;">Silahkan login sebelum membeli barang.</p>');
			redirect('login');
		}
		else
		{
			$this->load->model('mdl_products');
			$this->load->model('cart/Mdl_cart', 'mdl_cart');

			$url = $this->input->post('_url');
			$order_now = date("Ymd");
			$cek_invoice = $this->mdl_cart->custom_get_max('no_invoice', 'no_invoice', $order_now);
			$kode_invoice = "";
			foreach($cek_invoice->result() as $ck)
			{
				if($ck->no_invoice == NULL)
				{
					$kode_invoice = $order_now.'00001';
				}
				else
				{
					$kd_lama = $ck->no_invoice;
					$kode_invoice = $kd_lama+1;
				}
			}
			$order_code = rand(101, 999);
			$pric = $this->input->post('_qty') * $this->input->post('_price');
			
			$data = array(
					'no_invoice' => $kode_invoice,
					'order_code' => $order_code,
					'buyer' => $this->session->userdata('id'),
					'seller' => $this->input->post('_seller'),
					'id_products' => $this->input->post('_id'),
					'num_qty' => $this->input->post('_qty'),
					'num_price' => $pric,
					'order_date' => date("Y-m-d")
			);
			$insert = $this->mdl_cart->_insert($data);
			

			$this->session->set_flashdata('result', '<div class="ui success message"><i class="close icon"></i><div class="header">Berhasil ditambahkan ke Cart</div></div>');
			redirect($url);


			//echo "Anda sudah login dengan email ".$this->session->userdata('email')."<br/>";
			//echo "Success ID ".$id_products."<br/>";
			//echo "Banyak yang dibeli ".$this->input->post('_qty');
		}
	}

	function me()
	{
		if ($this->lib->login() == "")
		{
			$this->session->set_flashdata('not_login', '<div class="ui success message"><i class="close icon"></i><div class="header">Silahkan login terlebih dahulu.</div></div>');
			redirect('login');
		}
		else
		{
			$this->load->model('mdl_products');

			$id_user = $this->session->userdata('id');
			// echo $id_user;
			// $this->template->header($data);
			$data = array (
				'query' => $this->mdl_products->get_where_custom('id_user', $id_user),
				'title' => 'Data Barang',
				'style' => '<style type="text/css">.main.container, .ui.vertical.segment {margin-top: 7em;}.ui.menu .item img.logo {margin-right: 1em;}</style>'
			);

        	$this->template->header($data);
			$this->template->nav_menu();
			$this->template->sidebar_dashboard();
			$this->load->view('me', $data);
        	$this->template->footer();
		}
	}
}
