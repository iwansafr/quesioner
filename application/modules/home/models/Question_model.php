<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Question_model extends CI_model
{
	public function get_responden($id,$full = true)
	{
		$data = [];
		if(!empty($id))
		{
			$data = $this->db->get_where('responden',['id'=>$id])->row_array();
			if(!empty($data))
			{
				$kelamin = ['Perempuan','Laki-laki'];
				$data['kelamin'] = $kelamin[$data['kelamin']];
				$data['usia'] = $this->usia()[$data['usia']];
				$data['gol'] = $this->golongan()[$data['gol']];
				$data['pend_terakhir'] = $this->pend_terakhir()[$data['pend_terakhir']];
				$data['masa_kerja'] = $this->masa_kerja()[$data['masa_kerja']];

				if($full)
				{
					$this->db->select('id,title');
					$category = $this->db->get_where('question_cat')->result_array();
					$this->db->select('id,cat_id,number,title');
					$this->db->order_by('number','ASC');
					$question = $this->db->get_where('question')->result_array();

					if(!empty($category) && !empty($question))
					{
						$new_question = [];
						foreach ($category as $key => $value) 
						{
							foreach ($question as $qkey => $qvalue) 
							{
								if($qvalue['cat_id'] == $value['id'])
								{
									$new_question[$value['id']][] = $qvalue;
								}
							}
						}
						$data['category'] = $category;
						$data['question'] = $new_question;
					}
				}
			}
		}
		return $data;
	}

	public function options()
	{
		return [
			1=>'Sangat Tidak Setuju',
			2=>'Tidak Setuju',
			3=>'Agak Tidak Setuju',
			4=>'Netral',
			5=>'Agak Setuju',
			6=>'Setuju',
			7=>'Sangat Setuju'
		];
	}

	public function save($id = 0)
	{
		if(!empty($id))
		{
			$data = $this->input->post();
			if(!empty($data['question']))
			{
				$data_post = [];
				foreach ($data['question'] as $key => $value) 
				{
					$data_post[] = [
						'responden_id'=>$id,
						'question_id'=>$key,
						'answer'=>$value
					];
				}
				if($this->db->insert_batch('responses', $data_post))
				{
					header('location:'.base_url('survey/done?id='.$id));
				}
			}
		}
	}

	public function usia()
	{
		return ['1'=>'< 31 Tahun','2'=>'31-40 Tahun','3'=>'41-50 Tahun','4'=>'> 50 tahun'];
	}
	public function golongan()
	{
		return ['Tanpa Golongan','I','II','III','IV'];
	}
	public function pend_terakhir()
	{
		return [1=>'SD',2=>'SLTP',3=>'SLTA',4=>'D3',5=>'S1',6=>'S2',7=>'S3'];
	}
	public function masa_kerja()
	{
		return [1=>'1 - 4 tahun',2=>'5 - 10 tahun',3=>'11 - 15 tahun',4=>'16 - 20 tahun',5=>'Di atas 20 tahun'];
	}

	public function question()
	{

	}
}