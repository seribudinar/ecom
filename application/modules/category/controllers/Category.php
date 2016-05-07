<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Category extends MX_Controller
{

	function __construct()
	{
        parent::__construct();
    }

	public function index($param='')
	{
		header('Location: '.base_url().'');
	}

	function show()
	{
		$this->load->model('mdl_category');
		$this->load->model('products/Mdl_products', 'mdl_products');

		$slug = $this->uri->segment(2);
		$col = "slug";
        $cat = $this->mdl_category->count_where($col,$slug);
        if ($cat > 0)
        {
        	$cat_query = $this->mdl_category->get_where_custom($col, $slug);
        	foreach ($cat_query->result() as $row_category)
			{
				$id_category = $row_category->id_category;
				$name_category = $row_category->category;
				$slug_category = $row_category->slug;
			}
			$this->load->module('template');
			$data = array (
				'query_products' => $this->mdl_products->get_where_custom('id_category', $id_category),
				'title' => $name_category,
				'name_category' => $name_category,
				'slug_category' => $slug_category,
				'style' => '<style type="text/css">h3 > b{color:#21BA45;}</style>'
			);
			$this->template->header($data);
			$this->template->nav_menu();
			$this->load->view('category', $data);
			$this->template->footer();
        }
        else
        {
        	echo "Tidak Ada";
        }

		//$this->load->view('category', $data);
	}

	
	// function url()
	// {
	// 	echo url_title('Pelembeb Muka Wanita!! Murah', 'dash', TRUE);
	// }
	// function pop()
	// {
	// 	$atts = array(
	//        'width'       => 800,
	//         'height'      => 600,
	//         'scrollbars'  => 'yes',
	//         'status'      => 'yes',
	//         'resizable'   => 'yes',
	//         'screenx'     => 0,
	//         'screeny'     => 0,
	//         'window_name' => '_blank'
	// 		);
	
	// 	echo anchor_popup('news/local/123', 'Click Me!', $atts);
	// }
	
}
