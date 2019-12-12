<?php
/* @var $this UsersController */
/* @var $model Users */

$this->breadcrumbs=array(
	'Users'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'Manage Users', 'url'=>array('admin')),
);
?>

<div class="tabbable"> <!-- Only required for left/right tabs -->
  <ul class="nav nav-tabs">
    <li class="active"><a href="#tab1" data-toggle="tab">Create Users</a></li>
  </ul>
  <div class="tab-content">
    <div class="tab-pane active" id="tab1">
      	<?php echo $this->renderPartial('_form', array('model'=>$model)); ?>
    </div>
  </div>
</div>
