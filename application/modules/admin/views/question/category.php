<?php defined('BASEPATH') OR exit('No direct script access allowed');

$edit = new zea();

$id = @intval($_GET['id']);
if(!empty($id))
{
	$edit->setId($id);
}
$edit->init('edit');
$edit->setTable('question_cat');

$edit->addInput('code','text');
$edit->addInput('title','text');
$edit->addInput('description','textarea');
$edit->setUnique(['code']);

$roll = new zea();

$roll->init('roll');
$roll->setTable('question_cat');

$roll->addInput('id','hidden');
$roll->setNumbering(true);
$roll->setEdit(true);
$roll->setDelete(true);

$roll->addInput('title','plaintext');
$roll->setUrl('admin/question/clear_category');
$roll->setEditLink(base_url('admin/question/category?id='),'id');

?>
<div class="col-md-3">
	<?php $edit->form();?>
</div>
<div class="col-md-9">
	<?php $roll->form();?>
</div>