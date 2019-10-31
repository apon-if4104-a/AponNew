<?php

class user extends CI_Controller
{
  public function __construct()
  {
    parent::__construct();
    $this->load->helper('url');
    $this->load->library('form_validation');
  }
  public function daftaruser()
  {
    //Input
		$this->load->model('User_Model');
		/*$this->form_validation->set_rules('IDObatI', 'IDObatI', 'integer');
		$this->form_validation->set_rules('IDObatI', 'ID Obat', 'required');
		$this->form_validation->set_rules('NamaObatI', 'Nama Obat', 'required');
		$this->form_validation->set_rules('HargaObatI', 'Harga Obat', 'min_length[2]');
		$this->form_validation->set_rules('HargaObatI', 'Harga Obat', 'integer');*/
			$this->User_Model->Input_User();
			$this->load->view('Home/headerUser');
      $this->load->view('Home/LandingUser');
		}
  }
