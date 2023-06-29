<?php

use yii\helpers\Html;
use yii\bootstrap5\ActiveForm;

/** @var yii\web\View $this */
/** @var app\models\Games $model */
/** @var yii\widgets\ActiveForm $form */
?>

<div class="games-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'platform')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'genre')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'developer')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'release_date')->textInput(['maxlength' => true, 'placeholder' => 'YYYY-MM-DD']) ?>

    <?= $form->field($model, 'rating')->textInput(['maxlength' => true, 'placeholder' => '0.00 - 10.00', 'pattern' => '^\d{1,2}(\.\d{1,2})?$']) ?>


    <?= $form->field($model, 'image_url')->textInput(['maxlength' => true, 'placeholder' => 'Enter image URL']) ?>


    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
