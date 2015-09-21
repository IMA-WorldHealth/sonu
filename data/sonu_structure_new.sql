/*
SQLyog Ultimate v11.11 (32 bit)
MySQL - 5.6.12 : Database - sonu
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sonu` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sonu`;

/*Table structure for table `accoucheusea1` */

DROP TABLE IF EXISTS `accoucheusea1`;

CREATE TABLE `accoucheusea1` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `accoucheusea1_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `accoucheusea2` */

DROP TABLE IF EXISTS `accoucheusea2`;

CREATE TABLE `accoucheusea2` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `accoucheusea2_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `aires` */

DROP TABLE IF EXISTS `aires`;

CREATE TABLE `aires` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  `zone_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zone_id` (`zone_id`),
  CONSTRAINT `aires_ibfk_1` FOREIGN KEY (`zone_id`) REFERENCES `zones` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `autres` */

DROP TABLE IF EXISTS `autres`;

CREATE TABLE `autres` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `autres_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `causerupture` */

DROP TABLE IF EXISTS `causerupture`;

CREATE TABLE `causerupture` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `chirurgiens` */

DROP TABLE IF EXISTS `chirurgiens`;

CREATE TABLE `chirurgiens` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `chirurgiens_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `equipement` */

DROP TABLE IF EXISTS `equipement`;

CREATE TABLE `equipement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evaluation_id` int(100) DEFAULT NULL,
  `tableGyneco` tinyint(1) DEFAULT NULL,
  `tableTravailAccouchementAvec` tinyint(1) DEFAULT NULL,
  `tableTravailAccouchementSant` tinyint(1) DEFAULT NULL,
  `TableNouveauNe` tinyint(1) DEFAULT NULL,
  `TableChauffante` tinyint(1) DEFAULT NULL,
  `ballonVentilation` tinyint(1) DEFAULT NULL,
  `bouteilleOxygene` tinyint(1) DEFAULT NULL,
  `aspirateurPression` tinyint(1) DEFAULT NULL,
  `sourceLimiere` tinyint(1) DEFAULT NULL,
  `rideauxParavents` tinyint(1) DEFAULT NULL,
  `montreHorloge` tinyint(1) DEFAULT NULL,
  `balancePeseBebe` tinyint(1) DEFAULT NULL,
  `balancePesePersonne` tinyint(1) DEFAULT NULL,
  `tensionmetreFonctionnel` tinyint(1) DEFAULT NULL,
  `stethoscope` tinyint(1) DEFAULT NULL,
  `thermometre` tinyint(1) DEFAULT NULL,
  `foetoscope` tinyint(1) DEFAULT NULL,
  `metreRuban` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `evaluateurs` */

DROP TABLE IF EXISTS `evaluateurs`;

