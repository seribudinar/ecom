<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Web extends MX_Controller
{

	function __construct()
	{
        parent::__construct();
    }

	public function index()
	{
		$this->load->model('mdl_web');
		$this->load->module('template');
        $data = array (
        	'query'		=> $this->mdl_web->get('id_category'),
	        'sessid'	=> $this->session->userdata('id'),
	        'title'		=> "Situs Belanja Online Mudah, Cepat, Aman, Berkah",
	        'style' 	=> '<style type="text/css">body {background-color: #FFFFFF;}.ui.menu .item img.logo {margin-right: 1em;}.main.container {margin-top: 7em;}.wireframe {margin-top: 2em;}.ui.footer.segment{}</style>'
	    );

        $this->template->header($data);
        $this->template->nav_menu($data);
		$this->load->view('web', $data);
        $this->template->footer();
	}
}
