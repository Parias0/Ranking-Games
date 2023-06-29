<?php

use yii\db\Migration;

/**
 * Handles the creation of table `{{%games}}`.
 */
class m230628_153758_create_games_table extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->createTable('{{%games}}', [
            'id' => $this->primaryKey(),
            'title' => $this->string(255)->notNull(),
            'platform' => $this->string(255)->notNull(),
            'genre' => $this->string(255)->notNull(),
            'developer' => $this->string(255)->notNull(),
            'release_date' => $this->date()->notNull(),
            'rating' => $this->decimal(4,2)->notNull(),
            'image_url' => $this->string()->notNull(),
        ]);
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropTable('{{%games}}');
    }
}
