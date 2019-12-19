<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Question extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->db->cache_off();
		$this->load->model('esg_model');
		$this->load->model('admin_model');
		$this->load->library('esg');
		$this->load->library('ZEA/zea');
		$this->esg_model->init();
	}
	public function index()
	{
		$this->load->view('index');
	}

	public function list()
	{
		$this->load->view('index');
	}
	public function clear_list()
	{
		$this->load->view('question/index');
	}
	public function edit()
	{
		$this->load->view('index');
	}
	public function category()
	{
		$this->load->view('index');
	}
	public function clear_category()
	{
		$this->load->view('question/category');
	}

	public function survey()
	{
		$this->load->view('index');
	}
}