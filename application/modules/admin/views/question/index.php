<?php defined('BASEPATH') OR exit('No direct script access allowed');

$form = new zea();

$form->init('roll');
$form->setTable('question');

$form->search();
$form->addInput('id','hidden');
$form->setNumbering(true);
$form->addInput('cat_id','dropdown');
$form->setLabel('cat_id','category');
$form->tableOptions('cat_id','question_cat','id','title');
$form->setAttribute('cat_id','disabled');

$form->addInput('number','plaintext');

$form->addInput('title','plaintext');

$form->setEdit(true);
$form->setDelete(true);

$form->setUrl('admin/question/clear_list');
$form->form();