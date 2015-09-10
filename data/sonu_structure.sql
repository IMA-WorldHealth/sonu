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
