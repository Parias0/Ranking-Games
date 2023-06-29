<?php

use app\models\Games;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\grid\ActionColumn;
use yii\grid\GridView;

/** @var yii\web\View $this */
/** @var app\models\GamesSearch $searchModel */
/** @var yii\data\ActiveDataProvider $dataProvider */

$this->title = 'Games';
$this->params['breadcrumbs'][] = $this->title;
?>



<div class="games-index">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Add new game', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?= GridView::widget([
    'dataProvider' => $dataProvider,
    //'filterModel' => $searchModel,
    'columns' => [
        ['class' => 'yii\grid\SerialColumn'],

        //'id',
        'title',
        'platform',
        'genre',
        'developer',
        'release_date',
        [
            'attribute' => 'rating',
            'value' => function ($model) {
                return $model->rating;
            },
        ],
        [
            'attribute' => 'image_url',
            'format' => 'html',
            'value' => function ($model) {
                return Html::img($model->image_url, ['width' => '50px']);
            },
        ],
        [
            'class' => ActionColumn::className(),
            'urlCreator' => function ($action, Games $model, $key, $index, $column) {
                return Url::toRoute([$action, 'id' => $model->id]);
            }
        ],
    ],
    'options' => [
        'class' => 'grid-view',
    ],
    'tableOptions' => [
        'class' => 'table table-striped table-bordered',
    ],
    'dataProvider' => new \yii\data\ActiveDataProvider([
        'query' => $dataProvider->query,
        'sort' => [
            'defaultOrder' => [
                'rating' => SORT_DESC, // Domyślne sortowanie po kolumnie 'rating' malejąco
            ],
        ],
    ]),
]); ?>


</div>
