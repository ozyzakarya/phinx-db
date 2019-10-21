<?php

use Phinx\Migration\AbstractMigration;

class CreateStudioFitnessTable extends AbstractMigration
{
    /**
     * Change Method.
     *
     * Write your reversible migrations using this method.
     *
     * More information on writing migrations is available here:
     * http://docs.phinx.org/en/latest/migrations.html#the-abstractmigration-class
     *
     * The following commands can be used in this method and Phinx will
     * automatically reverse them when rolling back:
     *
     *    createTable
     *    renameTable
     *    addColumn
     *    addCustomColumn
     *    renameColumn
     *    addIndex
     *    addForeignKey
     *
     * Any other destructive changes will result in an error when trying to
     * rollback the migration.
     *
     * Remember to call "create()" or "update()" and NOT "save()" when working
     * with the Table class.
     */
    public function change()
    {
        $table = $this->table('studio_fitness', ['id' => false, 'primary_key' => ['studio_id']]);
        $table ->addColumn('studio_id', 'integer', ['identity' =>true, 'signed' => false])
                ->addColumn('name', 'string', ['limit' => 100])
                ->addColumn('address', 'string', ['limit' => 100])
                ->addColumn('price', 'string', ['limit' => 100])
                ->addColumn('duration', 'string', ['limit' => 100])
                ->addColumn('created', 'datetime')
                ->addColumn('updated', 'datetime', ['null' => true])
                ->save();
    }
}
