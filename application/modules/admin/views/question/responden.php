<?php defined('BASEPATH') OR exit('No direct script access allowed');

$form = new zea();

$form->init('roll');
$form->setTable('responden');
$form->search();
$form->setHeading('<a href="'.base_url('admin/question/download').'" class="btn btn-default btn-sm"><i class="fa fa-file-excel"></i> Download Excel</a> | <a href="'.base_url('admin/question/clean').'" class="btn btn-default btn-sm"><i class="fa fa-trash"></i> Bersihkan</a>');
$form->addInput('id','plaintext');
$form->setLabel('id','action');
$form->setPlainText('id',[base_url('admin/question/responden_detail/{id}')=>'detail',base_url('admin/question/download/{id}')=>'Download Excel']);
$form->addInput('nama','plaintext');
$form->setNumbering(true);
$form->setUrl('admin/question/clear_responden');
$form->setDelete(true);
$form->form();