DROP TABLE IF EXISTS `irm_job_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `irm_job_master` (
  `irm_job_id` int NOT NULL AUTO_INCREMENT,
  `irm_job_desc` varchar(100) DEFAULT NULL,
  `irm_cust_id` int DEFAULT NULL,
  `irm_run_date` datetime DEFAULT NULL,
  `irm_user_id` int DEFAULT NULL,
  `irm_source_system_id` int DEFAULT NULL,
  PRIMARY KEY (`irm_job_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `irm_job_master`
--

LOCK TABLES `irm_job_master` WRITE;
/*!40000 ALTER TABLE `irm_job_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `irm_job_master` ENABLE KEYS */;
UNLOCK TABLES;
