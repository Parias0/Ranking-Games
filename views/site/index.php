<?php

/** @var yii\web\View $this */

$this->title = 'My Yii Application';
?>
<div class="site-index">

    <div class="jumbotron text-center bg-transparent mt-5 mb-5">
        <h1 class="display-4">My favorite games</h1>

        <p><a class="btn btn-lg btn-success" href="<?= \yii\helpers\Url::to(['games/index']) ?>">Go to the ranking</a></p>

        <div class="image-container">
            <img src="https://media.gq-magazine.co.uk/photos/645b5c31d8c083bf85029042/16:9/pass/100-best-games-hp-b.jpg" alt="Image" class="centered-image">
        </div>

    </div>
     
</div>

