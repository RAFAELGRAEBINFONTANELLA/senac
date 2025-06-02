BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "alunos" (
	"id_aluno"	INTEGER,
	"nome"	TEXT NOT NULL,
	"telefone"	TEXT NOT NULL,
	"idade"	TEXT NOT NULL,
	PRIMARY KEY("id_aluno" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "cursos" (
	"id_cursos"	INTEGER,
	"alunos"	TEXT NOT NULL,
	"carga horaria"	TEXT NOT NULL,
	PRIMARY KEY("id_cursos")
);
CREATE TABLE IF NOT EXISTS "professores" (
	"id_prfossores"	INTEGER,
	"nome"	TEXT NOT NULL,
	"salario"	TEXT NOT NULL,
	PRIMARY KEY("id_prfossores" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "aulas" (
	"id_aula"	INTEGER,
	"id_curso"	INTEGER,
	"id_professor"	INTEGER,
	"id_aluno"	INTEGER,
	"data"	TEXT NOT NULL,
	"hora"	TEXT NOT NULL,
	FOREIGN KEY("id_aula") REFERENCES "aulas"("id_aula"),
	FOREIGN KEY("id_curso") REFERENCES "cursos"("id_cursos"),
	FOREIGN KEY("id_aluno") REFERENCES "alunos"("id_aluno"),
	PRIMARY KEY("id_aula" AUTOINCREMENT)
);
INSERT INTO "alunos" ("id_aluno","nome","telefone","idade") VALUES (2,'Carneiro','0099887000','98');
INSERT INTO "alunos" ("id_aluno","nome","telefone","idade") VALUES (3,'Cavalo','890876564','70');
INSERT INTO "alunos" ("id_aluno","nome","telefone","idade") VALUES (4,'Leitão','123467899','28');
INSERT INTO "alunos" ("id_aluno","nome","telefone","idade") VALUES (5,'Frango','1223300086','76');
INSERT INTO "alunos" ("id_aluno","nome","telefone","idade") VALUES (6,'Burro','3445664220','9');
INSERT INTO "cursos" ("id_cursos","alunos","carga horaria") VALUES (1,'2','3');
INSERT INTO "cursos" ("id_cursos","alunos","carga horaria") VALUES (2,'3','4');
INSERT INTO "cursos" ("id_cursos","alunos","carga horaria") VALUES (3,'1','6');
INSERT INTO "cursos" ("id_cursos","alunos","carga horaria") VALUES (4,'5','5');
INSERT INTO "cursos" ("id_cursos","alunos","carga horaria") VALUES (5,'6','1');
INSERT INTO "cursos" ("id_cursos","alunos","carga horaria") VALUES (6,'4','2');
INSERT INTO "professores" ("id_prfossores","nome","salario") VALUES (1,'Nelore','R$ 7000,00');
INSERT INTO "professores" ("id_prfossores","nome","salario") VALUES (2,'Duroc','R$ 6000,12');
INSERT INTO "professores" ("id_prfossores","nome","salario") VALUES (3,'Ragdoll','R$ 8350,00');
INSERT INTO "professores" ("id_prfossores","nome","salario") VALUES (4,'Pug','R$ 9765,99');
INSERT INTO "professores" ("id_prfossores","nome","salario") VALUES (5,'Percheron','R$ 4559,53');
INSERT INTO "professores" ("id_prfossores","nome","salario") VALUES (6,'Angus','R$ 9808,12');
INSERT INTO "aulas" ("id_aula","id_curso","id_professor","id_aluno","data","hora") VALUES (1,5,6,2,'12/03/2025','12:30');
INSERT INTO "aulas" ("id_aula","id_curso","id_professor","id_aluno","data","hora") VALUES (2,NULL,NULL,NULL,'','');
INSERT INTO "aulas" ("id_aula","id_curso","id_professor","id_aluno","data","hora") VALUES (3,2,3,5,'04/04/2025','10:50');
INSERT INTO "aulas" ("id_aula","id_curso","id_professor","id_aluno","data","hora") VALUES (4,NULL,NULL,NULL,'','');
INSERT INTO "aulas" ("id_aula","id_curso","id_professor","id_aluno","data","hora") VALUES (5,NULL,NULL,NULL,'','');
INSERT INTO "aulas" ("id_aula","id_curso","id_professor","id_aluno","data","hora") VALUES (6,NULL,NULL,NULL,'','');
COMMIT;
