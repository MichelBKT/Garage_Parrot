<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20231115115502 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE advert DROP FOREIGN KEY FK_54F1F40BD07ECCB6');
        $this->addSql('DROP INDEX IDX_54F1F40BD07ECCB6 ON advert');
        $this->addSql('ALTER TABLE advert DROP advert_id');
        $this->addSql('ALTER TABLE comment DROP FOREIGN KEY FK_9474526CF8697D13');
        $this->addSql('DROP INDEX IDX_9474526CF8697D13 ON comment');
        $this->addSql('ALTER TABLE comment DROP comment_id');
        $this->addSql('ALTER TABLE maintenance DROP FOREIGN KEY FK_2F84F8E9F6C202BC');
        $this->addSql('DROP INDEX IDX_2F84F8E9F6C202BC ON maintenance');
        $this->addSql('ALTER TABLE maintenance DROP maintenance_id');
        $this->addSql('ALTER TABLE service DROP FOREIGN KEY FK_E19D9AD2ED5CA9E6');
        $this->addSql('DROP INDEX IDX_E19D9AD2ED5CA9E6 ON service');
        $this->addSql('ALTER TABLE service DROP service_id');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE advert ADD advert_id INT NOT NULL');
        $this->addSql('ALTER TABLE advert ADD CONSTRAINT FK_54F1F40BD07ECCB6 FOREIGN KEY (advert_id) REFERENCES user (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('CREATE INDEX IDX_54F1F40BD07ECCB6 ON advert (advert_id)');
        $this->addSql('ALTER TABLE service ADD service_id INT NOT NULL');
        $this->addSql('ALTER TABLE service ADD CONSTRAINT FK_E19D9AD2ED5CA9E6 FOREIGN KEY (service_id) REFERENCES user (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('CREATE INDEX IDX_E19D9AD2ED5CA9E6 ON service (service_id)');
        $this->addSql('ALTER TABLE comment ADD comment_id INT NOT NULL');
        $this->addSql('ALTER TABLE comment ADD CONSTRAINT FK_9474526CF8697D13 FOREIGN KEY (comment_id) REFERENCES user (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('CREATE INDEX IDX_9474526CF8697D13 ON comment (comment_id)');
        $this->addSql('ALTER TABLE maintenance ADD maintenance_id INT NOT NULL');
        $this->addSql('ALTER TABLE maintenance ADD CONSTRAINT FK_2F84F8E9F6C202BC FOREIGN KEY (maintenance_id) REFERENCES user (id) ON UPDATE NO ACTION ON DELETE NO ACTION');
        $this->addSql('CREATE INDEX IDX_2F84F8E9F6C202BC ON maintenance (maintenance_id)');
    }
}
