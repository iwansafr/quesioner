<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Question extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->db->cache_off();
		$this->load->model('esg_model');
		$this->load->model('admin_model');
		$this->load->model('question_model');
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

	public function responden()
	{
		$this->load->view('index');
	}
	public function clear_responden()
	{
		$this->load->view('question/responden');
	}

	public function responden_detail($id = 0)
	{
		$data = $this->question_model->responden_detail($id);
		$this->load->view('index',['data'=>$data]);
	}

	public function survey()
	{
		$data = $this->question_model->survey();
		$this->load->view('index',['data'=>$data]);
	}
}