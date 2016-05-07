<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Apaja extends MX_Controller
{

    function __construct() {
        parent::__construct();
    }

    public function index()
    {
        if ($this->lib->login() != "")
        {
            echo "Halaman Saya";
            echo br();
            echo anchor('', 'Home');
        }
        else
        {
            $this->session->set_flashdata('not_login', '<p style="color: red;">Silahkan Login atau Register dahulu.</p>');
            redirect('login');
        }
    }

}