-- ocadmin_dbo.form_data_keys definition

CREATE TABLE `form_data_keys`
(
    `name`        varchar(255) NOT NULL,
    `column_name` varchar(255) DEFAULT NULL,
    `hidden`      bit(1)       DEFAULT NULL,
    `meta`        bit(1)       DEFAULT NULL,
    `type`        varchar(255) DEFAULT NULL,
    PRIMARY KEY (`name`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

-- ocadmin_dbo.form_data definition

CREATE TABLE `form_data`
(
    `id`         bigint(20) NOT NULL,
    `key_id`     varchar(255) DEFAULT NULL,
    `value`      varchar(255) DEFAULT NULL,
    `group_name` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`id`),
    KEY `FKt09xvf2v16ad67mc4v52pwe9k` (`key_id`),
    CONSTRAINT `FKt09xvf2v16ad67mc4v52pwe9k` FOREIGN KEY (`key_id`) REFERENCES `form_data_keys` (`name`)
) ENGINE = InnoDB
  DEFAULT CHARSET = latin1;

INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('aC64sB86ThG', '020-100-MD02b2a. Report chain of events ‘due to’ in order-Time interval from onset to death(interval type)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('AJAraEcfH63', '100-DP03. Did the pregnancy contribute to the death?', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('attributeOptionCombo', 'attributeOptionCombo', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('AZSlwlRAFig', '100-MD10j. Manner of death - external cause or poisoning', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('b4yPk98om7e', '100-MD10f. Manner of death - Could not be determined', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('b70okb06FWa', '100-DD04d. Usual Residence-County', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('bNpMzyShDCX', '100-DD04b. Usual Residence-Parish', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('C8n6hBilwsX', '020-100-MD02a2. Report chain of events ‘due to’ in order-Cause of death-Term', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('cmZrrHfTxW3', '020-100-MD02b3a. Report chain of events ‘due to’ in order-Time interval from onset to death (interval type)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('CnPGhOcERFF', '020-100-MD02a3. Report chain of events ‘due to’ in order-Cause of death', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('completedBy', 'completedBy', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('completedDate', 'completedDate', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('cp5xzqVU2Vw', '100-DD0C. I conducted the post mortem of the body', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('created', 'created', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('cSDJ9kSJkFP', '020-100-SearchTextA ', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('DdfDMFW4EJ9', '100-FD07. Age of mother (years)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('deleted', 'deleted', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('DKlOhZJOCrX', '100-MD03b. Please describe how external cause occurred (If poisoning please specify poisoning agent)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('dsiwvNQLe5n', '100-DD05. Occupation', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('dueDate', 'dueDate', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('e96GB4CXyd3', '100-DD08. Sex', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('eCVDO6lt4go', '020-100-MD02b3b. Report chain of events ‘due to’ in order-Time interval from onset to death (interval)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('enrollment', 'enrollment', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('event', 'event', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('eventDate', 'eventDate', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('FhHPxY16vet', '100-MD01. Manner of death (disease)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('fJUy96o8akn', '020-100-MD02a2. Report chain of events ‘due to’ in order-Cause of death-URI', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('fleGy9CvHYh', '020-100-MD02b1b. Report chain of events ‘due to’ in order-Time interval from onset to death (Interval)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('fQWuywOaoN2', '100-MD10e. Manner of death - Pending investigation', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('geometry', 'geometry', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('GFVhltTCG8b', '100-FD05. If death was perinatal, please state conditions of mother that affected the fetus and newborn', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('gNM2Yhypydx', '100-MD10c. Manner of death - Accident', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('hO8No9fHVd2', '020-100-MD02b2b. Report chain of events ‘due to’ in order-Time interval from onset to death(interval)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('i8rrl8YWxLF', '100-DDO10. Date and time of Death', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('IeS8V8Yf40N', '020-100-MD02a3. Report chain of events ‘due to’ in order-Cause of death-Term', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('ivnHp4M4hFF', '100-FD02. Stillborn?', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('j5TIQx3gHyF', '100-OD02. If yes please specify date of surgery', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('jf9TogeSZpk', '100-FD03. If death within 24h specify number of hours survived', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('JhHwdQ337nn', '100-OD03. If yes please specify reason for surgery (disease or condition)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('jY3K6Bv4o9Q', '100-OD04. Was an autopsy requested?', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('K5BDPJQk1BP', '100-DP06. Mode of delivery', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('k9xdBQzYMXo', '020-100-MD01a. Report disease or condition directly leading to death-Cause of death-URI', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('kGIDD5xIeLC', '100-PO01. Place of occurrence of the external cause', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('Kk0hmrJPR90', '100-OD01. Was surgery performed within the last 4 weeks?', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('KpfvNQSsWIw', '100-DP02. If yes, at what point in time was deceased pregnant?', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('KsGOxFyzIs1', '100-MD10b. Manner of death - Assault', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('L97MrANAav9', '020-100-MD03a. State the underlying cause-URI', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('lastUpdated', 'lastUpdated', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('lQ1Byr04JTx', '100-FD04. Number of completed weeks of pregnancy', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('lu9BiHPxNqH', '100-DD0X. Declaration Other Specify', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('mDez8j7furx', '100-PO02. If Other place (please specify):', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('MOstDqSY0gO', '100-DD02. NIN', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('myydnkmLfhp', '020-100-MD02b1a. Report chain of events ‘due to’ in order-Time interval from onset to death (Interval type)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('NkiH8GTX6HC', 'AltcauseBsearch', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('o1hG9vr0peF', '100-MD10i. Manner of death - Unknown', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('Op5pSvgHo1M', '020-100-SearchTextD', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('orgUnit', 'orgUnit', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('orgUnitName', 'orgUnitName', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('PaoRZbokFWJ', 'Examined By', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('program', 'program', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('programStage', 'programStage', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('q7e7FOXKnOf', '100-DD07. Age', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('QDHeWslaEoH', 'HMIS100. Referred', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('QGFYJK00ES7', '020-100-MD02a2. Report chain of events ‘due to’ in order-Cause of death', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('QHY3iYRLvMp', 'AltcauseAsearch', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('QTKk2Xt8KDu', '020-100-MD03a. State the underlying cause', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('RbrUuKFSqkZ', '100-DD06. Date of Birth', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('RJhbkjYrODG', '100-DP04. Referred from (level of care)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('roxn33dtLLx', 'HMIS100. Date of Birth Known', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('S53kx50gjQn', '020-100-MD02a3. Report chain of events ‘due to’ in order-Cause of death-URI', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('SDPq8UURlWc', 'AltcauseCsearch', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('sfpqAeqKeyQ', '020-100-MD01a. Report disease or condition directly leading to death-Cause of death', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('sJhOdGLD5lj', '020-100-MD03a. State the underlying cause-Term', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('status', 'status', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('storedBy', 'storedBy', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('t5nTEmlScSt', '100-DD04e. District', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('tuMMQsGtE69', '020-100-MD02a1. Report chain of events ‘due to’ in order-Cause of death-Term', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('twVlVWM3ffz', '100-Approval ', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('tYH7drlbNya', '100-MD10d. Manner of death -  Legal intervention', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('U18Tnfz9EKd', '100-MD02. Date of Injury If external cause or poisoning', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('u44XP9fZweA', '100-DD04c. Usual Residence-Sub-County', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('u9tYUv6AM51', '100-DD0A. I attended the deceased before death', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('uaxjt0inPNF', '100-DP08. Delivered by skilled attendant', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('uckvenVFnwf', '020-100-SearchTextB', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('UfG52s4YcUt', '100-OD05. If yes were the findings used in the certification?', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('V4rE1tsj5Rb', '100-FD01. Multiple pregnancy', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('WkXxkKEJLsg', '020-100-MD01bb. Report disease or condition directly leading to death-Time interval from onset to death (interval)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('WqYvFt79TQB', 'HMIS100. Referred From?', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('wX3i3gkTG4m', '100-MD10g. Manner of death -  Intentional self-harm', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('xAWYJtQsg8M', '100-FD06. Birth weight (in grams)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('xDMX2CJ4Xw3', '100-MD10h. Manner of death - War', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('xeE5TQLvucB', '020-100-MD04. Other significant conditions contributing to death  (time intervals can be included in brackets after the condition)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('xNCSFrgdUgi', '100-DDO9. Place of Death', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('xxx6yjtuN2f', 'Type Of ID', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('yftBZ5bSEOb', '020-100-MD02a1. Report chain of events ‘due to’ in order-Cause of death-URI', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('Ylht9kCLSRW', '020-100-MD01ba. Report disease or condition directly leading to death-Time interval from onset to death(interval type)', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('ymyLrfEcYkD', '100-DP05. Parity', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('Z41di0TRjIu', '100-DP07. Place of delivery', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('zb7uTuBCPrN', '020-100-MD02a1. Report chain of events ‘due to’ in order-Cause of death', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('zcn7acUB6x1', '100-DP01. For women, was the deceased pregnant?', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('zD0E77W4rFs', '020-100-MD01a. Report disease or condition directly leading to death-Cause of death-Term', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('ZFdJRT3PaUd', '020-100-SearchTextC', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('ZKBE8Xm9DJG', '004-020-100-DN01. Ministry of Health National Case Number', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('zqW9xWyqOur', 'AltcauseDsearch', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('zwKo51BEayZ', '100-DD04a. Usual Residence-Village', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('ZXZZfzBpu8a', '100-DD0B.I examined the body after death', 0, 0, 'java.lang.String');
INSERT INTO ocadmin_dbo.form_data_keys
(name, column_name, hidden, meta, `type`)
VALUES('ZYKmQ9GPOaF', '100-DD01. Full Name', 0, 0, 'java.lang.String');

