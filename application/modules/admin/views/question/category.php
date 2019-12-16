<?php defined('BASEPATH') OR exit('No direct script access allowed');

$edit = new zea();

$edit->init('edit');
$edit->setTable('question_cat');

$edit->addInput('title','text');
$edit->addInput('description','textarea');


$roll = new zea();

$roll->init('roll');
$roll->setTable('question_cat');

$roll->addInput('id','hidden');
$roll->setNumbering(true);
$roll->setEdit(true);
$roll->setDelete(true);

$roll->addInput('title','plaintext');

?>
<div class="col-md-3">
	<?php $edit->form();?>
</div>
<div class="col-md-9">
	<?php $roll->form();?>
</div>