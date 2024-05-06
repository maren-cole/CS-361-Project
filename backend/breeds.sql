-- -----------------------------------------------------
-- Schema Breeds
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `Breeds` DEFAULT CHARACTER SET utf8 ;
USE `Breeds` ;

-- -----------------------------------------------------
-- Table `Breeds`.`Breeds`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Breeds`.`Breeds` (
  `breedID` INT NOT NULL AUTO_INCREMENT,
  `breedName` VARCHAR(45) NOT NULL,
  `averageHeightMin` DECIMAL(11,2) NULL,
  `averageHeightMax` DECIMAL(11,2) NULL,
  `region` VARCHAR(255) NULL,
  `disciplines` SET("Dressage", "Jumping", "Eventing", "Equitation", "Western Pleasure", "Endurance", "Racing", "Driving", "Pleasure Riding", "Halter", "Trail", "Reining", "Ranching") NULL,
  `temperment` SET("Smart", "Sensitive", "Bold", "Loyal", "Alert", "High Energy", "Quiet", "Trainable", "Inquisitive", "Calm", "Gentle") NULL,
  PRIMARY KEY (`breedID`),
  UNIQUE INDEX `breedID_UNIQUE` (`breedID` ASC) VISIBLE,
  UNIQUE INDEX `breedName_UNIQUE` (`breedName` ASC) VISIBLE);

-- -----------------------------------------------------
-- Populate Table Breeds.Breeds
-- -----------------------------------------------------
-- Andalusian
INSERT INTO Breeds(breedName, averageHeightMin, averageHeightMax, region, disciplines, temperment) 
VALUES(
    "Andalusian",
    15.2,
    16.2,
    "Spain",
    {"Dressage", "Equitation", "Western Pleasure"},
    {"Smart", "Sensitive", "Docile"}
);

-- Arabian
INSERT INTO Breeds(breedName, averageHeightMin, averageHeightMax, region, disciplines, temperment) 
VALUES(
    "Arabian",
    14.1,
    15.1,
    "Middle East",
    {"Endurance", "Pleasure Riding", "Dressage", "Jumping"},
    {"Smart", "Alert", "Inquisitive"}
);

-- Thoroughbred
INSERT INTO Breeds(breedName, averageHeightMin, averageHeightMax, region, disciplines, temperment) 
VALUES(
    "Thoroughbred",
    15.2,
    16,
    "England",
    {"Racing", "Jumping"},
    {"Smart", "High Energy", "Bold"}
);

-- Irish Sport Horse
INSERT INTO Breeds(breedName, averageHeightMin, averageHeightMax, region, disciplines, temperment) 
VALUES(
    "Irish Sport Horse",
    15,
    17,
    "Ireland",
    {"Jumping", "Eventing", "Dressage"},
    {"Smart", "Bold"}
);

-- Tennessee Walker
INSERT INTO Breeds(breedName, averageHeightMin, averageHeightMax, region, disciplines, temperment) 
VALUES(
    "Tennessee Walker",
    14.3,
    17,
    "United States",
    {"Driving", "Pleasure", "Halter", "Trail"},
    {"Quiet", "Calm", "Gentle"}
);

-- Clydesdale
INSERT INTO Breeds(breedName, averageHeightMin, averageHeightMax, region, disciplines, temperment) 
VALUES(
    "Clydesdale",
    17,
    19,
    "Scotland",
    {"Driving", "Pleasure Riding"},
    {"Calm", "Gentle"}
);

-- Standardbred
INSERT INTO Breeds(breedName, averageHeightMin, averageHeightMax, region, disciplines, temperment) 
VALUES(
    "Standardbred",
    15,
    16,
    "United States",
    {"Racing", "Endurance", "Reining"},
    {"Calm", "Gentle", "Loyal"}
);

-- Quarter Horse
INSERT INTO Breeds(breedName, averageHeightMin, averageHeightMax, region, disciplines, temperment) 
VALUES(
    "Quarter Horse",
    14.3,
    16,
    "United States",
    {"Racing", "Trail", "Ranching"},
    {"Trainable", "Calm", "Smart"}
);