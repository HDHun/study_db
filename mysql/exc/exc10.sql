


CREATE TABLE IF NOT EXISTS `infrCate` (
  `ifctSeq` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `ifctName` VARCHAR(50) NOT NULL,
  `ifctNameEng` VARCHAR(50) NULL,
  `ifctParents` BIGINT NULL,
  `ifctDepth` TINYINT NULL,
  `ifctUseNy` TINYINT NULL,
  `ifctOrder` TINYINT NULL,
  `ifctDesc` VARCHAR(255) NULL,
  `ifctDelNy` TINYINT NOT NULL,
  `regIp` VARCHAR(100) NULL,
  `regSeq` BIGINT NULL,
  `regDevice` TINYINT NULL,
  `regDateTime` DATETIME NULL,
  `regDateTimeSvr` DATETIME NULL,
  `modIp` VARCHAR(100) NULL,
  `modSeq` BIGINT NULL,
  `modDevice` TINYINT NULL,
  `modDateTime` DATETIME NULL,
  `modDateTimeSvr` DATETIME NULL,
  PRIMARY KEY (`ifctSeq`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
;

WITH RECURSIVE CteCate(ifctSeq, ifctParents, ParentsName, ifctName, depth, orderString, ifctOrder, ifctDepth) AS 
(
    select ifctSeq, ifctParents, cast('' as char(30)), ifctName, 0, cast(ifctSeq as char(10)), ifctOrder, ifctDepth from infrCate where ifctParents is null
    UNION ALL
    select d.ifctSeq, d.ifctParents, cte.ifctName, d.ifctName, depth + 1, concat(cte.orderString, '-', d.ifctOrder), d.ifctOrder, d.ifctDepth from infrCate d inner join CteCate cte on d.ifctParents = cte.ifctSeq
)
select * from CteCate order by orderString;

