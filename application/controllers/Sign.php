<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Sign extends CI_Controller
{
	public function index()
	{
		if(!isset($_SESSION['login'])){
			$this->load->view('login');
		}else{
			$this->load->view('general');
		}
	}

	public function action_login()
	{
		$this->load->view('action_login');
	}

	public function home()
	{
		$this->load->view('general');
	}

	public function login()
	{
		$this->load->view('login');
	}

	public function verif()
	{
		$this->load->view('captcha');
	}

	public function logout()
	{
		$this->load->view('logout');
	}
}