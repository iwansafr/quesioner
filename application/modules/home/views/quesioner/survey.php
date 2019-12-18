<?php defined('BASEPATH') OR exit('No direct script access allowed');

$form = new zea();
$form->setTable('responden');
$form->init('edit');

$form->addInput('nama','text');
$form->addInput('usia','dropdown');
$form->setOptions('usia',['1'=>'< 31 Tahun','2'=>'31-40 Tahun','3'=>'41-50 Tahun','4'=>'> 50 tahun']);

$form->addInput('gol','dropdown');
$form->setLabel('gol','Golongan');
$form->setOptions('gol',[1=>'I',2=>'II',3=>'III',4=>'IV']);

$form->setRequired('All');
$form->form();