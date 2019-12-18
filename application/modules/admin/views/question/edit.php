<?php defined('BASEPATH') OR exit('No direct script access allowed');

$form = new zea();

$id = @intval($_GET['id']);
if(!empty($id))
{
	$form->setId($id);
}

$form->init('edit');
$form->setTable('question');

$form->addInput('cat_id','dropdown');
$form->setLabel('cat_id','category');
$form->tableOptions('cat_id','question_cat','id','title');

$form->addInput('number','text');
$form->setType('number','number');

$form->addInput('title','text');

$form->form();