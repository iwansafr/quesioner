<?php defined('BASEPATH') OR exit('No direct script access allowed');

$form = new zea();
$form->setTable('responden');
$form->init('edit');

$form->addInput('nama','text');
$form->addInput('usia','dropdown');
$form->setOptions('usia',$this->question_model->usia());

$form->addInput('gol','dropdown');
$form->setLabel('gol','Golongan');
$form->setOptions('gol',$this->question_model->golongan());

$form->addInput('kelamin','dropdown');
$form->setOptions('kelamin',['Perempuan','Laki-laki']);
$form->setLabel('kelamin','jenis kelamin');

$form->addInput('pend_terakhir','dropdown');
$form->setLabel('pend_terakhir','pendidikan terakhir');
$form->setOptions('pend_terakhir',$this->question_model->pend_terakhir());

$form->addInput('masa_kerja','dropdown');
$form->setLabel('masa_kerja','Masa Kerja');
$form->setOptions('masa_kerja',$this->question_model->masa_kerja());

$form->setRequired('All');
$form->form();

if(!empty($form->insert_id))
{
	header('location:'.base_url('survey/question?id='.$form->insert_id));
}