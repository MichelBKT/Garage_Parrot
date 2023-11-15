<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231115122617 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE contact DROP user_id');
        $this->addSql('ALTER TABLE maintenance ADD user_id INT NOT NULL');
        $this->addSql('ALTER TABLE maintenance ADD CONSTRAINT FK_2F84F8E9A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('CREATE INDEX IDX_2F84F8E9A76ED395 ON maintenance (user_id)');
        $this->addSql('ALTER TABLE service ADD user_id INT NOT NULL');
        $this->addSql('ALTER TABLE service ADD CONSTRAINT FK_E19D9AD2A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('CREATE INDEX IDX_E19D9AD2A76ED395 ON service (user_id)');
        $this->addSql('ALTER TABLE timetable ADD user_id INT NOT NULL');
        $this->addSql('ALTER TABLE timetable ADD CONSTRAINT FK_6B1F670A76ED395 FOREIGN KEY (user_id) REFERENCES user (id)');
        $this->addSql('CREATE INDEX IDX_6B1F670A76ED395 ON timetable (user_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE timetable DROP FOREIGN KEY FK_6B1F670A76ED395');
        $this->addSql('DROP INDEX IDX_6B1F670A76ED395 ON timetable');
        $this->addSql('ALTER TABLE timetable DROP user_id');
        $this->addSql('ALTER TABLE service DROP FOREIGN KEY FK_E19D9AD2A76ED395');
        $this->addSql('DROP INDEX IDX_E19D9AD2A76ED395 ON service');
        $this->addSql('ALTER TABLE service DROP user_id');
        $this->addSql('ALTER TABLE maintenance DROP FOREIGN KEY FK_2F84F8E9A76ED395');
        $this->addSql('DROP INDEX IDX_2F84F8E9A76ED395 ON maintenance');
        $this->addSql('ALTER TABLE maintenance DROP user_id');
        $this->addSql('ALTER TABLE contact ADD user_id INT NOT NULL');
    }
}
