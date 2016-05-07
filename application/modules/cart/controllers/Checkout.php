<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Checkout extends MX_Controller
{

    function __construct() {
        parent::__construct();
		$this->load->model('mdl_cart');
		$this->load->model('mdl_checkout');
        $this->load->model('products/Mdl_products', 'mdl_products');
		$this->load->module('template');
    }

    public function index()
    {
    	if ($this->lib->login() != "")
		{
   //      	$id_user = $this->session->userdata('id');

			// $data = array(
			// 	'check_user' => $this->mdl_cart->get_where_custom('seller', $id_user),
			// 	'title' => 'Transaksi Jual',
			// 	'style' => '<style type="text/css">.main.container, .ui.vertical.segment {margin-top: 7em;}.ui.menu .item img.logo {margin-right: 1em;}</style>'
			// );

			// $this->template->header($data);
			// $this->template->nav_menu();
			// $this->template->sidebar_dashboard();
			// $this->load->view('sell', $data);
			// $this->template->footer();

			// $uri_products = $this->uri->segment(3);
			// echo $uri_products;

			redirect('cart/ty');

    	}
    	else
    	{
    		$this->session->set_flashdata('not_login', '<p style="color: red;">Silahkan login sebelum menjual barang.</p>');
			redirect('login');
    	}
    }

    function form()
    {
    	if ($this->lib->login() != "")
		{
			$uri_cart = $this->uri->segment(4);
			$detail_cart = $this->mdl_cart->get_where_custom('id_cart', $uri_cart);
   			foreach ($detail_cart->result() as $row_cart) {
   				$id_products = $row_cart->id_products;
   			}
   			$detail_products = $this->mdl_products->get_where_custom('id_products', $id_products);
   			foreach ($detail_products->result() as $row_products) {
   				$productsid = $row_products->name_products;
   			}

			$data = array(
				'id_cart' => $uri_cart,
				'id_products' => $productsid,
				'title' => 'Formulir Checkout',
				'style' => '<style type="text/css">.main.container, .ui.vertical.segment {margin-top: 7em;}.ui.menu .item img.logo {margin-right: 1em;}</style>'
			);
   			
			$this->template->header($data);
			$this->template->nav_menu();
			$this->load->view('checkout', $data);
			$this->template->footer();
    	}
    	else
    	{
    		$this->session->set_flashdata('not_login', '<p style="color: red;">Silahkan login sebelum menjual barang.</p>');
			redirect('login');
    	}
    }

    function auth()
    {
    	if ($this->lib->login() != "")
		{
			$uri_cart = $this->input->post('id_cart');
   			// $id_user = $this->session->userdata('id');

   			$detail_cart = $this->mdl_cart->get_where_custom('id_cart', $uri_cart);
   			foreach ($detail_cart->result() as $row_cart) {
   				$no_invoice = $row_cart->no_invoice;
   				$order_code = $row_cart->order_code;
   				$id_products = $row_cart->id_products;
   				$seller = $row_cart->seller;
   				$buyer = $row_cart->buyer;
   				$qty = $row_cart->num_qty;
   				$price = $row_cart->num_price;
   			}
   			$data = array(
   				'no_invoice' => $no_invoice,
   				'order_code' => $order_code, 
   				'id_products' => $id_products,
   				'seller' => $seller,
   				'buyer' => $buyer,
   				'qty' => $qty,
   				'price' => $price,
   				'nama_penerima' => $this->input->post('penerima'),
   				'alamat_penerima' => $this->input->post('almt'),
   				'telepon' => $this->input->post('tlp'),
   				'province' =>$this->input->post('province'),
   				'city' => $this->input->post('city'),
   				'postal_code' => $this->input->post('postal_code'),
   				'courier' => $this->input->post('kurir'),
   				'bank' => $this->input->post('bank'),
   				'order_date' => date("Y-m-d"),
   				'message' => $this->input->post('catatan'),
   				'status' => 1    
   			);

   			$this->mdl_checkout->_insert($data);
   			$this->mdl_cart->_delete('id_cart', $uri_cart);
			$this->session->set_flashdata('success_delete', '<div class="ui success message"><i class="close icon"></i><div class="header">Barang berhasil dimasukan ke checkout.</div></div>');
			redirect('cart/ty');

    	}
    	else
    	{
    		$this->session->set_flashdata('not_login', '<p style="color: red;">Silahkan login sebelum menjual barang.</p>');
			redirect('login');
    	}
    }
    
}