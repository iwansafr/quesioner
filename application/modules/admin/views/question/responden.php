<?php defined('BASEPATH') OR exit('No direct script access allowed');

$form = new zea();

$form->init('roll');
$form->setTable('responden');
$form->search();

$form->addInput('id','plaintext');
$form->setLabel('id','action');
$form->setPlainText('id',[base_url('admin/question/responden_detail/{id}')=>'detail',base_url('admin/question/lmx/{id}')=>'lmx']);
$form->addInput('nama','plaintext');
$form->setNumbering(true);
$form->setUrl('admin/question/clear_responden');
$form->form();