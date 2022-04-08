<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20220405120632 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE lesson_library (lesson_id INT NOT NULL, library_id INT NOT NULL, INDEX IDX_54FCCA1BCDF80196 (lesson_id), INDEX IDX_54FCCA1BFE2541D7 (library_id), PRIMARY KEY(lesson_id, library_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE lesson_library ADD CONSTRAINT FK_54FCCA1BCDF80196 FOREIGN KEY (lesson_id) REFERENCES lesson (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE lesson_library ADD CONSTRAINT FK_54FCCA1BFE2541D7 FOREIGN KEY (library_id) REFERENCES library (id) ON DELETE CASCADE');
        $this->addSql('DROP TABLE library_lesson');
        $this->addSql('ALTER TABLE library CHANGE file file VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE library_lesson (library_id INT NOT NULL, lesson_id INT NOT NULL, INDEX IDX_5396EC78CDF80196 (lesson_id), INDEX IDX_5396EC78FE2541D7 (library_id), PRIMARY KEY(library_id, lesson_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB COMMENT = \'\' ');
        $this->addSql('ALTER TABLE library_lesson ADD CONSTRAINT FK_5396EC78FE2541D7 FOREIGN KEY (library_id) REFERENCES library (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE library_lesson ADD CONSTRAINT FK_5396EC78CDF80196 FOREIGN KEY (lesson_id) REFERENCES lesson (id) ON DELETE CASCADE');
        $this->addSql('DROP TABLE lesson_library');
        $this->addSql('ALTER TABLE library CHANGE file file VARCHAR(255) DEFAULT NULL');
    }
}
