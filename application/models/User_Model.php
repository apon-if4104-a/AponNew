<?php

class User_Model extends CI_Model
{
    public function Input_User()
    {
        $user = [
            "username" => $this->input->post('usernameuser', true),
            "namaUser" => $this->input->post('Fullname', true),
            "email" => $this->input->post('emailusr', true),
            "noHP" => $this->input->post('hp', true),
            "passwod" => $this->input->post('pwduser1', true)
        ];

        $this->db->insert('user', $user);
    }
  }