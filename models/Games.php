<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "games".
 *
 * @property int $id
 * @property string $title
 * @property string $platform
 * @property string $genre
 * @property string $developer
 * @property string $release_date
 * @property float $rating
 * @property string $image_url
 */
class Games extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'games';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'platform', 'genre', 'developer', 'release_date', 'rating', 'image_url'], 'required'],
            [['release_date'], 'safe'],
            [['rating'], 'number'],
            [['title', 'platform', 'genre', 'developer', 'image_url'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'platform' => 'Platform',
            'genre' => 'Genre',
            'developer' => 'Developer',
            'release_date' => 'Release Date',
            'rating' => 'Rating',
            'image_url' => 'Cover',
        ];
    }
}
