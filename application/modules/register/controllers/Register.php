<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends MX_Controller {

	function __construct() {
        parent::__construct();
    }

	public function index()
	{
		if ($this->lib->login() != "")
		{
			redirect('');
		}
		else
		{
			$this->load->module('template');
			$data = array(
				'title' => 'Daftar dan Rasakan untungnya berjualan',
				'style' => '<style type="text/css">body {background-color: #DADADA;}.ui.two.column.centered.grid {margin-top: 1px;}</style>'
			);
			$this->template->header($data);
	        //echo Modules::run('template/header', $data);
			$this->load->view('register');
			$this->template->footer();
		}
	}

	function submit()
	{
        $this->form_validation->set_rules('_username', 'Username', 'required|min_length[5]|max_length[20]|is_unique[tbl_user.username]|xss_clean');
        $this->form_validation->set_rules('_email', 'Email', 'required|min_length[5]|valid_email|is_unique[tbl_user.email]|xss_clean');
        $this->form_validation->set_rules('_password', 'Password', 'required|min_length[5]|xss_clean');
        $this->form_validation->set_rules('_nama_lengkap', 'Nama Lengkap', 'required|min_length[5]|xss_clean');
        $this->form_validation->set_rules('gender', 'Jenis Kelamin', 'required|xss_clean');
        $this->form_validation->set_rules('_alamat', 'Alamat', 'required|min_length[5]|xss_clean');

        if ($this->form_validation->run() == FALSE)
        {
        	$this->load->view('register');
        }
        else
        {
        	$username = $this->input->post('_username');
        	$data = array(
		        'username'		=> $this->input->post('_username'),
		        'email'			=> $this->input->post('_email'),
		        'password'		=> md5(md5(sha1($this->input->post('_password')))),
		        'nama_lengkap'	=> $this->input->post('_nama_lengkap'),
		        'alamat'		=> $this->input->post('_alamat'),
		        'gender'		=> $this->input->post('gender'),
		        'ip_address'	=> $this->input->ip_address(),
		        'user_agent'	=> $this->input->user_agent()
			);

			mkdir('./assets/img/user/'.$username, 0777, TRUE);
			$this->db->insert('tbl_user', $data);
			$this->session->set_flashdata('success', '<div class="ui success message"><i class="close icon"></i><div class="header">Horee!!! Selamat Anda berhasil mendaftar di ApAja.</div></div>');
			redirect('register');
        }
	}
}
