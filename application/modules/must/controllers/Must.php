<?php if (!defined('BASEPATH')) exit('No direct script access allowed');
class Must extends MX_Controller
{

    function __construct() {
        parent::__construct();
    }

    function _show_name()
    {
        if ($this->lib->login() != "")
        {
            $name = $this->session->userdata('nama_lengkap');
            $username = $this->session->userdata('username');
            //echo br();
            //echo anchor('apaja', 'ApAja');
            //echo nbs(3);
            echo anchor('u/'.$username, $name);
        }
        else
        {
            echo "";
        }
    }

}