<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Buy_transactions extends MX_Controller
{

    function __construct() {
        parent::__construct();
        $this->load->model('cart/Mdl_checkout', 'mdl_checkout');
        $this->load->module('template');
    }

    public function index()
    {
        if ($this->lib->login() != "")
        {
            $id_user = $this->session->userdata('id');

            $data = array(
                'check_user' => $this->mdl_checkout->get_where_custom('buyer', $id_user),
                'title' => 'Transaksi Beli',
                'style' => '<style type="text/css">.main.container, .ui.vertical.segment {margin-top: 7em;}.ui.menu .item img.logo {margin-right: 1em;}</style>'
            );

            $this->template->header($data);
            $this->template->nav_menu();
            $this->template->sidebar_dashboard();
            $this->load->view('buy', $data);
            $this->template->footer();

        }
        else
        {
            $this->session->set_flashdata('not_login', '<p style="color: red;">Silahkan login sebelum menjual barang.</p>');
            redirect('login');
        }
    }
}