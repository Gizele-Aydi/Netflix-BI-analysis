ALTER TABLE `netflix_db`.`userbase` 
ADD CONSTRAINT `FK_Subscription_ID`
  FOREIGN KEY (`Subscription_ID`)
  REFERENCES `netflix_db`.`subscription_types` (`Subscription_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Country_code`
  FOREIGN KEY (`Country_code`)
  REFERENCES `netflix_db`.`countries` (`Country_code`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `FK_Device_ID`
  FOREIGN KEY (`Device_ID`)
  REFERENCES `netflix_db`.`device_types` (`Device_ID`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
