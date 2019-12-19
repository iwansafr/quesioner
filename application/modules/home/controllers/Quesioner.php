<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Quesioner extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('home_model');
		$this->load->model('question_model');
		$this->load->helper('content');
		$this->load->library('ZEA/Zea');
		$this->load->library('esg');
	}
	public function index()
	{
		$this->home_model->home();
		$this->load->view('index');
	}
	public function survey()
	{
		$this->home_model->home();
		$this->load->view('index');
	}
	public function done()
	{
		$id = @intval($_GET['id']);	
		$data = $this->question_model->get_responden($id,false);
		$this->load->view('index',['data'=>$data]);
	}
	public function question()
	{
		$id = @intval($_GET['id']);
		$this->home_model->home();
		$data = $this->question_model->get_responden($id);
		if(!empty($data))
		{
			$this->question_model->save($id);
		}
		$this->load->view('index',['data'=>$data]);	
	}
}