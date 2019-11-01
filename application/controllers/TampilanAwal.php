<?php

class TampilanAwal extends CI_Controller
{
    public function login()
    {
        $username = $this->input->post('username1');
        $pass = $this->input->post('pwd');
        $this->load->model('User_Model');
        $cek=$this->User_Model->login_user($username,$pass)->num_rows();
        $cekUser = $this->User_Model->cek_username($username)->num_rows();

        if ($cekUser > 0) {
            if($cek > 0 && $username == "admin" && $pass == "admin123"){
                $this->load->view('Home/HalamanAdmin');
            }else if($cek > 0){

                $data_session = [
                    'nama' => $username,
                    'status' => "login"
                ];
        
                $this->session->set_userdata($data_session);
                $this->load->view('Home/headerUser');
                $this->load->view('Home/LandingUser');
            }else{
                $this->session->set_flashdata('passwordsalah','Password Anda Salah');
                $this->load->view('Home/headerLogin');
                $this->load->view('Home/LandingUser'); 
            };
            
        }else {
            $this->session->set_flashdata('usernamesalah','Username Anda Salah');
            $this->load->view('Home/headerLogin');
            $this->load->view('Home/LandingUser');

        };
    }

    public function logout(){
        $this->session->sess_destroy();
        redirect(base_url('index.php/Home'));
    }
    
        
}
