-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: HANA
-- ------------------------------------------------------
-- Server version	8.0.21-0ubuntu0.20.04.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ABC01-01-T161`
--

DROP TABLE IF EXISTS `ABC01-01-T161`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-01-T161` (
  `Client` int DEFAULT NULL,
  `Purchasing Document Category` varchar(1) DEFAULT NULL,
  `Purchasing Document Type` varchar(4) DEFAULT NULL,
  `Control indicator for purchasing document type` varchar(1) DEFAULT NULL,
  `Item Number Interval` int DEFAULT NULL,
  `Number Range of Internal Number Assignment` int DEFAULT NULL,
  `Number Range of External Number Assignment` int DEFAULT NULL,
  `Field Selection Key` varchar(5) DEFAULT NULL,
  `Reference document type` varchar(2) DEFAULT NULL,
  `Prepopulate Standard Release Order Quantity in Contract` varchar(10) DEFAULT NULL,
  `Update Group for statistics update` varchar(3) DEFAULT NULL,
  `Item Number Interval for Subitems` int DEFAULT NULL,
  `Document with time-dependent conditions` varchar(10) DEFAULT NULL,
  `Partner Determination Procedure` varchar(10) DEFAULT NULL,
  `Number range in case of internal number assignment for ALE` varchar(10) DEFAULT NULL,
  `Hierarchy Category: Supplier Hierarchy` varchar(1) DEFAULT NULL,
  `Indicator for scheduling agreement release documentation` varchar(10) DEFAULT NULL,
  `Overall release of purchase requisitions` varchar(10) DEFAULT NULL,
  `Layout` varchar(3) DEFAULT NULL,
  `Only shared lock in case of contract release order` varchar(10) DEFAULT NULL,
  `Distributed contract (ALE)` varchar(10) DEFAULT NULL,
  `Competitive bidding procedure using global percentage bids` varchar(10) DEFAULT NULL,
  `Correction of miscellaneous provisions` varchar(10) DEFAULT NULL,
  `Stock Transfer: Take Supplier Data into Account` varchar(1) DEFAULT NULL,
  `Contract with delivery schedule` varchar(10) DEFAULT NULL,
  `Document type` varchar(10) DEFAULT NULL,
  `Contract allowed as release order against contract` varchar(10) DEFAULT NULL,
  `Quantity schedule creation permitted` varchar(10) DEFAULT NULL,
  `Precedence for RFQ or default requisition for TDP PO` varchar(10) DEFAULT NULL,
  `Indicator for Further Processing of Summarized Documents` varchar(10) DEFAULT NULL,
  `Cross-System Transit` varchar(10) DEFAULT NULL,
  `Commitment Plan is Active` varchar(10) DEFAULT NULL,
  `Category of Commitment Plan` varchar(10) DEFAULT NULL,
  `Store Return with Inbound and Outbound Delivery` varchar(1) DEFAULT NULL,
  `Advanced Returns Management Active` varchar(1) DEFAULT NULL,
  `Risk Distribution Plan Profile` varchar(10) DEFAULT NULL,
  `Number Range for SRM Central Contract` varchar(10) DEFAULT NULL,
  `Indicator for Follow on Documents of Quote1` varchar(10) DEFAULT NULL,
  `Indicator for Follow on Documents of Quote2` varchar(10) DEFAULT NULL,
  `Indicator for Follow on Documents of Quote3` varchar(10) DEFAULT NULL,
  `External Processing for RFQ and Supplier Quotation` varchar(10) DEFAULT NULL,
  `Flexible Workflow` varchar(10) DEFAULT NULL,
  `RFQ Awarding Type (Internal/External)` varchar(10) DEFAULT NULL,
  `Trade Compliance is active` varchar(10) DEFAULT NULL,
  `Fast Data Entry of Characteristics Is Active` varchar(10) DEFAULT NULL,
  `Activate Inheritance` varchar(10) DEFAULT NULL,
  `Log of Characteristic Value Inheritance` varchar(10) DEFAULT NULL,
  `Inheritance: Overwrite User Values` varchar(10) DEFAULT NULL,
  `Inheritance of Characteristics Selection List` varchar(10) DEFAULT NULL,
  `Characteristic name` varchar(10) DEFAULT NULL,
  `Global/Local Group May Be Undone` varchar(10) DEFAULT NULL,
  `Tolerance Key for Overdraw Tolerance` varchar(10) DEFAULT NULL,
  `VAS Active Flag` varchar(10) DEFAULT NULL,
  `Determination Procedure` varchar(10) DEFAULT NULL,
  `Criteria for VAS Deletion during Determination` varchar(10) DEFAULT NULL,
  `Date for VAS Determination` varchar(10) DEFAULT NULL,
  `Exclude Return Items` varchar(10) DEFAULT NULL,
  `Determination Procedure1` varchar(10) DEFAULT NULL,
  `Determination Procedure for Distribution Curve` varchar(10) DEFAULT NULL,
  `Generic Article Creation in Purchase Documents` varchar(10) DEFAULT NULL,
  `Correlate VAS Confirmed Quantity` varchar(10) DEFAULT NULL,
  `Automatic distribution indicator` varchar(10) DEFAULT NULL,
  `Allow Creation of Purchase Contract with GA Without Variants` varchar(10) DEFAULT NULL,
  `Allow contract consumption by structured article components` varchar(10) DEFAULT NULL,
  `Allow contract determination for structured art. components` varchar(10) DEFAULT NULL,
  `Mill: Use reference characteristics in Purchasing` varchar(10) DEFAULT NULL,
  `Enable Dateline` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC01-02-T162`
--

DROP TABLE IF EXISTS `ABC01-02-T162`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-02-T162` (
  `Client` int DEFAULT NULL,
  `Field Selection Key` varchar(5) DEFAULT NULL,
  `Field selection string1` varchar(70) DEFAULT NULL,
  `Field selection string2` varchar(70) DEFAULT NULL,
  `Field selection string3` varchar(70) DEFAULT NULL,
  `Field selection string4` varchar(58) DEFAULT NULL,
  `Field selection string5` varchar(10) DEFAULT NULL,
  `Purchasing Document Category` varchar(1) DEFAULT NULL,
  `Field selection string6` varchar(10) DEFAULT NULL,
  `Field selection string7` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC01-03-T169G`
--

DROP TABLE IF EXISTS `ABC01-03-T169G`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-03-T169G` (
  `Client` int DEFAULT NULL,
  `Company Code` varchar(4) DEFAULT NULL,
  `Tolerance Key` varchar(2) DEFAULT NULL,
  `Value1` decimal(4,2) DEFAULT NULL,
  `Limit is to be Checked` varchar(1) DEFAULT NULL,
  `Limit is not to be Checked` varchar(1) DEFAULT NULL,
  `Value2` decimal(4,2) DEFAULT NULL,
  `Limit is to be Checked1` varchar(1) DEFAULT NULL,
  `Limit is not to be Checked1` varchar(1) DEFAULT NULL,
  `Percentage Tolerance Limit1` int DEFAULT NULL,
  `Limit is to be Checked2` varchar(1) DEFAULT NULL,
  `Limit is not to be Checked2` varchar(1) DEFAULT NULL,
  `Percentage Tolerance Limit2` int DEFAULT NULL,
  `Limit is to be Checked3` varchar(1) DEFAULT NULL,
  `Limit is not to be Checked3` varchar(1) DEFAULT NULL,
  `Currency Key` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC01-04-T405`
--

DROP TABLE IF EXISTS `ABC01-04-T405`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-04-T405` (
  `Cl.` int DEFAULT NULL,
  `PV key` int DEFAULT NULL,
  `Remind1` int DEFAULT NULL,
  `Remind2` int DEFAULT NULL,
  `Remind3` int DEFAULT NULL,
  `Underdel.Tol.` int DEFAULT NULL,
  `Overdel. Tol.` int DEFAULT NULL,
  `Unlimited` varchar(1) DEFAULT NULL,
  `SI` varchar(10) DEFAULT NULL,
  `ARq` varchar(10) DEFAULT NULL,
  `Min. %` int DEFAULT NULL,
  `StValDDVar` int DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC01-05-MARA`
--

DROP TABLE IF EXISTS `ABC01-05-MARA`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-05-MARA` (
  `Cl.` int DEFAULT NULL,
  `Material` varchar(8) DEFAULT NULL,
  `Created` int DEFAULT NULL,
  `Created At Time` int DEFAULT NULL,
  `Created by` varchar(7) DEFAULT NULL,
  `Last Chg` int DEFAULT NULL,
  `Changed by` varchar(7) DEFAULT NULL,
  `Complete status` varchar(9) DEFAULT NULL,
  `Maint. status` varchar(8) DEFAULT NULL,
  `Clt` varchar(10) DEFAULT NULL,
  `MTyp` varchar(4) DEFAULT NULL,
  `I` varchar(1) DEFAULT NULL,
  `Matl Group` varchar(7) DEFAULT NULL,
  `Old material no.` varchar(18) DEFAULT NULL,
  `BUn` varchar(3) DEFAULT NULL,
  `OUn` varchar(10) DEFAULT NULL,
  `Document` varchar(10) DEFAULT NULL,
  `Type` varchar(10) DEFAULT NULL,
  `Vers` varchar(10) DEFAULT NULL,
  `Page` varchar(10) DEFAULT NULL,
  `Ch.no.` varchar(10) DEFAULT NULL,
  `PNo` varchar(10) DEFAULT NULL,
  `No.` int DEFAULT NULL,
  `Prod./insp. memo` varchar(10) DEFAULT NULL,
  `For.` varchar(10) DEFAULT NULL,
  `Size/dimensions` varchar(10) DEFAULT NULL,
  `Basic material` varchar(10) DEFAULT NULL,
  `Industry Std Desc.` varchar(10) DEFAULT NULL,
  `L/O` varchar(10) DEFAULT NULL,
  `PV key` varchar(10) DEFAULT NULL,
  `Gross weight` int DEFAULT NULL,
  `Net weight` int DEFAULT NULL,
  `WUn` varchar(2) DEFAULT NULL,
  `Volume` int DEFAULT NULL,
  `VUn` varchar(10) DEFAULT NULL,
  `CR` varchar(10) DEFAULT NULL,
  `SC` varchar(10) DEFAULT NULL,
  `Temp` varchar(10) DEFAULT NULL,
  `Cde` varchar(1) DEFAULT NULL,
  `TGroup` varchar(1) DEFAULT NULL,
  `Haz. material no.` varchar(10) DEFAULT NULL,
  `Dv` varchar(2) DEFAULT NULL,
  `Competitor` varchar(10) DEFAULT NULL,
  `EAN Number` varchar(10) DEFAULT NULL,
  `Number of GR slips` int DEFAULT NULL,
  `R` varchar(10) DEFAULT NULL,
  `S` varchar(10) DEFAULT NULL,
  `Seas` varchar(10) DEFAULT NULL,
  `LT` varchar(10) DEFAULT NULL,
  `LF` varchar(10) DEFAULT NULL,
  `Field deact.` varchar(10) DEFAULT NULL,
  `EAN/UPC` varchar(10) DEFAULT NULL,
  `Ct` varchar(10) DEFAULT NULL,
  `Length` int DEFAULT NULL,
  `Width` int DEFAULT NULL,
  `Height` int DEFAULT NULL,
  `Unit of Dimension` varchar(10) DEFAULT NULL,
  `Product hierarchy` varchar(10) DEFAULT NULL,
  `Stock Transfer Net Change Costing` varchar(10) DEFAULT NULL,
  `CAD` varchar(10) DEFAULT NULL,
  `QM` varchar(10) DEFAULT NULL,
  `AllowedWeight` int DEFAULT NULL,
  `Un.` varchar(10) DEFAULT NULL,
  `Allowed vol.` int DEFAULT NULL,
  `VUn1` varchar(10) DEFAULT NULL,
  `EWT` int DEFAULT NULL,
  `EVT` int DEFAULT NULL,
  `V1` varchar(10) DEFAULT NULL,
  `R1` varchar(10) DEFAULT NULL,
  `Conf.` varchar(10) DEFAULT NULL,
  `BMR` varchar(1) DEFAULT NULL,
  `PkMtT` varchar(10) DEFAULT NULL,
  `MxL` int DEFAULT NULL,
  `StFtr` int DEFAULT NULL,
  `GrPMt` varchar(10) DEFAULT NULL,
  `AGrp` varchar(10) DEFAULT NULL,
  `Valid From` int DEFAULT NULL,
  `Valid to` int DEFAULT NULL,
  `SeYr` varchar(10) DEFAULT NULL,
  `PBC` varchar(10) DEFAULT NULL,
  `WE` varchar(10) DEFAULT NULL,
  `Ext. Material Grp` varchar(10) DEFAULT NULL,
  `Cross-plant CM` varchar(10) DEFAULT NULL,
  `Ct1` varchar(10) DEFAULT NULL,
  `CoPr` varchar(10) DEFAULT NULL,
  `F` varchar(10) DEFAULT NULL,
  `Pricing Ref. Matl` varchar(10) DEFAULT NULL,
  `X-Plant Material Status` varchar(10) DEFAULT NULL,
  `St` varchar(10) DEFAULT NULL,
  `Valid from1` int DEFAULT NULL,
  `Valid from2` int DEFAULT NULL,
  `TaxCl` varchar(10) DEFAULT NULL,
  `Cat.Prof.` varchar(10) DEFAULT NULL,
  `RShLi` int DEFAULT NULL,
  `SLife` int DEFAULT NULL,
  `Stge%` int DEFAULT NULL,
  `CUn` varchar(10) DEFAULT NULL,
  `Net contents` int DEFAULT NULL,
  `per` int DEFAULT NULL,
  `Labeling matl grpg` varchar(10) DEFAULT NULL,
  `Gross cnts` int DEFAULT NULL,
  `QCM` varchar(10) DEFAULT NULL,
  `Object no.` int DEFAULT NULL,
  `E` varchar(10) DEFAULT NULL,
  `Product allocation` varchar(10) DEFAULT NULL,
  `PP` varchar(10) DEFAULT NULL,
  `DiK` varchar(10) DEFAULT NULL,
  `MPN` varchar(26) DEFAULT NULL,
  `Manufact.` varchar(10) DEFAULT NULL,
  `Int. material no.` varchar(10) DEFAULT NULL,
  `MPP` varchar(10) DEFAULT NULL,
  `U` varchar(10) DEFAULT NULL,
  `Rollout` varchar(10) DEFAULT NULL,
  `Pro.` varchar(10) DEFAULT NULL,
  `HighlyVisc` varchar(10) DEFAULT NULL,
  `In bulk/liquid` varchar(10) DEFAULT NULL,
  `SL` varchar(1) DEFAULT NULL,
  `C` varchar(10) DEFAULT NULL,
  `AR` varchar(10) DEFAULT NULL,
  `Par.ef.` varchar(10) DEFAULT NULL,
  `CL` int DEFAULT NULL,
  `Per. Ind.` varchar(10) DEFAULT NULL,
  `Round.rule` varchar(10) DEFAULT NULL,
  `Prod.Comp.` varchar(10) DEFAULT NULL,
  `ItCGr` varchar(4) DEFAULT NULL,
  `Logistical variants` varchar(10) DEFAULT NULL,
  `Material is locked` varchar(10) DEFAULT NULL,
  `Indicator for relevance in CM` varchar(10) DEFAULT NULL,
  `T` varchar(10) DEFAULT NULL,
  `Expiration Date` varchar(1) DEFAULT NULL,
  `EAN Variant` varchar(10) DEFAULT NULL,
  `Generic Material` varchar(10) DEFAULT NULL,
  `Reference material` varchar(10) DEFAULT NULL,
  `GDS-Relevant` varchar(10) DEFAULT NULL,
  `OA` varchar(10) DEFAULT NULL,
  `Standard HU Type` varchar(10) DEFAULT NULL,
  `Pilferable` varchar(10) DEFAULT NULL,
  `WHStCond` varchar(10) DEFAULT NULL,
  `WHMatGrp` varchar(10) DEFAULT NULL,
  `Hand.Ind.` varchar(10) DEFAULT NULL,
  `Rel. for HS` varchar(10) DEFAULT NULL,
  `Handling Unit Type` varchar(10) DEFAULT NULL,
  `V` varchar(10) DEFAULT NULL,
  `Maximum Capacity` int DEFAULT NULL,
  `OCT` int DEFAULT NULL,
  `Max. Pack. Length` int DEFAULT NULL,
  `Max. Pack. Width` int DEFAULT NULL,
  `Max. Pack. Height` int DEFAULT NULL,
  `UoM` varchar(10) DEFAULT NULL,
  `Orig` varchar(10) DEFAULT NULL,
  `MatFrtGp` varchar(10) DEFAULT NULL,
  `QPer.` int DEFAULT NULL,
  `Quarantine Time Unit` varchar(10) DEFAULT NULL,
  `Quality Inspection Group` varchar(10) DEFAULT NULL,
  `Serial No. Profile` varchar(10) DEFAULT NULL,
  `Name` varchar(10) DEFAULT NULL,
  `Logistics Unit of Measure` varchar(10) DEFAULT NULL,
  `Material Is a CW Material` varchar(10) DEFAULT NULL,
  `CW Profile for CW Quantity` varchar(10) DEFAULT NULL,
  `Catch Weight Tolerance Group` varchar(10) DEFAULT NULL,
  `Adjustment Profile (Merchandise Distr.)` varchar(10) DEFAULT NULL,
  `Intellectual Property` varchar(10) DEFAULT NULL,
  `Var.Pr.All` varchar(10) DEFAULT NULL,
  `Medium` varchar(10) DEFAULT NULL,
  `Commodity` varchar(10) DEFAULT NULL,
  `Animal` varchar(10) DEFAULT NULL,
  `TxCmpActiv` varchar(10) DEFAULT NULL,
  `Last Chgd. Time` int DEFAULT NULL,
  `Material1` varchar(8) DEFAULT NULL,
  `Chemical Compliance Relevance Indicator` varchar(10) DEFAULT NULL,
  `Category of a Logistical Material` varchar(10) DEFAULT NULL,
  `Material Number of Sales Material` varchar(10) DEFAULT NULL,
  `Identification Tag Type` varchar(10) DEFAULT NULL,
  `Segmentation Structure` varchar(10) DEFAULT NULL,
  `Segmentation Strategy` varchar(10) DEFAULT NULL,
  `Segmentation Status` varchar(10) DEFAULT NULL,
  `Scope` varchar(10) DEFAULT NULL,
  `Segmentation Relevant` varchar(10) DEFAULT NULL,
  `ANP Code` int DEFAULT NULL,
  `Protected Species Management Code` varchar(10) DEFAULT NULL,
  `Fashion Attribute 1` varchar(10) DEFAULT NULL,
  `Fashion Attribute 2` varchar(10) DEFAULT NULL,
  `Fashion Attribute 3` varchar(10) DEFAULT NULL,
  `Season Usage` varchar(10) DEFAULT NULL,
  `Season Active in IM` varchar(10) DEFAULT NULL,
  `MID` varchar(10) DEFAULT NULL,
  `Dummy Field` varchar(10) DEFAULT NULL,
  `Product` varchar(10) DEFAULT NULL,
  `Product ID` varchar(22) DEFAULT NULL,
  `Maturation Time` varchar(1) DEFAULT NULL,
  `Min.Sh.Lfe` varchar(1) DEFAULT NULL,
  `Max.Sh.Lfe` varchar(1) DEFAULT NULL,
  `Preferred Unit of Measure` varchar(10) DEFAULT NULL,
  `Reference Product for Package Building` varchar(10) DEFAULT NULL,
  `Product Shape` varchar(10) DEFAULT NULL,
  `Product Orientation Profile` varchar(10) DEFAULT NULL,
  `Overhang Threshold [%]` varchar(1) DEFAULT NULL,
  `Bridge Threshold [%]` varchar(1) DEFAULT NULL,
  `Maximum Slope for Bridges` varchar(1) DEFAULT NULL,
  `Absolute Height Threshold: Stacking on N` varchar(1) DEFAULT NULL,
  `UoM of Absolute Height Threshold` varchar(10) DEFAULT NULL,
  `Product for Kit-to-Order` varchar(10) DEFAULT NULL,
  `Procure to Order` varchar(10) DEFAULT NULL,
  `Push Deployment from Supplier` varchar(10) DEFAULT NULL,
  `Inventory Balancing Not Allowed` varchar(10) DEFAULT NULL,
  `DRP: Global Stock on Entry Location` varchar(10) DEFAULT NULL,
  `Excl. from Express Shipm.` varchar(10) DEFAULT NULL,
  `Material Is Activated for CW` varchar(10) DEFAULT NULL,
  `ValUM` varchar(10) DEFAULT NULL,
  `TolGr` varchar(10) DEFAULT NULL,
  `Fixed Tare` varchar(10) DEFAULT NULL,
  `Reference Unit of Measure for the TARE C` varchar(10) DEFAULT NULL,
  `LU` varchar(1) DEFAULT NULL,
  `Loading Unit Group` varchar(10) DEFAULT NULL,
  `C1` varchar(10) DEFAULT NULL,
  `Tol. Type` varchar(10) DEFAULT NULL,
  `CGrp.` varchar(10) DEFAULT NULL,
  `DSDGrp` varchar(10) DEFAULT NULL,
  `Cable Diameter` varchar(1) DEFAULT NULL,
  `Unit for Dimensions` varchar(10) DEFAULT NULL,
  `Cable Diameter Allowance in Percent` varchar(1) DEFAULT NULL,
  `Bend.Factor` varchar(1) DEFAULT NULL,
  `Inner Width` varchar(1) DEFAULT NULL,
  `Outer Diameter` varchar(1) DEFAULT NULL,
  `Core Diameter` varchar(1) DEFAULT NULL,
  `Load Capacity` varchar(1) DEFAULT NULL,
  `R-O Flange Thick.` varchar(1) DEFAULT NULL,
  `R-O Flange Height` varchar(1) DEFAULT NULL,
  `Coil Delivery` varchar(10) DEFAULT NULL,
  `Run-Out Flnge` varchar(10) DEFAULT NULL,
  `No. Vert. Layers` varchar(1) DEFAULT NULL,
  `Smallest Permitted Clearance` varchar(1) DEFAULT NULL,
  `Serialization Type` varchar(1) DEFAULT NULL,
  `Synchronization Active` varchar(10) DEFAULT NULL,
  `Last Synchronization Time` varchar(1) DEFAULT NULL,
  `Indicator Changed Since Integration` varchar(10) DEFAULT NULL,
  `Profile Relevant Country` varchar(10) DEFAULT NULL,
  `Product Category` varchar(10) DEFAULT NULL,
  `Tilt.` varchar(10) DEFAULT NULL,
  `HoStck` varchar(10) DEFAULT NULL,
  `Bott.` varchar(10) DEFAULT NULL,
  `Top` varchar(10) DEFAULT NULL,
  `StckF` varchar(1) DEFAULT NULL,
  `w/o PKM` varchar(10) DEFAULT NULL,
  `Overhang Depth` varchar(1) DEFAULT NULL,
  `Overhang Width` varchar(1) DEFAULT NULL,
  `Max. Height` varchar(1) DEFAULT NULL,
  `Min. Height` varchar(1) DEFAULT NULL,
  `Stack Height Tol.` varchar(1) DEFAULT NULL,
  `Mat/PKM` varchar(1) DEFAULT NULL,
  `UoM VSO` varchar(10) DEFAULT NULL,
  `Closed PKM` varchar(10) DEFAULT NULL,
  `PckCod` varchar(10) DEFAULT NULL,
  `DG Packaging Status` varchar(10) DEFAULT NULL,
  `Duration of Work` varchar(1) DEFAULT NULL,
  `Unit` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC01-06-LFM1`
--

DROP TABLE IF EXISTS `ABC01-06-LFM1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-06-LFM1` (
  `Cl.` int DEFAULT NULL,
  `Vendor` varchar(10) DEFAULT NULL,
  `POrg` varchar(4) DEFAULT NULL,
  `Created on` int DEFAULT NULL,
  `Created by` varchar(7) DEFAULT NULL,
  `B` varchar(10) DEFAULT NULL,
  `D` varchar(10) DEFAULT NULL,
  `ABC` varchar(10) DEFAULT NULL,
  `Crcy` varchar(3) DEFAULT NULL,
  `Supplier Quot.` varchar(10) DEFAULT NULL,
  `Telephone` varchar(10) DEFAULT NULL,
  `Minimum value` int DEFAULT NULL,
  `PayT` varchar(4) DEFAULT NULL,
  `IncoT` varchar(10) DEFAULT NULL,
  `Inco. 2` varchar(10) DEFAULT NULL,
  `GR-IV` varchar(1) DEFAULT NULL,
  `ARq` varchar(10) DEFAULT NULL,
  `Gr` varchar(10) DEFAULT NULL,
  `Aut` varchar(10) DEFAULT NULL,
  `MoT` varchar(10) DEFAULT NULL,
  `CustOf` varchar(10) DEFAULT NULL,
  `C` varchar(10) DEFAULT NULL,
  `PGr` varchar(3) DEFAULT NULL,
  `E` varchar(10) DEFAULT NULL,
  `PDT` int DEFAULT NULL,
  `Cal` varchar(10) DEFAULT NULL,
  `PCy` varchar(10) DEFAULT NULL,
  `Order entry: supplier` varchar(10) DEFAULT NULL,
  `Supplier price marking` varchar(10) DEFAULT NULL,
  `Rack jobbing` varchar(10) DEFAULT NULL,
  `IncoV` varchar(10) DEFAULT NULL,
  `Incoterms Location 1` varchar(10) DEFAULT NULL,
  `Incoterms Location 2` varchar(10) DEFAULT NULL,
  `PrD` varchar(10) DEFAULT NULL,
  `DKd` varchar(10) DEFAULT NULL,
  `Index` varchar(10) DEFAULT NULL,
  `Index1` varchar(10) DEFAULT NULL,
  `Returns supplier` varchar(10) DEFAULT NULL,
  `Sort criterion` varchar(10) DEFAULT NULL,
  `Ctr.` varchar(10) DEFAULT NULL,
  `R. Profile` varchar(10) DEFAULT NULL,
  `UnGr` varchar(10) DEFAULT NULL,
  `SSL` int DEFAULT NULL,
  `LBPro` varchar(10) DEFAULT NULL,
  `AutEvGRSet` varchar(10) DEFAULT NULL,
  `Acc.w. supp.` varchar(10) DEFAULT NULL,
  `Profile` varchar(10) DEFAULT NULL,
  `PA prof.` varchar(10) DEFAULT NULL,
  `Stt. Mgmt.` varchar(10) DEFAULT NULL,
  `R` varchar(10) DEFAULT NULL,
  `SC` varchar(10) DEFAULT NULL,
  `Service-Based Invoice Verification` varchar(10) DEFAULT NULL,
  `SuSet` varchar(10) DEFAULT NULL,
  `B.vol.comp./ag.nec.` varchar(10) DEFAULT NULL,
  `Supplier RMA Number Required` varchar(10) DEFAULT NULL,
  `Data Element Extensibility for purchase` varchar(10) DEFAULT NULL,
  `Exc` varchar(10) DEFAULT NULL,
  `AutoDebit` varchar(10) DEFAULT NULL,
  `Profile1` varchar(10) DEFAULT NULL,
  `Abs. HSC` int DEFAULT NULL,
  `HSC %` int DEFAULT NULL,
  `Min. HSC` int DEFAULT NULL,
  `Max. HSC` int DEFAULT NULL,
  `Customer/Supplier ID` varchar(10) DEFAULT NULL,
  `VAS Determination Mode` varchar(10) DEFAULT NULL,
  `Pricing on sub-items` varchar(10) DEFAULT NULL,
  `Activity Profile` varchar(10) DEFAULT NULL,
  `Transportation Chain` varchar(10) DEFAULT NULL,
  `Staging Time` int DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC01-T01`
--

DROP TABLE IF EXISTS `ABC01-T01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-T01` (
  `Company Code` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `Tolerance Key` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `Value2` decimal(4,2) DEFAULT NULL,
  `Limit is to be checked1` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Percentage Tolerance Limit2` int DEFAULT NULL,
  `Limit is to be checked3` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC01-T02`
--

DROP TABLE IF EXISTS `ABC01-T02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-T02` (
  `Cl.` int DEFAULT NULL,
  `Material` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `Created` int DEFAULT NULL,
  `Created At Time` int DEFAULT NULL,
  `Created by` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `Last Chg` int DEFAULT NULL,
  `Changed by` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `Complete status` varchar(9) CHARACTER SET utf8 DEFAULT NULL,
  `Maint. status` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `Clt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `MTyp` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `I` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Matl Group` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `Old material no.` varchar(18) CHARACTER SET utf8 DEFAULT NULL,
  `BUn` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `OUn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Document` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Vers` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Page` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Ch.no.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PNo` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `No.` int DEFAULT NULL,
  `Prod./insp. memo` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `For.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Size/dimensions` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Basic material` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Industry Std Desc.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `L/O` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PV key` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Gross weight` int DEFAULT NULL,
  `Net weight` int DEFAULT NULL,
  `WUn` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `Volume` int DEFAULT NULL,
  `VUn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CR` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Temp` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Cde` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `TGroup` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Haz. material no.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Dv` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `Competitor` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `EAN Number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Number of GR slips` int DEFAULT NULL,
  `R` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `S` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Seas` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `LT` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `LF` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Field deact.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `EAN/UPC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Ct` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Length` int DEFAULT NULL,
  `Width` int DEFAULT NULL,
  `Height` int DEFAULT NULL,
  `Unit of Dimension` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Product hierarchy` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Stock Transfer Net Change Costing` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CAD` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `QM` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `AllowedWeight` int DEFAULT NULL,
  `Un.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Allowed vol.` int DEFAULT NULL,
  `VUn1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `EWT` int DEFAULT NULL,
  `EVT` int DEFAULT NULL,
  `V1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `R1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Conf.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `BMR` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `PkMtT` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `MxL` int DEFAULT NULL,
  `StFtr` int DEFAULT NULL,
  `GrPMt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `AGrp` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Valid From` int DEFAULT NULL,
  `Valid to` int DEFAULT NULL,
  `SeYr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PBC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `WE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Ext. Material Grp` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Cross-plant CM` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Ct1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CoPr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `F` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Pricing Ref. Matl` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `X-Plant Material Status` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `St` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Valid from1` int DEFAULT NULL,
  `Valid from2` int DEFAULT NULL,
  `TaxCl` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Cat.Prof.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `RShLi` int DEFAULT NULL,
  `SLife` int DEFAULT NULL,
  `Stge%` int DEFAULT NULL,
  `CUn` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Net contents` int DEFAULT NULL,
  `per` int DEFAULT NULL,
  `Labeling matl grpg` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Gross cnts` int DEFAULT NULL,
  `QCM` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Object no.` int DEFAULT NULL,
  `E` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Product allocation` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PP` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `DiK` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `MPN` varchar(26) CHARACTER SET utf8 DEFAULT NULL,
  `Manufact.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Int. material no.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `MPP` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `U` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Rollout` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Pro.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `HighlyVisc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `In bulk/liquid` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SL` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `C` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `AR` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Par.ef.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CL` int DEFAULT NULL,
  `Per. Ind.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Round.rule` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Prod.Comp.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ItCGr` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `Logistical variants` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Material is locked` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Indicator for relevance in CM` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `T` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Expiration Date` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `EAN Variant` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Generic Material` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Reference material` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `GDS-Relevant` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `OA` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Standard HU Type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Pilferable` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `WHStCond` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `WHMatGrp` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Hand.Ind.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Rel. for HS` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Handling Unit Type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `V` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Maximum Capacity` int DEFAULT NULL,
  `OCT` int DEFAULT NULL,
  `Max. Pack. Length` int DEFAULT NULL,
  `Max. Pack. Width` int DEFAULT NULL,
  `Max. Pack. Height` int DEFAULT NULL,
  `UoM` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Orig` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `MatFrtGp` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `QPer.` int DEFAULT NULL,
  `Quarantine Time Unit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Quality Inspection Group` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Serial No. Profile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Name` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Logistics Unit of Measure` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Material Is a CW Material` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CW Profile for CW Quantity` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Catch Weight Tolerance Group` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Adjustment Profile (Merchandise Distr.)` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Intellectual Property` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Var.Pr.All` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Medium` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Commodity` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Animal` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `TxCmpActiv` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Last Chgd. Time` int DEFAULT NULL,
  `Material1` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `Chemical Compliance Relevance Indicator` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Category of a Logistical Material` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Material Number of Sales Material` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Identification Tag Type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Segmentation Structure` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Segmentation Strategy` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Segmentation Status` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Scope` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Segmentation Relevant` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ANP Code` int DEFAULT NULL,
  `Protected Species Management Code` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Fashion Attribute 1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Fashion Attribute 2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Fashion Attribute 3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Season Usage` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Season Active in IM` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `MID` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Dummy Field` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Product` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Product ID` varchar(22) CHARACTER SET utf8 DEFAULT NULL,
  `Maturation Time` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Min.Sh.Lfe` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Max.Sh.Lfe` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Preferred Unit of Measure` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Reference Product for Package Building` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Product Shape` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Product Orientation Profile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Overhang Threshold [%]` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Bridge Threshold [%]` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Maximum Slope for Bridges` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Absolute Height Threshold: Stacking on N` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `UoM of Absolute Height Threshold` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Product for Kit-to-Order` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Procure to Order` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Push Deployment from Supplier` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Inventory Balancing Not Allowed` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `DRP: Global Stock on Entry Location` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Excl. from Express Shipm.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Material Is Activated for CW` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ValUM` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `TolGr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Fixed Tare` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Reference Unit of Measure for the TARE C` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `LU` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Loading Unit Group` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `C1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tol. Type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CGrp.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `DSDGrp` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Cable Diameter` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Unit for Dimensions` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Cable Diameter Allowance in Percent` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Bend.Factor` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Inner Width` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Outer Diameter` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Core Diameter` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Load Capacity` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `R-O Flange Thick.` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `R-O Flange Height` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Coil Delivery` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Run-Out Flnge` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `No. Vert. Layers` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Smallest Permitted Clearance` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Serialization Type` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Synchronization Active` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Last Synchronization Time` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Indicator Changed Since Integration` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Profile Relevant Country` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Product Category` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tilt.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `HoStck` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Bott.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Top` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `StckF` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `w/o PKM` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Overhang Depth` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Overhang Width` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Max. Height` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Min. Height` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Stack Height Tol.` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Mat/PKM` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `UoM VSO` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Closed PKM` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PckCod` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `DG Packaging Status` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Duration of Work` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Unit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC01-T03`
--

DROP TABLE IF EXISTS `ABC01-T03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-T03` (
  `POrg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `Total Count` bigint NOT NULL DEFAULT '0',
  `Total Count(with GR-IV=X)` bigint NOT NULL DEFAULT '0',
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC01-T04`
--

DROP TABLE IF EXISTS `ABC01-T04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-T04` (
  `Cl.` int DEFAULT NULL,
  `Vendor` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `POrg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `Created on` int DEFAULT NULL,
  `Created by` varchar(7) CHARACTER SET utf8 DEFAULT NULL,
  `B` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `D` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ABC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Crcy` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Supplier Quot.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Telephone` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Minimum value` int DEFAULT NULL,
  `PayT` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `IncoT` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Inco. 2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `GR-IV` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `ARq` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Gr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Aut` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `MoT` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CustOf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `C` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PGr` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `E` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PDT` int DEFAULT NULL,
  `Cal` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PCy` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Order entry: supplier` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Supplier price marking` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Rack jobbing` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `IncoV` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Incoterms Location 1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Incoterms Location 2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PrD` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `DKd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Index` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Index1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Returns supplier` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Sort criterion` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Ctr.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `R. Profile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `UnGr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SSL` int DEFAULT NULL,
  `LBPro` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `AutEvGRSet` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Acc.w. supp.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Profile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PA prof.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Stt. Mgmt.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `R` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Service-Based Invoice Verification` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SuSet` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `B.vol.comp./ag.nec.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Supplier RMA Number Required` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Data Element Extensibility for purchase` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Exc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `AutoDebit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Profile1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Abs. HSC` int DEFAULT NULL,
  `HSC %` int DEFAULT NULL,
  `Min. HSC` int DEFAULT NULL,
  `Max. HSC` int DEFAULT NULL,
  `Customer/Supplier ID` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `VAS Determination Mode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Pricing on sub-items` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Activity Profile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Transportation Chain` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Staging Time` int DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC01-T05`
--

DROP TABLE IF EXISTS `ABC01-T05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC01-T05` (
  `Client` int DEFAULT NULL,
  `Purchasing Document Type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Field Selection Key` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `Field selection string1` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `Field selection string2` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `Field selection string3` varchar(70) CHARACTER SET utf8 DEFAULT NULL,
  `Field selection string4` varchar(58) CHARACTER SET utf8 DEFAULT NULL,
  `Field selection string5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Purchasing Document Category` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Field selection string6` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Field selection string7` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL,
  PRIMARY KEY (`Purchasing Document Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC02-01-LFB1`
--

DROP TABLE IF EXISTS `ABC02-01-LFB1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC02-01-LFB1` (
  `Cl.` int DEFAULT NULL,
  `Vendor` varchar(10) NOT NULL,
  `CoCd` varchar(4) NOT NULL,
  `Pers.No.` varchar(20) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Created by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `B` varchar(10) DEFAULT NULL,
  `DelF` varchar(10) DEFAULT NULL,
  `Sort` varchar(10) DEFAULT NULL,
  `Recon.acct` varchar(20) DEFAULT NULL,
  `AuGr` varchar(10) DEFAULT NULL,
  `Int ID` varchar(10) DEFAULT NULL,
  `Methods` varchar(10) DEFAULT NULL,
  `Clearing with cust.` varchar(10) DEFAULT NULL,
  `Block Ind.` varchar(10) DEFAULT NULL,
  `PayT` varchar(3) DEFAULT NULL,
  `Acct w/ vndr` varchar(10) DEFAULT NULL,
  `Clerk at vendor` varchar(10) DEFAULT NULL,
  `Account Memo` varchar(10) DEFAULT NULL,
  `Plan. Group` varchar(10) DEFAULT NULL,
  `Clerk Abbrev.` varchar(10) DEFAULT NULL,
  `Hd office` varchar(10) DEFAULT NULL,
  `Alt.payee` varchar(10) DEFAULT NULL,
  `Key Date Lst Int.Calc` varchar(10) DEFAULT NULL,
  `Interest Calc. Frequency` varchar(10) DEFAULT NULL,
  `LastIntCal` varchar(10) DEFAULT NULL,
  `Local Processing` varchar(10) DEFAULT NULL,
  `Bill/Ex. Limit` varchar(10) DEFAULT NULL,
  `GrP` varchar(10) DEFAULT NULL,
  `Check Double Invoice` varchar(1) DEFAULT NULL,
  `Tolerance Group` varchar(10) DEFAULT NULL,
  `House bk` varchar(10) DEFAULT NULL,
  `Individual Payment` varchar(10) DEFAULT NULL,
  `Exempt.No.` varchar(10) DEFAULT NULL,
  `Val. Until` varchar(10) DEFAULT NULL,
  `WT` varchar(10) DEFAULT NULL,
  `Ind.` varchar(10) DEFAULT NULL,
  `Minority Indic.` varchar(10) DEFAULT NULL,
  `Pre.Ac.No.` varchar(10) DEFAULT NULL,
  `Grpng key` varchar(10) DEFAULT NULL,
  `Grpng Key1` varchar(10) DEFAULT NULL,
  `PmtMthSu` varchar(10) DEFAULT NULL,
  `Rec.Ty` varchar(10) DEFAULT NULL,
  `Exmpt.Auth` varchar(10) DEFAULT NULL,
  `WCty` varchar(10) DEFAULT NULL,
  `EDI` varchar(10) DEFAULT NULL,
  `AGrp` varchar(10) DEFAULT NULL,
  `ToGr` varchar(10) DEFAULT NULL,
  `Accounting clerk's fax` varchar(10) DEFAULT NULL,
  `Clerk's internet address` varchar(10) DEFAULT NULL,
  `Accts for Alt. Payee` varchar(10) DEFAULT NULL,
  `CrPT` varchar(10) DEFAULT NULL,
  `AC` varchar(10) DEFAULT NULL,
  `Distr` varchar(10) DEFAULT NULL,
  `Account Statement` varchar(10) DEFAULT NULL,
  `Certification Date` varchar(10) DEFAULT NULL,
  `CCdeCfStat` varchar(10) DEFAULT NULL,
  `Conf.date` varchar(10) DEFAULT NULL,
  `Conf.time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DeBl` varchar(10) DEFAULT NULL,
  `Accting clerk's telephone no.` varchar(10) DEFAULT NULL,
  `Paymt Advice by XML` varchar(10) DEFAULT NULL,
  `E-Mail for Avis` varchar(10) DEFAULT NULL,
  `Business Purpose Completed Flag` varchar(10) DEFAULT NULL,
  `main economic activity per CIIU code` varchar(20) DEFAULT NULL,
  `Dataelement for the Extension Company Co` varchar(10) DEFAULT NULL,
  `Ledger expiration date` varchar(10) DEFAULT NULL,
  `FW` varchar(10) DEFAULT NULL,
  `Val. Until1` varchar(10) DEFAULT NULL,
  `Future Exempt.no.` varchar(10) DEFAULT NULL,
  `Min.wage` varchar(10) DEFAULT NULL,
  `T` varchar(10) DEFAULT NULL,
  `Completion Date` varchar(10) DEFAULT NULL,
  `Offset Method` varchar(10) DEFAULT NULL,
  `Offset Percentage` varchar(10) DEFAULT NULL,
  `Basis Points` varchar(10) DEFAULT NULL,
  `Vendor in Execution` varchar(10) DEFAULT NULL,
  `Indus.` varchar(10) DEFAULT NULL,
  `Amount for Payment Program` varchar(20) DEFAULT NULL,
  `Crcy` varchar(10) DEFAULT NULL,
  `Foreign Shareholder` varchar(10) DEFAULT NULL,
  `Share of Foreign Corporate Body` varchar(20) DEFAULT NULL,
  `Notes` varchar(10) DEFAULT NULL,
  `Shareholder is Active` varchar(10) DEFAULT NULL,
  `Ctr` varchar(10) DEFAULT NULL,
  `US Recipient GIIN` varchar(10) DEFAULT NULL,
  `US Recipient Foreign Tax ID` varchar(10) DEFAULT NULL,
  `US Recipient Date Of Birth` varchar(10) DEFAULT NULL,
  `LOB Treaty Code` varchar(10) DEFAULT NULL,
  `W8 Form Received Date` varchar(10) DEFAULT NULL,
  `W9 Form Received Date` varchar(10) DEFAULT NULL,
  `Second TIN Notice from IRS` varchar(10) DEFAULT NULL,
  `Partnership Interest Indicator` varchar(10) DEFAULT NULL,
  `Prepayment Relevance (Supplier Master)` varchar(10) DEFAULT NULL,
  `Assignm. Test Group` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL,
  PRIMARY KEY (`Vendor`,`CoCd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC02-02-LFA1`
--

DROP TABLE IF EXISTS `ABC02-02-LFA1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC02-02-LFA1` (
  `Cl.` varchar(3) DEFAULT NULL,
  `Vendor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Cty` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Name 1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Name 2` varchar(10) DEFAULT NULL,
  `Name 3` varchar(10) DEFAULT NULL,
  `Name 4` varchar(10) DEFAULT NULL,
  `City` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `District` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PO Box` varchar(10) DEFAULT NULL,
  `PO Box pcd` varchar(10) DEFAULT NULL,
  `PostalCode` varchar(10) DEFAULT NULL,
  `Rg` varchar(2) DEFAULT NULL,
  `SearchTerm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Street` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `Name 1 1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Name 2 1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `City1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Train station` varchar(10) DEFAULT NULL,
  `ILN 1` varchar(20) DEFAULT NULL,
  `ILN 2` varchar(20) DEFAULT NULL,
  `AuGr` varchar(10) DEFAULT NULL,
  `Indus.` varchar(10) DEFAULT NULL,
  `Check digit` varchar(20) DEFAULT NULL,
  `Data line` varchar(10) DEFAULT NULL,
  `I` varchar(10) DEFAULT NULL,
  `IK` varchar(10) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Created by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ISR number` varchar(10) DEFAULT NULL,
  `Group` varchar(10) DEFAULT NULL,
  `Group1` varchar(4) DEFAULT NULL,
  `Customer` varchar(10) DEFAULT NULL,
  `Alt. Payee` varchar(10) DEFAULT NULL,
  `DelF` varchar(10) DEFAULT NULL,
  `B` varchar(10) DEFAULT NULL,
  `B1` varchar(10) DEFAULT NULL,
  `Language` varchar(1) DEFAULT NULL,
  `Tax Number 1` varchar(10) DEFAULT NULL,
  `Tax Number 2` varchar(10) DEFAULT NULL,
  `Equal.tax` varchar(10) DEFAULT NULL,
  `Liable for VAT` varchar(10) DEFAULT NULL,
  `Telebox` varchar(10) DEFAULT NULL,
  `Telephone 1` varchar(10) DEFAULT NULL,
  `Telephone 2` varchar(10) DEFAULT NULL,
  `Fax Number` varchar(10) DEFAULT NULL,
  `Teletex number` varchar(10) DEFAULT NULL,
  `Telex number` varchar(10) DEFAULT NULL,
  `One-time account` varchar(10) DEFAULT NULL,
  `Payee in Document` varchar(10) DEFAULT NULL,
  `Tr.Prt` varchar(10) DEFAULT NULL,
  `Fisc.addr.` varchar(10) DEFAULT NULL,
  `VAT Registration No.` varchar(10) DEFAULT NULL,
  `Natural Person` varchar(10) DEFAULT NULL,
  `BF` varchar(10) DEFAULT NULL,
  `Place of birth` varchar(10) DEFAULT NULL,
  `Birth Date` varchar(10) DEFAULT NULL,
  `Sex` varchar(10) DEFAULT NULL,
  `Credit Information Number` varchar(10) DEFAULT NULL,
  `Last Ext.Review` varchar(20) DEFAULT NULL,
  `Actual QM System` varchar(10) DEFAULT NULL,
  `RefGr.` varchar(10) DEFAULT NULL,
  `P.O.Bx cty` varchar(10) DEFAULT NULL,
  `Plnt` varchar(10) DEFAULT NULL,
  `Vendor sub-range relevant` varchar(10) DEFAULT NULL,
  `Plant level relevant` varchar(10) DEFAULT NULL,
  `Cal` varchar(10) DEFAULT NULL,
  `Status of Data Transfer to Next Release` varchar(1) DEFAULT NULL,
  `Tax Jur.` varchar(10) DEFAULT NULL,
  `Payment block` varchar(10) DEFAULT NULL,
  `SCAC` varchar(10) DEFAULT NULL,
  `CarFrgtG` varchar(10) DEFAULT NULL,
  `TranspZone` varchar(10) DEFAULT NULL,
  `Accts for Alt. Payee` varchar(10) DEFAULT NULL,
  `SAGr` varchar(10) DEFAULT NULL,
  `Tax type` varchar(10) DEFAULT NULL,
  `Tax no.ty.` varchar(10) DEFAULT NULL,
  `Soc. Ins.` varchar(10) DEFAULT NULL,
  `SI Code` varchar(10) DEFAULT NULL,
  `Tax Number 3` varchar(10) DEFAULT NULL,
  `Tax Number 4` varchar(10) DEFAULT NULL,
  `Tax Number 5` varchar(10) DEFAULT NULL,
  `S` varchar(10) DEFAULT NULL,
  `Tax Base` varchar(20) DEFAULT NULL,
  `Profession` varchar(10) DEFAULT NULL,
  `StGSA` varchar(10) DEFAULT NULL,
  `Ex. manuf.` varchar(10) DEFAULT NULL,
  `URL` varchar(10) DEFAULT NULL,
  `Name of Representative` varchar(10) DEFAULT NULL,
  `Type of Business` varchar(10) DEFAULT NULL,
  `Type of Industry` varchar(10) DEFAULT NULL,
  `ConfSt` varchar(10) DEFAULT NULL,
  `Conf.date` varchar(10) DEFAULT NULL,
  `Conf.time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DeBl` varchar(10) DEFAULT NULL,
  `Dat` varchar(10) DEFAULT NULL,
  `POD-Rel.` varchar(10) DEFAULT NULL,
  `Tax Office` varchar(10) DEFAULT NULL,
  `Tax Number` varchar(10) DEFAULT NULL,
  `CC` varchar(10) DEFAULT NULL,
  `Micro Company` varchar(10) DEFAULT NULL,
  `Terms of Liability` varchar(10) DEFAULT NULL,
  `CRC number` varchar(10) DEFAULT NULL,
  `Business Purpose Completed Flag` varchar(10) DEFAULT NULL,
  `RG Number` varchar(10) DEFAULT NULL,
  `Issued by` varchar(10) DEFAULT NULL,
  `State` varchar(10) DEFAULT NULL,
  `RG Issuing Date` varchar(10) DEFAULT NULL,
  `RIC Number` varchar(20) DEFAULT NULL,
  `Foreign National Registration` varchar(10) DEFAULT NULL,
  `RNE Issuing Date` varchar(10) DEFAULT NULL,
  `CNAE` varchar(10) DEFAULT NULL,
  `Legal Nature` varchar(20) DEFAULT NULL,
  `CRT Number` varchar(10) DEFAULT NULL,
  `ICMS Taxpayer` varchar(10) DEFAULT NULL,
  `Industry Main Type` varchar(10) DEFAULT NULL,
  `Tax Declaration Type` varchar(10) DEFAULT NULL,
  `Company Size` varchar(10) DEFAULT NULL,
  `Declaration Regimen for PIS/COFINS` varchar(10) DEFAULT NULL,
  `Dataelement Exstensibility for Supplier` varchar(10) DEFAULT NULL,
  `Capital Amount` varchar(20) DEFAULT NULL,
  `Currency` varchar(10) DEFAULT NULL,
  `Agency Location Code` varchar(10) DEFAULT NULL,
  `Payment Office` varchar(10) DEFAULT NULL,
  `PPA Relevant` varchar(10) DEFAULT NULL,
  `Process. grp` varchar(10) DEFAULT NULL,
  `SLAPrepr.Proced` varchar(10) DEFAULT NULL,
  `Name 1 2` varchar(10) DEFAULT NULL,
  `Name 2 2` varchar(10) DEFAULT NULL,
  `Name 3 1` varchar(10) DEFAULT NULL,
  `First Name` varchar(10) DEFAULT NULL,
  `Title1` varchar(10) DEFAULT NULL,
  `House no.` varchar(10) DEFAULT NULL,
  `Street2` varchar(10) DEFAULT NULL,
  `Date limit` varchar(10) DEFAULT NULL,
  `Rep.` varchar(10) DEFAULT NULL,
  `Street1` varchar(10) DEFAULT NULL,
  `House No.1` varchar(10) DEFAULT NULL,
  `Postl Code` varchar(10) DEFAULT NULL,
  `City2` varchar(10) DEFAULT NULL,
  `Ctr` varchar(10) DEFAULT NULL,
  `Business T` varchar(10) DEFAULT NULL,
  `Prtnr Name` varchar(10) DEFAULT NULL,
  `Prtnr UTR` varchar(10) DEFAULT NULL,
  `Verif Stat` varchar(10) DEFAULT NULL,
  `Verif No.` varchar(10) DEFAULT NULL,
  `Tax Status` varchar(10) DEFAULT NULL,
  `Companies House Registration Number` varchar(10) DEFAULT NULL,
  `ECC No.` varchar(10) DEFAULT NULL,
  `Excise Registration No.` varchar(10) DEFAULT NULL,
  `Excise Range` varchar(10) DEFAULT NULL,
  `Excise Division` varchar(10) DEFAULT NULL,
  `Excise Commissionerate` varchar(10) DEFAULT NULL,
  `CST number` varchar(10) DEFAULT NULL,
  `LST number` varchar(10) DEFAULT NULL,
  `Permanent account number` varchar(10) DEFAULT NULL,
  `Exc.Ind.Ve` varchar(10) DEFAULT NULL,
  `SSI status` varchar(10) DEFAULT NULL,
  `Type of Vendor` varchar(10) DEFAULT NULL,
  `CENVAT Scheme Participant` varchar(10) DEFAULT NULL,
  `Col1` varchar(30) DEFAULT NULL,
  `Col2` varchar(10) DEFAULT NULL,
  `Service Tax Registration Number` varchar(10) DEFAULT NULL,
  `PAN Reference Number` varchar(10) DEFAULT NULL,
  `PAN Valid From Date` varchar(10) DEFAULT NULL,
  `Vendor for customs` varchar(10) DEFAULT NULL,
  `Deductee Reference Number` varchar(10) DEFAULT NULL,
  `GST Vendor Classification` varchar(10) DEFAULT NULL,
  `Public entity` varchar(10) DEFAULT NULL,
  `Deed public use` varchar(10) DEFAULT NULL,
  `SS certificate validity date` varchar(10) DEFAULT NULL,
  `Social Sec.certif.submission` varchar(10) DEFAULT NULL,
  `CAE code` varchar(20) DEFAULT NULL,
  `Abs.Debt` varchar(10) DEFAULT NULL,
  `Transportation Chain` varchar(10) DEFAULT NULL,
  `Staging Time` varchar(8) DEFAULT NULL,
  `Scheduling Procedure` varchar(10) DEFAULT NULL,
  `Cross Docking: Collective Numbering Is S` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC02-03-LFM1`
--

DROP TABLE IF EXISTS `ABC02-03-LFM1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC02-03-LFM1` (
  `Cl.` varchar(3) DEFAULT NULL,
  `Vendor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `POrg` varchar(4) DEFAULT NULL,
  `Created on` varchar(10) DEFAULT NULL,
  `Created by` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `B` varchar(10) DEFAULT NULL,
  `D` varchar(10) DEFAULT NULL,
  `ABC` varchar(10) DEFAULT NULL,
  `Crcy` varchar(3) DEFAULT NULL,
  `Supplier Quot.` varchar(10) DEFAULT NULL,
  `Telephone` varchar(10) DEFAULT NULL,
  `Minimum value` varchar(10) DEFAULT NULL,
  `PayT` varchar(10) DEFAULT NULL,
  `IncoT` varchar(10) DEFAULT NULL,
  `Inco. 2` varchar(10) DEFAULT NULL,
  `GR-IV` varchar(10) DEFAULT NULL,
  `ARq` varchar(10) DEFAULT NULL,
  `Gr` varchar(10) DEFAULT NULL,
  `Aut` varchar(10) DEFAULT NULL,
  `MoT` varchar(10) DEFAULT NULL,
  `CustOf` varchar(10) DEFAULT NULL,
  `C` varchar(10) DEFAULT NULL,
  `PGr` varchar(10) DEFAULT NULL,
  `E` varchar(10) DEFAULT NULL,
  `PDT` varchar(30) DEFAULT NULL,
  `Cal` varchar(10) DEFAULT NULL,
  `PCy` varchar(10) DEFAULT NULL,
  `Order entry: supplier` varchar(10) DEFAULT NULL,
  `Supplier price marking` varchar(10) DEFAULT NULL,
  `Rack jobbing` varchar(10) DEFAULT NULL,
  `IncoV` varchar(10) DEFAULT NULL,
  `Incoterms Location 1` varchar(10) DEFAULT NULL,
  `Incoterms Location 2` varchar(10) DEFAULT NULL,
  `PrD` varchar(10) DEFAULT NULL,
  `DKd` varchar(10) DEFAULT NULL,
  `Index` varchar(10) DEFAULT NULL,
  `Index1` varchar(10) DEFAULT NULL,
  `Returns supplier` varchar(10) DEFAULT NULL,
  `Sort criterion` varchar(10) DEFAULT NULL,
  `Ctr.` varchar(10) DEFAULT NULL,
  `R. Profile` varchar(10) DEFAULT NULL,
  `UnGr` varchar(10) DEFAULT NULL,
  `SSL` varchar(30) DEFAULT NULL,
  `LBPro` varchar(10) DEFAULT NULL,
  `AutEvGRSet` varchar(10) DEFAULT NULL,
  `Acc.w. supp.` varchar(10) DEFAULT NULL,
  `Profile` varchar(10) DEFAULT NULL,
  `PA prof.` varchar(10) DEFAULT NULL,
  `Stt. Mgmt.` varchar(10) DEFAULT NULL,
  `R` varchar(10) DEFAULT NULL,
  `SC` varchar(10) DEFAULT NULL,
  `Service-Based Invoice Verification` varchar(10) DEFAULT NULL,
  `SuSet` varchar(10) DEFAULT NULL,
  `B.vol.comp./ag.nec.` varchar(10) DEFAULT NULL,
  `Supplier RMA Number Required` varchar(10) DEFAULT NULL,
  `Data Element Extensibility for purchase` varchar(10) DEFAULT NULL,
  `Exc` varchar(10) DEFAULT NULL,
  `AutoDebit` varchar(10) DEFAULT NULL,
  `Profile1` varchar(10) DEFAULT NULL,
  `Abs. HSC` varchar(30) DEFAULT NULL,
  `HSC %` varchar(30) DEFAULT NULL,
  `Min. HSC` varchar(30) DEFAULT NULL,
  `Max. HSC` varchar(30) DEFAULT NULL,
  `Customer/Supplier ID` varchar(10) DEFAULT NULL,
  `VAS Determination Mode` varchar(10) DEFAULT NULL,
  `Pricing on sub-items` varchar(10) DEFAULT NULL,
  `Activity Profile` varchar(10) DEFAULT NULL,
  `Transportation Chain` varchar(10) DEFAULT NULL,
  `Staging Time` varchar(30) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC02-T01`
--

DROP TABLE IF EXISTS `ABC02-T01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC02-T01` (
  `Cl.` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Vendor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Cty` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Name 1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Name 2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Name 3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Name 4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `City` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `District` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `PO Box` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PO Box pcd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PostalCode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Rg` varchar(2) CHARACTER SET utf8 DEFAULT NULL,
  `SearchTerm` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Street` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Address` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `Name 1 1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Name 2 1` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `City1` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Title` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Train station` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ILN 1` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `ILN 2` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `AuGr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Indus.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Check digit` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Data line` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `I` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `IK` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Date` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Created by` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ISR number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Group` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Group1` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `Customer` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Alt. Payee` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `DelF` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `B` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `B1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Language` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Number 1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Number 2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Equal.tax` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Liable for VAT` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Telebox` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Telephone 1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Telephone 2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Fax Number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Teletex number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Telex number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `One-time account` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Payee in Document` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tr.Prt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Fisc.addr.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `VAT Registration No.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Natural Person` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `BF` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Place of birth` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Birth Date` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Sex` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Credit Information Number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Last Ext.Review` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Actual QM System` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `RefGr.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `P.O.Bx cty` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Plnt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Vendor sub-range relevant` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Plant level relevant` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Cal` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Status of Data Transfer to Next Release` varchar(1) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Jur.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Payment block` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SCAC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CarFrgtG` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `TranspZone` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Accts for Alt. Payee` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SAGr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax no.ty.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Soc. Ins.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SI Code` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Number 3` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Number 4` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Number 5` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `S` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Base` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Profession` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `StGSA` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Ex. manuf.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `URL` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Name of Representative` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Type of Business` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Type of Industry` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ConfSt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Conf.date` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Conf.time` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DeBl` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Dat` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `POD-Rel.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Office` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Micro Company` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Terms of Liability` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CRC number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Business Purpose Completed Flag` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `RG Number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Issued by` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `State` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `RG Issuing Date` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `RIC Number` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Foreign National Registration` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `RNE Issuing Date` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CNAE` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Legal Nature` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `CRT Number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ICMS Taxpayer` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Industry Main Type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Declaration Type` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Company Size` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Declaration Regimen for PIS/COFINS` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Dataelement Exstensibility for Supplier` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Capital Amount` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Currency` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Agency Location Code` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Payment Office` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PPA Relevant` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Process. grp` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SLAPrepr.Proced` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Name 1 2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Name 2 2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Name 3 1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `First Name` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Title1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `House no.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Street2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Date limit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Rep.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Street1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `House No.1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Postl Code` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `City2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Ctr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Business T` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Prtnr Name` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Prtnr UTR` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Verif Stat` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Verif No.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Tax Status` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Companies House Registration Number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ECC No.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Excise Registration No.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Excise Range` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Excise Division` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Excise Commissionerate` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CST number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `LST number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Permanent account number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Exc.Ind.Ve` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SSI status` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Type of Vendor` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CENVAT Scheme Participant` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Col1` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Col2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Service Tax Registration Number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PAN Reference Number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PAN Valid From Date` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Vendor for customs` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Deductee Reference Number` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `GST Vendor Classification` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Public entity` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Deed public use` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SS certificate validity date` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Social Sec.certif.submission` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CAE code` varchar(20) CHARACTER SET utf8 DEFAULT NULL,
  `Abs.Debt` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Transportation Chain` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Staging Time` varchar(8) CHARACTER SET utf8 DEFAULT NULL,
  `Scheduling Procedure` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Cross Docking: Collective Numbering Is S` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CoCd` varchar(4) CHARACTER SET utf8 NOT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC02-T02`
--

DROP TABLE IF EXISTS `ABC02-T02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC02-T02` (
  `CoCd` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `TOTAL VENDOR COUNT` varchar(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ONE TIME VENDOR COUNT` varchar(21) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ABC02-T03`
--

DROP TABLE IF EXISTS `ABC02-T03`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ABC02-T03` (
  `Cl.` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Vendor` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `POrg` varchar(4) CHARACTER SET utf8 DEFAULT NULL,
  `Created on` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Created by` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `B` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `D` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ABC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Crcy` varchar(3) CHARACTER SET utf8 DEFAULT NULL,
  `Supplier Quot.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Telephone` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Minimum value` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PayT` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `IncoT` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Inco. 2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `GR-IV` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `ARq` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Gr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Aut` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `MoT` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `CustOf` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `C` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PGr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `E` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PDT` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Cal` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PCy` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Order entry: supplier` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Supplier price marking` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Rack jobbing` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `IncoV` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Incoterms Location 1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Incoterms Location 2` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PrD` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `DKd` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Index` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Index1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Returns supplier` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Sort criterion` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Ctr.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `R. Profile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `UnGr` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SSL` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `LBPro` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `AutEvGRSet` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Acc.w. supp.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Profile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `PA prof.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Stt. Mgmt.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `R` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SC` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Service-Based Invoice Verification` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `SuSet` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `B.vol.comp./ag.nec.` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Supplier RMA Number Required` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Data Element Extensibility for purchase` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Exc` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `AutoDebit` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Profile1` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Abs. HSC` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `HSC %` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Min. HSC` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Max. HSC` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `Customer/Supplier ID` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `VAS Determination Mode` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Pricing on sub-items` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Activity Profile` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Transportation Chain` varchar(10) CHARACTER SET utf8 DEFAULT NULL,
  `Staging Time` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ITGC02-01-RSPARAM`
--

DROP TABLE IF EXISTS `ITGC02-01-RSPARAM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITGC02-01-RSPARAM` (
  `Name of the Profile Parameter` text,
  `Status of a Profile Parameter` int DEFAULT NULL,
  `User Defined Value` text,
  `System Default Value` text,
  `System Default Value (Unsubstituted Form)` text,
  `Parameter Restriction Values` text,
  `Parameter comment / short description` text,
  `Parameter Status` text,
  `Parameter Unit` text,
  `Paramater Group` text,
  `CSN Component of the Parameter` text,
  `Parameter Type` text,
  `Does a subparameter exist?` text,
  `Is this a system parameter?` text,
  `Is this a dynamic parameter?` text,
  `Is this a vector parameter?` text,
  `Is a check function defined?` text,
  `Is this a read-only parameter?` text,
  `Is this an internal parameter?` text,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ITGC02-02-TU02`
--

DROP TABLE IF EXISTS `ITGC02-02-TU02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITGC02-02-TU02` (
  `Parameter Type` text,
  `Hostname` text,
  `System ID` int DEFAULT NULL,
  `Name of the Profile Parameter` text,
  `Last Change Date` text,
  `Old Value` text,
  `New Value` text,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ITGC02-T01`
--

DROP TABLE IF EXISTS `ITGC02-T01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITGC02-T01` (
  `Name of the Profile Parameter` text,
  `Status of a Profile Parameter` int DEFAULT NULL,
  `User Defined Value` text,
  `System Default Value` text,
  `System Default Value (Unsubstituted Form)` text,
  `Parameter Restriction Values` text,
  `Parameter comment / short description` text,
  `Parameter Status` text,
  `Parameter Unit` text,
  `Paramater Group` text,
  `CSN Component of the Parameter` text,
  `Parameter Type` text,
  `Does a subparameter exist?` text,
  `Is this a system parameter?` text,
  `Is this a dynamic parameter?` text,
  `Is this a vector parameter?` text,
  `Is a check function defined?` text,
  `Is this a read-only parameter?` text,
  `Is this an internal parameter?` text,
  `Last Change Date` text,
  `Old Value` text,
  `New Value` text,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ITGC03-01-UST04`
--

DROP TABLE IF EXISTS `ITGC03-01-UST04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITGC03-01-UST04` (
  `MANDT` int DEFAULT NULL,
  `BNAME` text,
  `PROFILE` text,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ITGC03-02-USR02`
--

DROP TABLE IF EXISTS `ITGC03-02-USR02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITGC03-02-USR02` (
  `Cl.` int DEFAULT NULL,
  `User Name` text,
  `Password` text,
  `Valid from` int DEFAULT NULL,
  `Valid to` int DEFAULT NULL,
  `User Type` text,
  `User Master Maintenance: User Group` text,
  `Number of failed logon attempts` int DEFAULT NULL,
  `User Lock Status` int DEFAULT NULL,
  `Account number` text,
  `Creator of User Master Record` text,
  `Creation Date of User Master` int DEFAULT NULL,
  `Last Logon Date` int DEFAULT NULL,
  `Last Logon Time` int DEFAULT NULL,
  `Password_[0]` text,
  `Date of Last Password Change` int DEFAULT NULL,
  `Password Code Vers.` text,
  `Password_[1]` text,
  `Date of Last Password Change_[0]` int DEFAULT NULL,
  `Password Code Vers._[0]` text,
  `Password_[2]` text,
  `Date of Last Password Change_[1]` int DEFAULT NULL,
  `Password Code Vers._[1]` text,
  `Password_[3]` text,
  `Date of Last Password Change_[2]` int DEFAULT NULL,
  `Password Code Vers._[2]` text,
  `Password_[4]` text,
  `Date of Last Password Change_[3]` int DEFAULT NULL,
  `Password Code Vers._[3]` text,
  `User master record version` text,
  `Password Code Version (New)` text,
  `Time Zone` text,
  `CUA User Template` text,
  `Password Hash Value (SHA1, 160 Bit)` text,
  `Date of Last Password Change_[4]` int DEFAULT NULL,
  `Password Change Status` int DEFAULT NULL,
  `CUA Control Information` int DEFAULT NULL,
  `External Password History(USRPWDHISTORY)` int DEFAULT NULL,
  `Date of Last Password Logon` int DEFAULT NULL,
  `Date: Password Reset by Administrator` int DEFAULT NULL,
  `Indicator: Password Is Initial` int DEFAULT NULL,
  `Date: Password Lock` int DEFAULT NULL,
  `Password Hash Val` text,
  `Security Policy` text,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ITGC03-03-CDHDR`
--

DROP TABLE IF EXISTS `ITGC03-03-CDHDR`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITGC03-03-CDHDR` (
  `Cl.` int DEFAULT NULL,
  `Object` text,
  `Object Value` text,
  `Doc.Number` int DEFAULT NULL,
  `User` text,
  `Date` int DEFAULT NULL,
  `Time` int DEFAULT NULL,
  `TCode` text,
  `Change number` text,
  `Doc. no.` text,
  `Fl` text,
  `Change Flag for Application Object` text,
  `L` text,
  `3-Byte field` int DEFAULT NULL,
  `Data Filter Value for Data Aging` int DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ITGC03-04-USR21`
--

DROP TABLE IF EXISTS `ITGC03-04-USR21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITGC03-04-USR21` (
  `MANDT` int DEFAULT NULL,
  `BNAME` varchar(12) DEFAULT NULL,
  `PERSNUMBER` varchar(10) DEFAULT NULL,
  `ADDRNUMBER` varchar(10) DEFAULT NULL,
  `KOSTL` varchar(10) DEFAULT NULL,
  `START_MENU` varchar(10) DEFAULT NULL,
  `IDADTYPE` int DEFAULT NULL,
  `BPPERSON` varchar(32) DEFAULT NULL,
  `ORGANIZATION` varchar(32) DEFAULT NULL,
  `RESPONSIBLE` varchar(10) DEFAULT NULL,
  `TECHDESC` varchar(10) DEFAULT NULL,
  `IDENTITY_GUID` varchar(32) DEFAULT NULL,
  `TEMPLATE_ORGTYPE` varchar(10) DEFAULT NULL,
  `TEMPLATE_ORGADDR` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(10) DEFAULT NULL,
  `irm_job_id` varchar(10) DEFAULT NULL,
  `irm_crd_date` varchar(10) DEFAULT NULL,
  `irm_upd_date` varchar(10) DEFAULT NULL,
  `irm_upd_user` varchar(10) DEFAULT NULL,
  `irm_crd_user` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ITGC03-05-ADRP`
--

DROP TABLE IF EXISTS `ITGC03-05-ADRP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ITGC03-05-ADRP` (
  `CLIENT` int DEFAULT NULL,
  `PERSNUMBER` varchar(10) DEFAULT NULL,
  `DATE_FROM` varchar(10) DEFAULT NULL,
  `NATION` varchar(10) DEFAULT NULL,
  `DATE_TO` varchar(10) DEFAULT NULL,
  `TITLE` varchar(4) DEFAULT NULL,
  `NAME_FIRST` varchar(11) DEFAULT NULL,
  `NAME_LAST` varchar(26) DEFAULT NULL,
  `NAME2` varchar(10) DEFAULT NULL,
  `NAMEMIDDLE` varchar(10) DEFAULT NULL,
  `NAME_LAST2` varchar(10) DEFAULT NULL,
  `NAME_TEXT` varchar(33) DEFAULT NULL,
  `CONVERTED` varchar(10) DEFAULT NULL,
  `TITLE_ACA1` varchar(10) DEFAULT NULL,
  `TITLE_ACA2` varchar(10) DEFAULT NULL,
  `PREFIX1` varchar(10) DEFAULT NULL,
  `PREFIX2` varchar(10) DEFAULT NULL,
  `TITLE_SPPL` varchar(10) DEFAULT NULL,
  `NICKNAME` varchar(10) DEFAULT NULL,
  `INITIALS` varchar(10) DEFAULT NULL,
  `NAMEFORMAT` varchar(10) DEFAULT NULL,
  `NAMCOUNTRY` varchar(10) DEFAULT NULL,
  `PROFESSION` varchar(10) DEFAULT NULL,
  `SEX` varchar(10) DEFAULT NULL,
  `LANGU` varchar(1) DEFAULT NULL,
  `PERS_GROUP` varchar(4) DEFAULT NULL,
  `FLAGGROUPS` varchar(10) DEFAULT NULL,
  `SORT1` varchar(10) DEFAULT NULL,
  `SORT2` varchar(10) DEFAULT NULL,
  `SORT_PHN` varchar(10) DEFAULT NULL,
  `ADDR_COMP` varchar(10) DEFAULT NULL,
  `ADDR_PERS` varchar(10) DEFAULT NULL,
  `FLPERSTEL` varchar(10) DEFAULT NULL,
  `FLPERSCOMM` varchar(10) DEFAULT NULL,
  `PERSORIGIN` varchar(10) DEFAULT NULL,
  `MC_NAMEFIR` varchar(11) DEFAULT NULL,
  `MC_NAMELAS` varchar(25) DEFAULT NULL,
  `MC_NAME2` varchar(10) DEFAULT NULL,
  `LANGU_CREA` varchar(1) DEFAULT NULL,
  `ADRP_UUID` varchar(32) DEFAULT NULL,
  `UUID_BELATED` varchar(10) DEFAULT NULL,
  `ID_CATEGORY` varchar(10) DEFAULT NULL,
  `ADRP_ERR_STATUS` varchar(10) DEFAULT NULL,
  `_DATAAGING` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(10) DEFAULT NULL,
  `irm_job_id` varchar(10) DEFAULT NULL,
  `irm_crd_date` varchar(10) DEFAULT NULL,
  `irm_upd_date` varchar(10) DEFAULT NULL,
  `irm_upd_user` varchar(10) DEFAULT NULL,
  `irm_crd_user` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-01-AGR_1252`
--

DROP TABLE IF EXISTS `SOD-01-AGR_1252`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-01-AGR_1252` (
  `Client` int DEFAULT NULL,
  `Role` varchar(30) DEFAULT NULL,
  `ID` int DEFAULT NULL,
  `Org. level` varchar(11) DEFAULT NULL,
  `Authorization value` varchar(10) DEFAULT NULL,
  `Authorization value1` varchar(4) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-02-AGR_TCODES`
--

DROP TABLE IF EXISTS `SOD-02-AGR_TCODES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-02-AGR_TCODES` (
  `Client` int DEFAULT NULL,
  `Role` varchar(30) DEFAULT NULL,
  `Typ` varchar(2) DEFAULT NULL,
  `Extended name` varchar(38) DEFAULT NULL,
  `Exclusive` varchar(10) DEFAULT NULL,
  `Transaction input directly` varchar(1) DEFAULT NULL,
  `Transaction inherited from previous role` varchar(10) DEFAULT NULL,
  `ID` int DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-03-USOBT_C`
--

DROP TABLE IF EXISTS `SOD-03-USOBT_C`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-03-USOBT_C` (
  `Name` varchar(20) DEFAULT NULL,
  `Test status type and Proposed Values for` varchar(2) DEFAULT NULL,
  `Authorization Object` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Authorization Fld` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Authorization Value` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Authorization Value1` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Changed By` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Modification date` varchar(10) DEFAULT NULL,
  `Modification time` varchar(8) DEFAULT NULL,
  `Modification ID` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-04-TOBJ`
--

DROP TABLE IF EXISTS `SOD-04-TOBJ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-04-TOBJ` (
  `Authorization Object` varchar(10) DEFAULT NULL,
  `Authorization Fld1` varchar(10) DEFAULT NULL,
  `Authorization Fld2` varchar(10) DEFAULT NULL,
  `Authorization Fld3` varchar(10) DEFAULT NULL,
  `Authorization Fld4` varchar(10) DEFAULT NULL,
  `Authorization Fld5` varchar(10) DEFAULT NULL,
  `Authorization Fld6` varchar(10) DEFAULT NULL,
  `Authorization Fld7` varchar(10) DEFAULT NULL,
  `Authorization Fld8` varchar(10) DEFAULT NULL,
  `Authorization Fld9` varchar(10) DEFAULT NULL,
  `Authorization Fld10` varchar(10) DEFAULT NULL,
  `Clss` varchar(4) DEFAULT NULL,
  `User` varchar(3) DEFAULT NULL,
  `FB` varchar(2) DEFAULT NULL,
  `Conversion flag` varchar(1) DEFAULT NULL,
  `Text` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-05-AGR_1251`
--

DROP TABLE IF EXISTS `SOD-05-AGR_1251`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-05-AGR_1251` (
  `Client` int DEFAULT NULL,
  `Role` varchar(30) DEFAULT NULL,
  `ID` int DEFAULT NULL,
  `Object` varchar(10) DEFAULT NULL,
  `User Master Maint.: Authorization Name` varchar(12) DEFAULT NULL,
  `Variant` varchar(10) DEFAULT NULL,
  `Field name` varchar(10) DEFAULT NULL,
  `Authorization value` varchar(40) DEFAULT NULL,
  `Authorization value1` varchar(25) DEFAULT NULL,
  `Object status` varchar(1) DEFAULT NULL,
  `ID whether object is deleted` varchar(1) DEFAULT NULL,
  `ID whether object is copied` varchar(10) DEFAULT NULL,
  `ID whether object is new` varchar(1) DEFAULT NULL,
  `ID1` int DEFAULT NULL,
  `COL1` varchar(10) DEFAULT NULL,
  `COL2` varchar(10) DEFAULT NULL,
  `COL3` varchar(6) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-06-AGR_USERS`
--

DROP TABLE IF EXISTS `SOD-06-AGR_USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-06-AGR_USERS` (
  `Client` int DEFAULT NULL,
  `Role` varchar(24) DEFAULT NULL,
  `User Name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Start date` varchar(10) DEFAULT NULL,
  `End date` varchar(10) DEFAULT NULL,
  `Exclusive` varchar(10) DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Time` varchar(8) DEFAULT NULL,
  `UTC Time Stamp in Short Form (YYYYMMDDhh` varchar(30) DEFAULT NULL,
  `Assignment comes from HR Organization Ma` varchar(10) DEFAULT NULL,
  `Assignment Comes From Composite Role` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-07-USR21`
--

DROP TABLE IF EXISTS `SOD-07-USR21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-07-USR21` (
  `Cl.` int DEFAULT NULL,
  `User Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Person` int DEFAULT NULL,
  `Addr. No.` int DEFAULT NULL,
  `Cost ctr` varchar(10) DEFAULT NULL,
  `Start menu` varchar(10) DEFAULT NULL,
  `Identity Add. Type` int DEFAULT NULL,
  `Business Partner GUID` varchar(10) DEFAULT NULL,
  `Business Partner GUID1` varchar(10) DEFAULT NULL,
  `User Responsible` varchar(10) DEFAULT NULL,
  `Description of the Technical User Accoun` varchar(10) DEFAULT NULL,
  `Identity GUID` varchar(15) DEFAULT NULL,
  `Organization Type` varchar(10) DEFAULT NULL,
  `Addr. No.1` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-08-ADRP`
--

DROP TABLE IF EXISTS `SOD-08-ADRP`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-08-ADRP` (
  `Cl.` int DEFAULT NULL,
  `Person` varchar(10) DEFAULT NULL,
  `From` varchar(10) DEFAULT NULL,
  `Version` varchar(10) DEFAULT NULL,
  `To` varchar(10) DEFAULT NULL,
  `Key` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `First name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Last name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Name at Birth` varchar(10) DEFAULT NULL,
  `Second First Name or Middle Name` varchar(10) DEFAULT NULL,
  `Second Family Name` varchar(10) DEFAULT NULL,
  `Full Name` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Conv.` varchar(10) DEFAULT NULL,
  `Academic Title 1` varchar(10) DEFAULT NULL,
  `2nd key` varchar(10) DEFAULT NULL,
  `Prefix 1` varchar(10) DEFAULT NULL,
  `2nd key1` varchar(10) DEFAULT NULL,
  `Key1` varchar(10) DEFAULT NULL,
  `Nickname/name used` varchar(10) DEFAULT NULL,
  `Initials` varchar(10) DEFAULT NULL,
  `Format` varchar(10) DEFAULT NULL,
  `Ctry` varchar(10) DEFAULT NULL,
  `Profession` varchar(10) DEFAULT NULL,
  `Gender key` varchar(10) DEFAULT NULL,
  `Language` varchar(1) DEFAULT NULL,
  `Key2` varchar(4) DEFAULT NULL,
  `Flag: There are other person group assig` varchar(10) DEFAULT NULL,
  `Search Term 1` varchar(10) DEFAULT NULL,
  `Search Term 2` varchar(10) DEFAULT NULL,
  `Phonet. Sort.` varchar(10) DEFAULT NULL,
  `1st Compny` varchar(10) DEFAULT NULL,
  `Pers.Addr1` varchar(10) DEFAULT NULL,
  `Pt` varchar(10) DEFAULT NULL,
  `PC` varchar(10) DEFAULT NULL,
  `Srce` varchar(10) DEFAULT NULL,
  `First name1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Last name1` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `Name at Birth1` varchar(10) DEFAULT NULL,
  `Lang` varchar(1) DEFAULT NULL,
  `Address UUID` varchar(13) DEFAULT NULL,
  `Subsequent UUID` varchar(1) DEFAULT NULL,
  `Address ID Category` varchar(10) DEFAULT NULL,
  `Status` varchar(1) DEFAULT NULL,
  `Data Filter Value for Data Aging` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-09-AGR_TEXTS`
--

DROP TABLE IF EXISTS `SOD-09-AGR_TEXTS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-09-AGR_TEXTS` (
  `Client` int DEFAULT NULL,
  `Role` varchar(30) DEFAULT NULL,
  `Language` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ID` int DEFAULT NULL,
  `Short Role Description` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-10-T001`
--

DROP TABLE IF EXISTS `SOD-10-T001`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-10-T001` (
  `Cl.` int DEFAULT NULL,
  `CoCd` varchar(4) DEFAULT NULL,
  `Company Name` varchar(25) DEFAULT NULL,
  `City` varchar(25) DEFAULT NULL,
  `Ctr` varchar(2) DEFAULT NULL,
  `Crcy` varchar(3) DEFAULT NULL,
  `Language` varchar(1) DEFAULT NULL,
  `ChAc` varchar(4) DEFAULT NULL,
  `Max.ex.dev.` int DEFAULT NULL,
  `FV` varchar(2) DEFAULT NULL,
  `C` varchar(1) DEFAULT NULL,
  `Co.` varchar(4) DEFAULT NULL,
  `Address` varchar(5) DEFAULT NULL,
  `VAT Registration No.` varchar(14) DEFAULT NULL,
  `FMA` varchar(1) DEFAULT NULL,
  `Project Cash Mgmt active` varchar(10) DEFAULT NULL,
  `Active` varchar(10) DEFAULT NULL,
  `Update` varchar(10) DEFAULT NULL,
  `Jurisdict. Code` varchar(10) DEFAULT NULL,
  `FundsCtr in HR` int DEFAULT NULL,
  `Template` varchar(1) DEFAULT NULL,
  `Var.` varchar(1) DEFAULT NULL,
  `CMCC` varchar(10) DEFAULT NULL,
  `Cash Management Activated` varchar(1) DEFAULT NULL,
  `Define default value date` varchar(1) DEFAULT NULL,
  `DiN` varchar(1) DEFAULT NULL,
  `CCAr` varchar(1) DEFAULT NULL,
  `TxN` varchar(1) DEFAULT NULL,
  `Var.1` varchar(10) DEFAULT NULL,
  `Business Area Fin. Statements` varchar(1) DEFAULT NULL,
  `Propose Fiscal Year` varchar(1) DEFAULT NULL,
  `Post Translation` varchar(1) DEFAULT NULL,
  `Company Code Is Productive` varchar(10) DEFAULT NULL,
  `Purchase Account Processing` varchar(1) DEFAULT NULL,
  `JV Accounting Active` varchar(10) DEFAULT NULL,
  `Financial Assets Mgmt active` varchar(1) DEFAULT NULL,
  `No Exch. Rate Diff. When Clearing in LC` varchar(1) DEFAULT NULL,
  `Update MM` varchar(10) DEFAULT NULL,
  `Update SD` varchar(10) DEFAULT NULL,
  `Ext.` varchar(10) DEFAULT NULL,
  `Orig` varchar(10) DEFAULT NULL,
  `ChA2` varchar(10) DEFAULT NULL,
  `Tx Grp` varchar(4) DEFAULT NULL,
  `XSCC` varchar(10) DEFAULT NULL,
  `FStV` varchar(4) DEFAULT NULL,
  `Var.2` varchar(4) DEFAULT NULL,
  `Hedge request active` varchar(10) DEFAULT NULL,
  `Tax Crcy Translation` varchar(1) DEFAULT NULL,
  `Wrkf` varchar(1) DEFAULT NULL,
  `I` varchar(10) DEFAULT NULL,
  `P` varchar(10) DEFAULT NULL,
  `R` varchar(10) DEFAULT NULL,
  `C1` varchar(10) DEFAULT NULL,
  `D` varchar(10) DEFAULT NULL,
  `Input Tax Code` varchar(2) DEFAULT NULL,
  `Output Tax Code` varchar(2) DEFAULT NULL,
  `Import Data in Purchase Order` varchar(1) DEFAULT NULL,
  `Negative Postings` varchar(1) DEFAULT NULL,
  `C2` varchar(1) DEFAULT NULL,
  `Extended Withholding Tax Active` varchar(1) DEFAULT NULL,
  `Prk Pst Dt` varchar(10) DEFAULT NULL,
  `Inflation Method` varchar(4) DEFAULT NULL,
  `Field Status Variant` varchar(4) DEFAULT NULL,
  `Copying control-Goods receipt` varchar(10) DEFAULT NULL,
  `Import data - Goods receipt` varchar(10) DEFAULT NULL,
  `Method Offsttng Acct` int DEFAULT NULL,
  `BA variant` varchar(10) DEFAULT NULL,
  `Cost of Sales Accountg Status` varchar(1) DEFAULT NULL,
  `AR Pledg. Act.` varchar(1) DEFAULT NULL,
  `S` varchar(10) DEFAULT NULL,
  `Surcharge Method` varchar(10) DEFAULT NULL,
  `Document Type for Provisions for Taxes` varchar(2) DEFAULT NULL,
  `Document Type for JV (Amount Correction)` varchar(2) DEFAULT NULL,
  `Document Type for JV (Tax Code Correctio` varchar(2) DEFAULT NULL,
  `Remittance Challan Document Type` varchar(2) DEFAULT NULL,
  `Deferred Tax Rule` varchar(10) DEFAULT NULL,
  `Tax Date` varchar(1) DEFAULT NULL,
  `Manage Posting Period for Company Code/L` varchar(10) DEFAULT NULL,
  `Shopping Cart` varchar(10) DEFAULT NULL,
  `Hide` varchar(10) DEFAULT NULL,
  `AA Derivtn` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-11-T001K`
--

DROP TABLE IF EXISTS `SOD-11-T001K`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-11-T001K` (
  `Cl.` int DEFAULT NULL,
  `ValA` varchar(4) DEFAULT NULL,
  `CoCd` varchar(4) DEFAULT NULL,
  `VGCd` int DEFAULT NULL,
  `Neg.stocks` varchar(10) DEFAULT NULL,
  `Mat. Ledger Active` varchar(1) DEFAULT NULL,
  `ML Active(Compulsory)` varchar(1) DEFAULT NULL,
  `SPVa` varchar(10) DEFAULT NULL,
  `Explanation Facility` varchar(10) DEFAULT NULL,
  `RevP` varchar(10) DEFAULT NULL,
  `vIMP` varchar(10) DEFAULT NULL,
  `Price Determination` int DEFAULT NULL,
  `Price Determination Is Binding in Valuat` varchar(1) DEFAULT NULL,
  `Stock correction toler.` int DEFAULT NULL,
  `P` varchar(10) DEFAULT NULL,
  `Recpt value` varchar(1) DEFAULT NULL,
  `Two FI documents` varchar(1) DEFAULT NULL,
  `Price Release` varchar(10) DEFAULT NULL,
  `Actual CCS` varchar(10) DEFAULT NULL,
  `Del.costs` varchar(1) DEFAULT NULL,
  `From year` int DEFAULT NULL,
  `Price Release FMP` varchar(10) DEFAULT NULL,
  `Price Release Group` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-12-T024E`
--

DROP TABLE IF EXISTS `SOD-12-T024E`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-12-T024E` (
  `Cl.` int DEFAULT NULL,
  `POrg` varchar(4) DEFAULT NULL,
  `Purch. org. descr.` varchar(17) DEFAULT NULL,
  `CoCd` varchar(4) DEFAULT NULL,
  `Text Name: Sender Line` varchar(14) DEFAULT NULL,
  `Text Name: Letter Heading` varchar(14) DEFAULT NULL,
  `Text Name: Footer Lines` varchar(14) DEFAULT NULL,
  `Text Name: Complimentary Close` varchar(14) DEFAULT NULL,
  `Gr` varchar(4) DEFAULT NULL,
  `Schema` varchar(6) DEFAULT NULL,
  `Effective Price in Order Price History` varchar(10) DEFAULT NULL,
  `CoCd1` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-13-T024`
--

DROP TABLE IF EXISTS `SOD-13-T024`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-13-T024` (
  `Cl.` int DEFAULT NULL,
  `PGr` varchar(3) DEFAULT NULL,
  `Description` varchar(18) DEFAULT NULL,
  `Telephone` varchar(12) DEFAULT NULL,
  `ODev` varchar(4) DEFAULT NULL,
  `Fax number` varchar(10) DEFAULT NULL,
  `Telephone1` varchar(10) DEFAULT NULL,
  `Extension` varchar(10) DEFAULT NULL,
  `E-Mail Address` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-14-TVKO`
--

DROP TABLE IF EXISTS `SOD-14-TVKO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-14-TVKO` (
  `Cl.` int DEFAULT NULL,
  `SOrg.` varchar(4) DEFAULT NULL,
  `Curr.` varchar(3) DEFAULT NULL,
  `CoCd` varchar(4) DEFAULT NULL,
  `Address` varchar(5) DEFAULT NULL,
  `Address text name` varchar(11) DEFAULT NULL,
  `Letter header text name` varchar(11) DEFAULT NULL,
  `Footer lines text` varchar(11) DEFAULT NULL,
  `Greeting text name` varchar(14) DEFAULT NULL,
  `Ref.SOrg.` varchar(4) DEFAULT NULL,
  `CustInterC` varchar(10) DEFAULT NULL,
  `RebPrcActive` varchar(10) DEFAULT NULL,
  `Ca` varchar(1) DEFAULT NULL,
  `POrg` varchar(10) DEFAULT NULL,
  `PGr` varchar(10) DEFAULT NULL,
  `Vendor` varchar(10) DEFAULT NULL,
  `Plnt` varchar(10) DEFAULT NULL,
  `OTyp` varchar(10) DEFAULT NULL,
  `Cat` varchar(1) DEFAULT NULL,
  `MvTyp` varchar(10) DEFAULT NULL,
  `SLoc` varchar(10) DEFAULT NULL,
  `Text SDS sender` varchar(10) DEFAULT NULL,
  `Tax code for SD doc.` varchar(10) DEFAULT NULL,
  `VAT ID Determ.` varchar(1) DEFAULT NULL,
  `Numbering time` varchar(10) DEFAULT NULL,
  `Maximum no. of items in billing doc.` int DEFAULT NULL,
  `Hide in F4` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-15-TVTW`
--

DROP TABLE IF EXISTS `SOD-15-TVTW`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-15-TVTW` (
  `Cl.` int DEFAULT NULL,
  `DChl` varchar(2) DEFAULT NULL,
  `Hide in F4` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-16-TGSB`
--

DROP TABLE IF EXISTS `SOD-16-TGSB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-16-TGSB` (
  `Cl.` int DEFAULT NULL,
  `BusA` int DEFAULT NULL,
  `BA:C` varchar(10) DEFAULT NULL,
  `XSBA` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-17-FM01`
--

DROP TABLE IF EXISTS `SOD-17-FM01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-17-FM01` (
  `Cl.` int DEFAULT NULL,
  `FMA` varchar(2) DEFAULT NULL,
  `Object number` varchar(6) DEFAULT NULL,
  `Revenue Item` varchar(10) DEFAULT NULL,
  `Exp.Item` varchar(10) DEFAULT NULL,
  `Funds Center` varchar(10) DEFAULT NULL,
  `Activ` varchar(10) DEFAULT NULL,
  `Fund  BLANK` varchar(10) DEFAULT NULL,
  `ToYr` int DEFAULT NULL,
  `Func.Area BLANK` varchar(10) DEFAULT NULL,
  `ToYr4` int DEFAULT NULL,
  `Fund.ProgBLANK` varchar(10) DEFAULT NULL,
  `ToYr1` int DEFAULT NULL,
  `Grant BLANK` varchar(10) DEFAULT NULL,
  `ToYr2` int DEFAULT NULL,
  `Hide` varchar(10) DEFAULT NULL,
  `Curr.` varchar(3) DEFAULT NULL,
  `L` varchar(1) DEFAULT NULL,
  `FV` varchar(2) DEFAULT NULL,
  `A` varchar(10) DEFAULT NULL,
  `To` int DEFAULT NULL,
  `Planning Profile` varchar(1) DEFAULT NULL,
  `Budget Profile` varchar(1) DEFAULT NULL,
  `FV1` varchar(2) DEFAULT NULL,
  `Number range number` varchar(10) DEFAULT NULL,
  `FIFM Act.` varchar(10) DEFAULT NULL,
  `FV2` varchar(10) DEFAULT NULL,
  `Budget profile for fund` varchar(1) DEFAULT NULL,
  `StatProf` varchar(10) DEFAULT NULL,
  `Active Objects` varchar(10) DEFAULT NULL,
  `Manual master data maint.` varchar(10) DEFAULT NULL,
  `Rank.Order` int DEFAULT NULL,
  `Year-dependent` varchar(10) DEFAULT NULL,
  `Year-Dependent Commitment Itms` varchar(10) DEFAULT NULL,
  `Year-Dep.Funds Ctrs` varchar(10) DEFAULT NULL,
  `Update Profile` varchar(3) DEFAULT NULL,
  `Update Profile1` varchar(10) DEFAULT NULL,
  `CO Integrat. Active` varchar(10) DEFAULT NULL,
  `Active HR From` int DEFAULT NULL,
  `Funds Precommt Doc. Type` varchar(10) DEFAULT NULL,
  `Funds Commitment Doc.Type` varchar(10) DEFAULT NULL,
  `Fds block doc.type` varchar(10) DEFAULT NULL,
  `Activation Process` int DEFAULT NULL,
  `Auth.Group` varchar(10) DEFAULT NULL,
  `Activating Mode CI Active` varchar(10) DEFAULT NULL,
  `Field Status Variant` varchar(10) DEFAULT NULL,
  `Number range number1` varchar(10) DEFAULT NULL,
  `Revenue Item1` varchar(10) DEFAULT NULL,
  `Expenditure Item` varchar(10) DEFAULT NULL,
  `FA Act` varchar(10) DEFAULT NULL,
  `No BH` varchar(10) DEFAULT NULL,
  `Revs Incr. Budget` varchar(10) DEFAULT NULL,
  `Cover eligibility` varchar(10) DEFAULT NULL,
  `Carryforward` varchar(10) DEFAULT NULL,
  `HR budget` varchar(10) DEFAULT NULL,
  `Value Adjustments Required` varchar(10) DEFAULT NULL,
  `Funds Precommt Doc. Type1` varchar(10) DEFAULT NULL,
  `Funds Commitment Doc.Type1` varchar(10) DEFAULT NULL,
  `Budget Period BLANK` varchar(10) DEFAULT NULL,
  `ToYr3` int DEFAULT NULL,
  `Rev.Acct Assignments can be Defined as P` varchar(10) DEFAULT NULL,
  `No FM Checks` varchar(10) DEFAULT NULL,
  `ReNo` int DEFAULT NULL,
  `Activ1` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-18-TKA01`
--

DROP TABLE IF EXISTS `SOD-18-TKA01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-18-TKA01` (
  `Cl.` int DEFAULT NULL,
  `COAr` varchar(4) DEFAULT NULL,
  `Name` varchar(25) DEFAULT NULL,
  `Crcy` varchar(3) DEFAULT NULL,
  `ChAc` varchar(4) DEFAULT NULL,
  `FV` varchar(2) DEFAULT NULL,
  `C` int DEFAULT NULL,
  `Log.System` varchar(10) DEFAULT NULL,
  `ALE` varchar(10) DEFAULT NULL,
  `LSys.MData` varchar(10) DEFAULT NULL,
  `StdHierarchy` varchar(10) DEFAULT NULL,
  `Convert revenue` varchar(10) DEFAULT NULL,
  `PI` varchar(10) DEFAULT NULL,
  `Reserve` varchar(10) DEFAULT NULL,
  `OpCo` varchar(4) DEFAULT NULL,
  `Dummy Profit Center` varchar(10) DEFAULT NULL,
  `Area` varchar(10) DEFAULT NULL,
  `PrCtr ledger` varchar(1) DEFAULT NULL,
  `Elim.IntBusVol` varchar(1) DEFAULT NULL,
  `Different Company Code Currency` varchar(1) DEFAULT NULL,
  `Area1` varchar(10) DEFAULT NULL,
  `A` varchar(10) DEFAULT NULL,
  `Vend.downp` varchar(6) DEFAULT NULL,
  `Cus.dwnpay` varchar(10) DEFAULT NULL,
  `PCtr Local Curr` varchar(10) DEFAULT NULL,
  `CT` varchar(2) DEFAULT NULL,
  `TC` varchar(1) DEFAULT NULL,
  `CC` int DEFAULT NULL,
  `RLd` varchar(10) DEFAULT NULL,
  `Doc. Type` varchar(10) DEFAULT NULL,
  `FMA` varchar(10) DEFAULT NULL,
  `ADP` varchar(10) DEFAULT NULL,
  `ALE distM.` varchar(10) DEFAULT NULL,
  `Valuatn` int DEFAULT NULL,
  `C+V Prof.` varchar(10) DEFAULT NULL,
  `Act` varchar(10) DEFAULT NULL,
  `Pers. Resp.` varchar(10) DEFAULT NULL,
  `Account control when transferring valuat` varchar(10) DEFAULT NULL,
  `Val. Calc.` int DEFAULT NULL,
  `Default Profit Ctr` varchar(10) DEFAULT NULL,
  `Hide` varchar(10) DEFAULT NULL,
  `FS Vers` varchar(10) DEFAULT NULL,
  `No StdHier` varchar(10) DEFAULT NULL,
  `Hier. 1` varchar(10) DEFAULT NULL,
  `Hier. 2` varchar(10) DEFAULT NULL,
  `No StdHier1` varchar(10) DEFAULT NULL,
  `Hier. 1 1` varchar(10) DEFAULT NULL,
  `Hier. 2 1` varchar(10) DEFAULT NULL,
  `Alternative Use of Object Currency` varchar(10) DEFAULT NULL,
  `ERTy` varchar(10) DEFAULT NULL,
  `TT` varchar(10) DEFAULT NULL,
  `Source Currency Type` varchar(10) DEFAULT NULL,
  `Alternative Source Currency: Equal Curre` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-22-AGR_TIMEB`
--

DROP TABLE IF EXISTS `SOD-22-AGR_TIMEB`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-22-AGR_TIMEB` (
  `SYMANDT` int DEFAULT NULL,
  `AGR_NAME` varchar(30) DEFAULT NULL,
  `AGR_TIME_B` varchar(8) DEFAULT NULL,
  `SYUNAME1` varchar(7) DEFAULT NULL,
  `MENU_DATE1` varchar(10) DEFAULT NULL,
  `MENU_TIME1` varchar(8) DEFAULT NULL,
  `RSTIMESTMP1` int DEFAULT NULL,
  `SYUNAME2` varchar(7) DEFAULT NULL,
  `MENU_DATE2` varchar(10) DEFAULT NULL,
  `MENU_TIME2` varchar(8) DEFAULT NULL,
  `RSTIMESTMP2` int DEFAULT NULL,
  `MENU_ATTR` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-23-USR02`
--

DROP TABLE IF EXISTS `SOD-23-USR02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-23-USR02` (
  `MANDT` int DEFAULT NULL,
  `BNAME` varchar(10) DEFAULT NULL,
  `BCODE` varchar(16) DEFAULT NULL,
  `GLTGV` varchar(10) DEFAULT NULL,
  `GLTGB` varchar(10) DEFAULT NULL,
  `USTYP` varchar(1) DEFAULT NULL,
  `CLASS` varchar(5) DEFAULT NULL,
  `LOCNT` int DEFAULT NULL,
  `UFLAG` int DEFAULT NULL,
  `ACCNT` varchar(10) DEFAULT NULL,
  `ANAME` varchar(7) DEFAULT NULL,
  `ERDAT` varchar(10) DEFAULT NULL,
  `TRDAT` varchar(10) DEFAULT NULL,
  `LTIME` varchar(8) DEFAULT NULL,
  `OCOD1` varchar(16) DEFAULT NULL,
  `BCDA1` varchar(10) DEFAULT NULL,
  `CODV1` varchar(10) DEFAULT NULL,
  `OCOD2` varchar(16) DEFAULT NULL,
  `BCDA2` varchar(10) DEFAULT NULL,
  `CODV2` varchar(10) DEFAULT NULL,
  `OCOD3` varchar(16) DEFAULT NULL,
  `BCDA3` varchar(10) DEFAULT NULL,
  `CODV3` varchar(10) DEFAULT NULL,
  `OCOD4` varchar(16) DEFAULT NULL,
  `BCDA4` varchar(10) DEFAULT NULL,
  `CODV4` varchar(10) DEFAULT NULL,
  `OCOD5` varchar(16) DEFAULT NULL,
  `BCDA5` varchar(10) DEFAULT NULL,
  `CODV5` varchar(10) DEFAULT NULL,
  `VERSN` varchar(10) DEFAULT NULL,
  `CODVN` varchar(1) DEFAULT NULL,
  `TZONE` varchar(5) DEFAULT NULL,
  `ZBVMASTER` varchar(10) DEFAULT NULL,
  `PASSCODE` varchar(40) DEFAULT NULL,
  `PWDCHGDATE` varchar(10) DEFAULT NULL,
  `PWDSTATE` int DEFAULT NULL,
  `RESERVED` int DEFAULT NULL,
  `PWDHISTORY` int DEFAULT NULL,
  `PWDLGNDATE` varchar(10) DEFAULT NULL,
  `PWDSETDATE` varchar(10) DEFAULT NULL,
  `PWDINITIAL` int DEFAULT NULL,
  `PWDLOCKDATE` varchar(10) DEFAULT NULL,
  `PWDSALTEDHASH` varchar(147) DEFAULT NULL,
  `SECURITY_POLICY` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `SOD-24-USH02`
--

DROP TABLE IF EXISTS `SOD-24-USH02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `SOD-24-USH02` (
  `MANDT` int DEFAULT NULL,
  `BNAME` varchar(10) DEFAULT NULL,
  `MODDA` varchar(10) DEFAULT NULL,
  `MODTI` varchar(8) DEFAULT NULL,
  `MODBE` varchar(9) DEFAULT NULL,
  `TCODE` varchar(4) DEFAULT NULL,
  `REPID` varchar(32) DEFAULT NULL,
  `BCODE` varchar(16) DEFAULT NULL,
  `GLTGV` varchar(10) DEFAULT NULL,
  `GLTGB` varchar(10) DEFAULT NULL,
  `USTYP` varchar(1) DEFAULT NULL,
  `CLASS` varchar(5) DEFAULT NULL,
  `UFLAG` int DEFAULT NULL,
  `ACCNT` varchar(10) DEFAULT NULL,
  `PASSCODE` varchar(40) DEFAULT NULL,
  `CODVN` varchar(1) DEFAULT NULL,
  `PWDINITIAL` int DEFAULT NULL,
  `PWDSALTEDHASH` varchar(147) DEFAULT NULL,
  `SECURITY_POLICY` varchar(10) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test01`
--

DROP TABLE IF EXISTS `test01`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test01` (
  `COL1` int NOT NULL AUTO_INCREMENT,
  `COL2` varchar(45) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL,
  PRIMARY KEY (`COL1`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test02`
--

DROP TABLE IF EXISTS `test02`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test02` (
  `a` int NOT NULL,
  `b` varchar(45) DEFAULT NULL,
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL,
  PRIMARY KEY (`a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test04`
--

DROP TABLE IF EXISTS `test04`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test04` (
  `CoCd` varchar(4) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `test05`
--

DROP TABLE IF EXISTS `test05`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test05` (
  `CoCd` varchar(4) CHARACTER SET utf8 NOT NULL,
  `TOTAL VENDOR COUNT` bigint NOT NULL DEFAULT '0',
  `irm_cust_id` varchar(100) NOT NULL,
  `irm_job_id` varchar(100) NOT NULL,
  `irm_crd_date` datetime DEFAULT NULL,
  `irm_upd_date` datetime DEFAULT NULL,
  `irm_upd_user` varchar(100) NOT NULL,
  `irm_crd_user` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-23 13:37:07