CREATE TABLE `evaluateurs` (
  `id` int(100) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `qualite` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `evaluations` */

DROP TABLE IF EXISTS `evaluations`;

CREATE TABLE `evaluations` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `prestataire_id` int(100) DEFAULT NULL,
  `formationSante_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prestataire_id` (`prestataire_id`),
  KEY `formationSante_id` (`formationSante_id`),
  CONSTRAINT `evaluations_ibfk_1` FOREIGN KEY (`prestataire_id`) REFERENCES `prestataires` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `evaluations_ibfk_2` FOREIGN KEY (`formationSante_id`) REFERENCES `formationsantes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `executionsou` */

DROP TABLE IF EXISTS `executionsou`;

CREATE TABLE `executionsou` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `evaluation_id` int(100) DEFAULT NULL,
  `administrationAntibiotiqueMere` tinyint(1) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNe` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMereRaisonNon_id` tinyint(1) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNeRaisonNon_id` int(11) DEFAULT NULL,
  `administrationUterotonique` tinyint(1) DEFAULT NULL,
  `administrationUterotoniqueRaisonNon_id` int(11) DEFAULT NULL,
  `administrationMisoprostol` tinyint(1) DEFAULT NULL,
  `administrationMisoprostolRaisonNon_id` int(11) DEFAULT NULL,
  `administrationSulfate` tinyint(1) DEFAULT NULL,
  `administrationSulfateRaisonNon_id` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` tinyint(1) DEFAULT NULL,
  `extractionManuelPlacentaRaisonNon_id` int(11) DEFAULT NULL,
  `evacuationUterine` tinyint(1) DEFAULT NULL,
  `evacuationUterineRaisonNon` int(11) DEFAULT NULL,
  `accouchementAssistanceVoieBasse` tinyint(1) DEFAULT NULL,
  `accouchementAssistanceVoieBasseRaisonNon_id` int(11) DEFAULT NULL,
  `ReanimationNeaonatale` tinyint(1) DEFAULT NULL,
  `ReanimationNeaonataleRaisonNon_id` int(11) DEFAULT NULL,
  `transfusionSanguineMere` tinyint(1) DEFAULT NULL,
  `transfusionSanguineMereRaisonNon_id` int(11) DEFAULT NULL,
  `transfusionSanguineNouveauNe` tinyint(1) DEFAULT NULL,
  `transfusionSanguineNouveauNeRaison_id` int(11) DEFAULT NULL,
  `Cesarienne` tinyint(1) DEFAULT NULL,
  `CesarienneRaisonNon_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `formationsantes` */

DROP TABLE IF EXISTS `formationsantes`;

CREATE TABLE `formationsantes` (
  `id` int(100) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  `isPratiqueAccouchement` tinyint(1) DEFAULT NULL,
  `aire_id` smallint(6) unsigned DEFAULT NULL,
  `typeOrganisation_id` smallint(6) DEFAULT NULL,
  `typeEtablissement_id` smallint(6) DEFAULT NULL,
  `milieu_id` smallint(6) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aire_id` (`aire_id`),
  KEY `typeOrganisation_id` (`typeOrganisation_id`),
  KEY `typeEtablissement_id` (`typeEtablissement_id`),
  KEY `milieu_id` (`milieu_id`),
  CONSTRAINT `formationsantes_ibfk_1` FOREIGN KEY (`aire_id`) REFERENCES `aires` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `formationsantes_ibfk_2` FOREIGN KEY (`typeOrganisation_id`) REFERENCES `typeorganisations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `formationsantes_ibfk_3` FOREIGN KEY (`typeEtablissement_id`) REFERENCES `typeetablissements` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `formationsantes_ibfk_4` FOREIGN KEY (`milieu_id`) REFERENCES `milieux` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursouaout` */

DROP TABLE IF EXISTS `indicateursouaout`;

CREATE TABLE `indicateursouaout` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursouavril` */

DROP TABLE IF EXISTS `indicateursouavril`;

CREATE TABLE `indicateursouavril` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursoudecembre` */

DROP TABLE IF EXISTS `indicateursoudecembre`;

CREATE TABLE `indicateursoudecembre` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursoufevrier` */

DROP TABLE IF EXISTS `indicateursoufevrier`;

CREATE TABLE `indicateursoufevrier` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursoujanvier` */

DROP TABLE IF EXISTS `indicateursoujanvier`;

CREATE TABLE `indicateursoujanvier` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursoujuillet` */

DROP TABLE IF EXISTS `indicateursoujuillet`;

CREATE TABLE `indicateursoujuillet` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursoujuin` */

DROP TABLE IF EXISTS `indicateursoujuin`;

CREATE TABLE `indicateursoujuin` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursoumai` */

DROP TABLE IF EXISTS `indicateursoumai`;

CREATE TABLE `indicateursoumai` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursoumars` */

DROP TABLE IF EXISTS `indicateursoumars`;

CREATE TABLE `indicateursoumars` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursounovembre` */

DROP TABLE IF EXISTS `indicateursounovembre`;

CREATE TABLE `indicateursounovembre` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursouoctobre` */

DROP TABLE IF EXISTS `indicateursouoctobre`;

CREATE TABLE `indicateursouoctobre` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `indicateursouseptembre` */

DROP TABLE IF EXISTS `indicateursouseptembre`;

CREATE TABLE `indicateursouseptembre` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `accouchementSpontannes` int(11) DEFAULT NULL,
  `accouchementAssistesVentouse` int(11) DEFAULT NULL,
  `accouchementAssisteForceps` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  `laporotomie` int(11) DEFAULT NULL,
  `nbTotalAccouchement` int(11) DEFAULT NULL,
  `hemorragieAntepartum` int(11) DEFAULT NULL,
  `hemorragiePostpartum` int(11) DEFAULT NULL,
  `travailProlonge` int(11) DEFAULT NULL,
  `ruptureUterine` int(11) DEFAULT NULL,
  `infectionSeverePostPartum` int(11) DEFAULT NULL,
  `preEclampsieSevere` int(11) DEFAULT NULL,
  `complicationAvortement` int(11) DEFAULT NULL,
  `grossesseExtraUterine` int(11) DEFAULT NULL,
  `autreComplication` int(11) DEFAULT NULL,
  `palu` int(11) DEFAULT NULL,
  `complicationVIH` int(11) DEFAULT NULL,
  `anemieSevere` int(11) DEFAULT NULL,
  `hepathite` int(11) DEFAULT NULL,
  `autreComplicationIndirecte` int(11) DEFAULT NULL,
  `hemorragieAntepartumIndirect` int(11) DEFAULT NULL,
  `hemorragiePostpartumIndirect` int(11) DEFAULT NULL,
  `travailProlongeIndirect` int(11) DEFAULT NULL,
  `ruptureUterineIndirect` int(11) DEFAULT NULL,
  `infectionSeverePostpartumIndirect` int(11) DEFAULT NULL,
  `preeclampsieSevereIndirect` int(11) DEFAULT NULL,
  `complicationAvortementIndirecte` int(11) DEFAULT NULL,
  `grosseExtraUterineIndirect` int(11) DEFAULT NULL,
  `totalIndirecte` int(11) DEFAULT NULL,
  `autreDecesMaternelleIndirecte` int(11) DEFAULT NULL,
  `paluObstrical` int(11) DEFAULT NULL,
  `complicationVIHObstetrical` int(11) DEFAULT NULL,
  `anemieSevereObstetrical` int(11) DEFAULT NULL,
  `hepathiteObstetrical` int(11) DEFAULT NULL,
  `autreCauseObstetricalIndirecte` int(11) DEFAULT NULL,
  `totalNaissance` int(11) DEFAULT NULL,
  `totalVivantSou2500` int(11) DEFAULT NULL,
  `mortNeFrais` int(11) DEFAULT NULL,
  `mortNeMacere` int(11) DEFAULT NULL,
  `deceNeonataux1ere24h` int(11) DEFAULT NULL,
  `deceNeonatauxPlus200g` int(11) DEFAULT NULL,
  `casrefereeCauseobstetricale` int(11) DEFAULT NULL,
  `casrefereeCauseNeonatale` int(11) DEFAULT NULL,
  `casSAA` int(11) DEFAULT NULL,
  `femmeQuittantApresAccouchement` int(11) DEFAULT NULL,
  `femmeQuittantApresAvortement` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `infirmierpolyvalents` */

DROP TABLE IF EXISTS `infirmierpolyvalents`;

CREATE TABLE `infirmierpolyvalents` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `infirmierpolyvalents_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `infrastructures` */

DROP TABLE IF EXISTS `infrastructures`;

CREATE TABLE `infrastructures` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `evaluation_id` int(100) DEFAULT NULL,
  `partenaire_id` smallint(6) DEFAULT NULL,
  `typeMateriaux_id` smallint(6) NOT NULL,
  `dejaConstruite` tinyint(1) DEFAULT NULL,
  `dejaRehabilite` tinyint(1) DEFAULT NULL,
  `rehabilitationEnCours` tinyint(1) DEFAULT NULL,
  `salleTravail` tinyint(1) DEFAULT NULL,
  `salleAccouchement` tinyint(1) DEFAULT NULL,
  `memeSalleTravailEtAccouchement` tinyint(1) DEFAULT NULL,
  `salleAccoucheePostParfumImmediat` tinyint(1) DEFAULT NULL,
  `salleAccoucheePostParfumTardif` tinyint(1) DEFAULT NULL,
  `salleOperation` tinyint(1) DEFAULT NULL,
  `soinsOuCoinNouveauNe` tinyint(1) DEFAULT NULL,
  `banqueSang` tinyint(1) DEFAULT NULL,
  `laboratoire` tinyint(1) DEFAULT NULL,
  `laboratoireEtBanqueSang` tinyint(1) DEFAULT NULL,
  `pharmacie` tinyint(1) DEFAULT NULL,
  `trouPlacenta` tinyint(1) DEFAULT NULL,
  `incinerateur` tinyint(1) DEFAULT NULL,
  `wcAccouchees` tinyint(1) DEFAULT NULL,
  `doucheAccouchees` tinyint(1) DEFAULT NULL,
  `plafond` tinyint(1) DEFAULT NULL,
  `etatPlafond` varchar(10) DEFAULT NULL,
  `etatPlancher` varchar(10) DEFAULT NULL,
  `etatToiture` varchar(10) DEFAULT NULL,
  `etatMurs` varchar(10) DEFAULT NULL,
  `etatPortes` varchar(10) DEFAULT NULL,
  `etatFenetres` varchar(10) DEFAULT NULL,
  `nbLitTotal` int(10) DEFAULT NULL,
  `nbLitReserveAccouchees` int(10) DEFAULT NULL,
  `nbTableAccouchement` int(10) DEFAULT NULL,
  `nbTableNouveauNes` int(10) DEFAULT NULL,
  `electricite` int(10) DEFAULT NULL,
  `eauPreventionInfections` int(10) DEFAULT NULL,
  KEY `evaluation_id` (`evaluation_id`),
  KEY `partenaire_id` (`partenaire_id`),
  KEY `typeMateriaux_id` (`typeMateriaux_id`),
  KEY `id` (`id`),
  CONSTRAINT `infrastructures_ibfk_1` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `infrastructures_ibfk_2` FOREIGN KEY (`partenaire_id`) REFERENCES `partenaires` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `infrastructures_ibfk_3` FOREIGN KEY (`typeMateriaux_id`) REFERENCES `typemateriaux` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `matrones` */

DROP TABLE IF EXISTS `matrones`;

CREATE TABLE `matrones` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `matrones_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `medecinanesthesistes` */

DROP TABLE IF EXISTS `medecinanesthesistes`;

CREATE TABLE `medecinanesthesistes` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `medecinanesthesistes_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `medecingeneral` */

DROP TABLE IF EXISTS `medecingeneral`;

CREATE TABLE `medecingeneral` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `medecingeneral_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `medicaments` */

DROP TABLE IF EXISTS `medicaments`;

CREATE TABLE `medicaments` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `sourceApprovisionnemnt_id` int(11) DEFAULT NULL,
  `causeRupture_id` int(11) DEFAULT NULL,
  `rumer` tinyint(1) DEFAULT NULL,
  `medicamentConserveRefrigerateur` tinyint(1) DEFAULT NULL,
  `ocytocyneInjectable` tinyint(1) DEFAULT NULL,
  `misoprostol` tinyint(1) DEFAULT NULL,
  `ergometrine` tinyint(1) DEFAULT NULL,
  `ampiciline` tinyint(1) DEFAULT NULL,
  `gentamycine` tinyint(1) DEFAULT NULL,
  `metronidazole` tinyint(1) DEFAULT NULL,
  `diazepam` tinyint(1) DEFAULT NULL,
  `sulfateMagnesium` tinyint(1) DEFAULT NULL,
  `gluconate` tinyint(1) DEFAULT NULL,
  `hydralazine` tinyint(1) DEFAULT NULL,
  `clonidine` tinyint(1) DEFAULT NULL,
  `alphamethyldopa250mg` tinyint(1) DEFAULT NULL,
  `dexamethasone` tinyint(1) DEFAULT NULL,
  `hydrocortisone` tinyint(1) DEFAULT NULL,
  `salbutamol` tinyint(1) DEFAULT NULL,
  `ketamine` tinyint(1) DEFAULT NULL,
  `atropine` tinyint(1) DEFAULT NULL,
  `lignocaine` tinyint(1) DEFAULT NULL,
  `halothane` tinyint(1) DEFAULT NULL,
  `filsSutureresorbables` tinyint(1) DEFAULT NULL,
  `filsSutureNonResorbables` tinyint(1) DEFAULT NULL,
  `serumGlucose` tinyint(1) DEFAULT NULL,
  `serumphysiologique` tinyint(1) DEFAULT NULL,
  `glucoseHypertonique` tinyint(1) DEFAULT NULL,
  `solutelactate` tinyint(1) DEFAULT NULL,
  `bicarbonateSodium` tinyint(1) DEFAULT NULL,
  `vitamineK1` tinyint(1) DEFAULT NULL,
  `epicranienne` tinyint(1) DEFAULT NULL,
  `seringue1cc` tinyint(1) DEFAULT NULL,
  `catheterPediatrique` tinyint(1) DEFAULT NULL,
  `sondeNaso` tinyint(1) DEFAULT NULL,
  `chlorhexidine` tinyint(1) DEFAULT NULL,
  `gantChirurgicaux` tinyint(1) DEFAULT NULL,
  `gantObstetricaux` tinyint(1) DEFAULT NULL,
  `pocheSang` tinyint(1) DEFAULT NULL,
  `quatreMarqueure` tinyint(1) DEFAULT NULL,
  `testGroupage` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `milieux` */

DROP TABLE IF EXISTS `milieux`;

CREATE TABLE `milieux` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `neonatologues` */

DROP TABLE IF EXISTS `neonatologues`;

CREATE TABLE `neonatologues` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `neonatologues_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `obstetriciens` */

DROP TABLE IF EXISTS `obstetriciens`;

CREATE TABLE `obstetriciens` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `obstetriciens_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `outil` */

DROP TABLE IF EXISTS `outil`;

CREATE TABLE `outil` (
  `id` int(11) DEFAULT NULL,
  `evaluation_id` int(100) DEFAULT NULL,
  `protocoleSonu` int(11) NOT NULL AUTO_INCREMENT,
  `soinsPrenatals` tinyint(1) DEFAULT NULL,
  `ficheTechniqueSOU` tinyint(1) DEFAULT NULL,
  `ficheTechniqueAQA` tinyint(1) DEFAULT NULL,
  `ficheTechniqueSoinsNouveauNes` tinyint(1) DEFAULT NULL,
  `gatpa` tinyint(1) DEFAULT NULL,
  `soinImmediatNouveauNe` tinyint(1) DEFAULT NULL,
  `prisEnChargeHemorragies` tinyint(1) DEFAULT NULL,
  `gestionAutresComplications` tinyint(1) DEFAULT NULL,
  `gestionComplicationNeonatal` tinyint(1) DEFAULT NULL,
  `soinMereKangourou` tinyint(1) DEFAULT NULL,
  `ptme` tinyint(1) DEFAULT NULL,
  `plannificationFamilliale` tinyint(1) DEFAULT NULL,
  `Partogramme` tinyint(1) DEFAULT NULL,
  `registreAccouchement` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`protocoleSonu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `partenaires` */

DROP TABLE IF EXISTS `partenaires`;

CREATE TABLE `partenaires` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `nom` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `pediatres` */

DROP TABLE IF EXISTS `pediatres`;

CREATE TABLE `pediatres` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `pediatres_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `prestataires` */

DROP TABLE IF EXISTS `prestataires`;

CREATE TABLE `prestataires` (
  `id` int(100) NOT NULL,
  `nom` varchar(30) DEFAULT NULL,
  `evaluateur_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evaluateur_id` (`evaluateur_id`),
  CONSTRAINT `prestataires_ibfk_1` FOREIGN KEY (`evaluateur_id`) REFERENCES `evaluateurs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `raisonnonexecution` */

DROP TABLE IF EXISTS `raisonnonexecution`;

CREATE TABLE `raisonnonexecution` (
  `id` int(11) DEFAULT NULL,
  `raison` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `ressourcehumaines` */

DROP TABLE IF EXISTS `ressourcehumaines`;

CREATE TABLE `ressourcehumaines` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `evaluation_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `evaluation_id` (`evaluation_id`),
  CONSTRAINT `ressourcehumaines_ibfk_1` FOREIGN KEY (`evaluation_id`) REFERENCES `evaluations` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sourceapprovisionements` */

DROP TABLE IF EXISTS `sourceapprovisionements`;

CREATE TABLE `sourceapprovisionements` (
  `id` smallint(6) NOT NULL,
  `nom` text,
  `formationSante_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `formationSante_id` (`formationSante_id`),
  CONSTRAINT `sourceapprovisionements_ibfk_1` FOREIGN KEY (`formationSante_id`) REFERENCES `formationsantes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `sourceapprovisionnemt` */

DROP TABLE IF EXISTS `sourceapprovisionnemt`;

CREATE TABLE `sourceapprovisionnemt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `technicienlabo` */

DROP TABLE IF EXISTS `technicienlabo`;

CREATE TABLE `technicienlabo` (
  `id` int(10) DEFAULT NULL,
  `ressourceHumaine_id` int(10) DEFAULT NULL,
  `effectifPersonel` int(11) DEFAULT NULL,
  `effectifPersonnelDisponible` int(11) DEFAULT NULL,
  `administrationAntibiotiqueMere` int(11) DEFAULT NULL,
  `administrationAntibiotiqueNouveauNes` int(11) DEFAULT NULL,
  `administrationOcytocine` int(11) DEFAULT NULL,
  `administrationMisoprostol` int(11) DEFAULT NULL,
  `administrationSulfate` int(11) DEFAULT NULL,
  `extractionManuelPlacenta` int(11) DEFAULT NULL,
  `evacuationUterineAspiration` int(11) DEFAULT NULL,
  `evacuationUterineDilatation` int(11) DEFAULT NULL,
  `accouchementVoieBasseVentouse` int(11) DEFAULT NULL,
  `reanimationNeotale` int(11) DEFAULT NULL,
  `transfusionMere` int(11) DEFAULT NULL,
  `transfusionNouveauNe` int(11) DEFAULT NULL,
  `cesarienne` int(11) DEFAULT NULL,
  KEY `ressourceHumaine_id` (`ressourceHumaine_id`),
  CONSTRAINT `technicienlabo_ibfk_1` FOREIGN KEY (`ressourceHumaine_id`) REFERENCES `ressourcehumaines` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `typeetablissements` */

DROP TABLE IF EXISTS `typeetablissements`;

CREATE TABLE `typeetablissements` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `type` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `typemateriaux` */

DROP TABLE IF EXISTS `typemateriaux`;

CREATE TABLE `typemateriaux` (
  `id` smallint(6) NOT NULL AUTO_INCREMENT,
  `type` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `typeorganisations` */

DROP TABLE IF EXISTS `typeorganisations`;

CREATE TABLE `typeorganisations` (
  `id` smallint(6) NOT NULL,
  `type` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Table structure for table `zones` */

DROP TABLE IF EXISTS `zones`;

CREATE TABLE `zones` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
