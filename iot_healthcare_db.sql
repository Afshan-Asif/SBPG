/*
MySQL Data Transfer
Source Host: localhost
Source Database: iot_healthcare_db
Target Host: localhost
Target Database: iot_healthcare_db
Date: 27-05-2020 11:17:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for doctor_reg
-- ----------------------------
DROP TABLE IF EXISTS `doctor_reg`;
CREATE TABLE `doctor_reg` (
  `doctor_id` int(50) NOT NULL auto_increment,
  `fname` varchar(50) default NULL,
  `lname` varchar(50) default NULL,
  `email_id` varchar(100) default NULL,
  `mobile_no` varchar(10) default NULL,
  `gender` varchar(10) default NULL,
  `address` varchar(100) default NULL,
  `qualifications` varchar(20) default NULL,
  `password` varchar(50) default NULL,
  PRIMARY KEY  (`doctor_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `user_id` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `utype` varchar(20) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Table structure for patient_registration
-- ----------------------------
DROP TABLE IF EXISTS `patient_registration`;
CREATE TABLE `patient_registration` (
  `patient_id` int(10) NOT NULL auto_increment,
  `fname` varchar(50) default NULL,
  `lname` varchar(50) default NULL,
  `phone_no` varchar(10) default NULL,
  `address` varchar(100) default NULL,
  `consulting_doctor_id` int(25) default NULL,
  `blood_group` varchar(4) default NULL,
  `admission_date` varchar(25) default NULL,
  `password` varchar(50) default NULL,
  PRIMARY KEY  (`patient_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `doctor_reg` VALUES ('1', 'aaa', 'aa', 'aa@g.com', '1122334455', 'Male', 'dsd', 'M.B.B.S,MS', '123456');
INSERT INTO `doctor_reg` VALUES ('2', 'srinivas', 'reddy', 'sri12@gmail.com', '9886832434', 'Male', '#230,1st main 8th block HSR layout', 'M.B.B.S,MD', '123456');
INSERT INTO `doctor_reg` VALUES ('3', 'ss', 's', 'ss@g.com', '1122112233', 'Male', 'btm', 'M.B.B.S,MS', '123456');
INSERT INTO `login` VALUES ('admin', '123456', 'admin');
INSERT INTO `patient_registration` VALUES ('1', 'sam', 'sa', '9988774455', 'dddd', '1', 'O+', '2018-04-13', '123456');
INSERT INTO `patient_registration` VALUES ('2', 'ggwrgrt', 'grr', '435453', 'rfer', '2', 'A+', '2018-04-13', '123456');
INSERT INTO `patient_registration` VALUES ('3', 'sam', 's', '8877665544', 'jp', '3', 'A-', '12', '123456');
