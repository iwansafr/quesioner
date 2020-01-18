<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Question extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->db->cache_off();
		$this->load->model('esg_model');
		$this->load->model('admin_model');
		$this->load->model('admin_question_model');
		$this->load->model('home/question_model');
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

	public function download($id = 0)
	{
		$this->load->library('table');
		$responden_id = @intval($id);
		$data          = [];
		if(!empty($responden_id))
		{
			$data_tmp      = $this->db->query('SELECT rd.*,q.title,rs.answer,qc.title AS kategori FROM responden AS rd INNER JOIN responses AS rs ON(rs.responden_id = rd.id) INNER JOIN question AS q ON(q.id = rs.question_id) INNER JOIN question_cat AS qc ON(qc.id=q.cat_id) WHERE rd.id = ?', $responden_id)->result_array();
		}else{
			$data_tmp      = $this->db->query('SELECT rd.*,q.title,rs.answer,qc.title AS kategori FROM responden AS rd INNER JOIN responses AS rs ON(rs.responden_id = rd.id) INNER JOIN question AS q ON(q.id = rs.question_id) INNER JOIN question_cat AS qc ON(qc.id=q.cat_id)')->result_array();
		}
		$usia          = $this->question_model->usia();
		$golongan      = $this->question_model->golongan();
		$pend_terakhir = $this->question_model->pend_terakhir();
		$masa_kerja    = $this->question_model->masa_kerja();
		$options       = $this->question_model->options();
		$kelamin       = ['Perempuan','Laki-laki'];
		// pr($data_tmp);die();
		if(!empty($data_tmp))
		{
			$data[0] = [
				'nama','usia','golongan','pend_terakhir','masa_kerja','kelamin','kategori','pertanyaan','jawaban'
			];
			foreach ($data_tmp as $key => $value) 
			{
				$current_value                  = [];
				$current_value['nama']          = $value['nama'];
				$current_value['usia']          = $usia[$value['usia']];
				$current_value['golongan']      = $golongan[$value['gol']];
				$current_value['pend_terakhir'] = $pend_terakhir[$value['pend_terakhir']];
				$current_value['masa_kerja']    = $masa_kerja[$value['masa_kerja']];
				$current_value['kelamin']       = $kelamin[$value['kelamin']];
				$current_value['kategori']      = $value['kategori'];
				$current_value['title']         = $value['title'];
				$current_value['options']       = $options[$value['answer']];
				$data[]                         = $current_value;
			}
		}

		$this->load->view('admin/question/download',['data'=>$data]);
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
		$data = $this->admin_question_model->responden_detail($id);
		$this->load->view('index',['data'=>$data]);
	}

	public function survey()
	{
		$data = $this->admin_question_model->survey();
		$this->load->view('index',['data'=>$data]);
	}
}