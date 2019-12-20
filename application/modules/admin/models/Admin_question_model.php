<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Admin_question_model extends CI_Model
{

	public function responden_detail($id = 0)
	{
		$responden = $this->db->query('SELECT * FROM responden WHERE id = ?', $id)->row_array();

		$kelamin = ['Perempuan','Laki-laki'];
		$responden['kelamin'] = $kelamin[$responden['kelamin']];
		$responden['usia'] = $this->question_model->usia()[$responden['usia']];
		$responden['gol'] = $this->question_model->golongan()[$responden['gol']];
		$responden['pend_terakhir'] = $this->question_model->pend_terakhir()[$responden['pend_terakhir']];
		$responden['masa_kerja'] = $this->question_model->masa_kerja()[$responden['masa_kerja']];
		$responses = $this->db->query('SELECT rs.*,q.title,q.cat_id,q.number FROM responses AS rs INNER JOIN question AS q ON(rs.question_id=q.id) WHERE rs.responden_id = ? ORDER BY number ASC',$id)->result_array();
		$category = $this->db->query('SELECT id,title FROM question_cat')->result_array();
		$new_responses = [];
		foreach ($category as $key => $value) 
		{
			foreach ($responses as $qkey => $qvalue) 
			{
				if($qvalue['cat_id'] == $value['id'])
				{
					$new_responses[$value['id']][] = $qvalue;
				}
			}
		}
		$data['options'] = $this->question_model->options();
		$data['responden'] = $responden;
		$data['category'] = $category;
		$data['responses'] = $new_responses;
		return $data;
	}

	public function survey()
	{
		$this->db->select('id,title');
		$cat = $this->db->get('question_cat')->result_array();
		$category = [];
		foreach ($cat as $key => $value) 
		{
			$category[] = slug($value['title']);
		}
		$data = [];
		$answer = $this->db->query('SELECT r.id,r.answer,q.cat_id FROM responses AS r LEFT JOIN question AS q ON(q.id=r.question_id) INNER JOIN question_cat AS c ON(c.id=q.cat_id)')->result_array();
		$group_ans = [];
		foreach ($cat as $ckey => $cvalue)
		{
			foreach ($answer as $key => $value)
			{
				if($value['cat_id'] == $cvalue['id'])
				{
					$group_ans[$cvalue['id']][] = $value;
				}
			}
		}
		for($i=1;$i<=7;$i++)
		{
			
		}
		pr($group_ans);die();
		return $data;
	}
}