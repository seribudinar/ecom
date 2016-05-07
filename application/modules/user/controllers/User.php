<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class User extends MX_Controller
{

    function __construct() {
        parent::__construct();
    }

    public function index()
    {
        if ($this->lib->login() != "")
        {
            //echo "Halaman Profil";
            //echo br();
            $data = array(
                'title' => "Halaman Profil",
                'nama' => $this->session->userdata('nama_lengkap'),
                'email' => $this->session->userdata('email'),
                'username' => $this->session->userdata('username')
            );

            $this->load->view('user', $data);
        }
        else
        {
            $this->session->set_flashdata('not_login', '<div class="ui error message"><i class="close icon"></i><div class="header">Silahkan Login atau Register dahulu.</div></div>');
            redirect('login');
        }
    }

}