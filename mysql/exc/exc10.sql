select*from codeGroup;
select*from code;

CREATE TABLE IF NOT EXISTS `mydb`.`project` (
  `projectseq` INT NOT NULL,
  `projectName` VARCHAR(45) NULL,
  `projectPeriodStart` DATE NULL,
  `projectPeriodEnd` DATE NULL,
  `projectRole` VARCHAR(45) NULL,
  `projectPublisher` VARCHAR(45) NULL,
  `infrMember_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`projectseq`),
  INDEX `fk_project_infrMember1_idx` (`infrMember_seq` ASC) VISIBLE,
  CONSTRAINT `fk_project_infrMember1`
    FOREIGN KEY (`infrMember_seq`)
    REFERENCES `mydb`.`infrMember` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB






insert into project (
projectseq
,projectName
,projectPeriodStart
,projectPeriodEnd
,projectRole
,projectPublisher
,infrMember_seq
) values (
4
,'탈퇴 시'
,5
);