/*
DROP TABLE [county];
DROP TABLE [deleted_turtle];
DROP TABLE [deleted_turtle_morphometric];
DROP TABLE [deleted_turtle_tag];
DROP TABLE [hatchlings_acquired_event];
DROP TABLE [hatchlings_died_event];
DROP TABLE [hatchlings_doa_event];
DROP TABLE [hatchlings_released_event];
DROP TABLE [organization];
DROP TABLE [sys_info];
DROP TABLE [tank];
DROP TABLE [tank_water];
DROP TABLE [turtle];
DROP TABLE [turtle_morphometric];
DROP TABLE [turtle_tag];
DROP TABLE [user];
DROP TABLE [washbacks_acquired_event];
DROP TABLE [washbacks_died_event];
DROP TABLE [washbacks_doa_event];
DROP TABLE [washbacks_released_event];
*/

CREATE TABLE [county] (
	[county_id] UNIQUEIDENTIFIER NOT NULL,
	[county_name] VARCHAR(255)
);


CREATE TABLE [deleted_turtle] (
	[turtle_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[turtle_name] VARCHAR(255),
	[sid_number] VARCHAR(255),
	[stranding_id_number] VARCHAR(255),
	[species] VARCHAR(255),
	[date_captured] DATETIME,
	[date_acquired] DATETIME,
	[acquired_from] VARCHAR(255),
	[turtle_size] VARCHAR(255),
	[status] VARCHAR(255),
	[date_relinquished] DATETIME,
	[relinquished_to] VARCHAR(255),
	[anomalies] VARCHAR(255),
	[injury_boat_strike] BIT,
	[injury_intestinal_impaction] BIT,
	[injury_line_entanglement] BIT,
	[injury_fish_hook] BIT,
	[injury_upper_respiratory] BIT,
	[injury_animal_bite] BIT,
	[injury_fibropapilloma] BIT,
	[injury_misc_epidemic] BIT,
	[injury_doa] BIT,
	[injury_other] BIT,
	[was_carrying_tags_when_enc] BIT,
	[recapture_type] VARCHAR(1),
	[tag_return_address] VARCHAR(255),
	[capture_project_type] VARCHAR(1),
	[did_turtle_nest] BIT,
	[capture_project_other] VARCHAR(255),
	[acquired_county] VARCHAR(255),
	[acquired_latitude] DECIMAL(9,6),
	[acquired_longitude] DECIMAL(9,6),
	[relinquished_county] VARCHAR(255),
	[relinquished_latitude] DECIMAL(9,6),
	[relinquished_longitude] DECIMAL(9,6),
	[inspected_for_tag_scars] BIT,
	[tag_scars_located] VARCHAR(255),
	[scanned_for_pit_tags] BIT,
	[pit_tags_scan_frequency] VARCHAR(255),
	[scanned_for_magnetic_wires] BIT,
	[magnetic_wires_located] VARCHAR(255),
	[inspected_for_living_tags] BIT,
	[living_tags_located] VARCHAR(255),
	[brochure_comments] VARCHAR(255),
	[brochure_background_color] VARCHAR(255),
	[brochure_image_file_attachment_id] VARCHAR(255)
);


CREATE TABLE [deleted_turtle_morphometric] (
	[turtle_morphometric_id] UNIQUEIDENTIFIER NOT NULL,
	[turtle_id] UNIQUEIDENTIFIER NOT NULL,
	[date_measured] DATETIME,
	[scl_notch_notch_value] DECIMAL(7,2),
	[scl_notch_notch_units] VARCHAR(2),
	[scl_notch_tip_value] DECIMAL(7,2),
	[scl_notch_tip_units] VARCHAR(2),
	[scl_tip_tip_value] DECIMAL(7,2),
	[scl_tip_tip_units] VARCHAR(2),
	[scw_value] DECIMAL(7,2),
	[scw_units] VARCHAR(2),
	[ccl_notch_notch_value] DECIMAL(7,2),
	[ccl_notch_notch_units] VARCHAR(2),
	[ccl_notch_tip_value] DECIMAL(7,2),
	[ccl_notch_tip_units] VARCHAR(2),
	[ccl_tip_tip_value] DECIMAL(7,2),
	[ccl_tip_tip_units] VARCHAR(2),
	[ccw_value] DECIMAL(7,2),
	[ccw_units] VARCHAR(2),
	[weight_value] DECIMAL(7,2),
	[weight_units] VARCHAR(2)
);


CREATE TABLE [deleted_turtle_tag] (
	[turtle_tag_id] UNIQUEIDENTIFIER NOT NULL,
	[turtle_id] UNIQUEIDENTIFIER NOT NULL,
	[tag_number] VARCHAR(255),
	[tag_type] VARCHAR(255),
	[location] VARCHAR(255),
	[date_tagged] DATETIME
);

CREATE TABLE [hatchlings_acquired_event] (
	[hatchlings_acquired_event_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[species_code] VARCHAR(2),
	[event_date] DATETIME,
	[event_count] INTEGER,
	[acquired_from_county] VARCHAR(255)
);


CREATE TABLE [hatchlings_died_event] (
	[hatchlings_died_event_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[species_code] VARCHAR(2),
	[event_date] DATETIME,
	[event_count] INTEGER
);


CREATE TABLE [hatchlings_doa_event] (
 [hatchlings_doa_event_id] UNIQUEIDENTIFIER NOT NULL,
 [organization_id] UNIQUEIDENTIFIER NOT NULL,
 [species_code] VARCHAR(2),
 [event_date] DATETIME,
 [event_count] INTEGER,
 [doa_from_county] VARCHAR(255)
);


CREATE TABLE [hatchlings_released_event] (
	[hatchlings_released_event_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[species_code] VARCHAR(2),
	[event_date] DATETIME,
	[beach_event_count] INTEGER,
	[offshore_event_count] INTEGER
);


CREATE TABLE [organization] (
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_name] VARCHAR(255),
	[address_1] VARCHAR(255),
	[address_2] VARCHAR(255),
	[city] VARCHAR(255),
	[state] VARCHAR(2),
	[zip_code] VARCHAR(255),
	[phone] VARCHAR(255),
	[fax] VARCHAR(255),
	[email_address] VARCHAR(255),
	[permit_number] VARCHAR(255),
	[contact_name] VARCHAR(255),
	[hatchling_balance_as_of_date] DATETIME,
	[cc_hatchling_starting_balance] INTEGER,
	[cm_hatchling_starting_balance] INTEGER,
	[dc_hatchling_starting_balance] INTEGER,
	[other_hatchling_starting_balance] INTEGER,
	[unknown_hatchling_starting_balance] INTEGER,
	[preferred_units_type] VARCHAR(1),
	[washback_balance_as_of_date] DATETIME,
	[cc_washback_starting_balance] INTEGER,
	[cm_washback_starting_balance] INTEGER,
	[dc_washback_starting_balance] INTEGER,
	[other_washback_starting_balance] INTEGER,
	[unknown_washback_starting_balance] INTEGER
);


CREATE TABLE [sys_info] (
	[db_version] VARCHAR(255)
);


CREATE TABLE [tank] (
	[tank_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[tank_name] VARCHAR(255)
);


CREATE TABLE [tank_water] (
	[tank_water_id] UNIQUEIDENTIFIER NOT NULL,
	[tank_id] UNIQUEIDENTIFIER NOT NULL,
	[date_measured] DATETIME,
	[temperature] VARCHAR(255),
	[salinity] VARCHAR(255),
	[ph] VARCHAR(255)
);


CREATE TABLE [turtle] (
	[turtle_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[turtle_name] VARCHAR(255),
	[sid_number] VARCHAR(255),
	[stranding_id_number] VARCHAR(255),
	[species] VARCHAR(255),
	[date_captured] DATETIME,
	[date_acquired] DATETIME,
	[acquired_from] VARCHAR(255),
	[turtle_size] VARCHAR(255),
	[status] VARCHAR(255),
	[date_relinquished] DATETIME,
	[relinquished_to] VARCHAR(255),
	[anomalies] VARCHAR(255),
	[injury_boat_strike] BIT,
	[injury_intestinal_impaction] BIT,
	[injury_line_entanglement] BIT,
	[injury_fish_hook] BIT,
	[injury_upper_respiratory] BIT,
	[injury_animal_bite] BIT,
	[injury_fibropapilloma] BIT,
	[injury_misc_epidemic] BIT,
	[injury_doa] BIT,
	[injury_other] BIT,
	[was_carrying_tags_when_enc] BIT,
	[recapture_type] VARCHAR(1),
	[tag_return_address] VARCHAR(255),
	[capture_project_type] VARCHAR(1),
	[did_turtle_nest] BIT,
	[capture_project_other] VARCHAR(255),
	[acquired_county] VARCHAR(255),
	[acquired_latitude] DECIMAL(9,6),
	[acquired_longitude] DECIMAL(9,6),
	[relinquished_county] VARCHAR(255),
	[relinquished_latitude] DECIMAL(9,6),
	[relinquished_longitude] DECIMAL(9,6),
	[inspected_for_tag_scars] BIT,
	[tag_scars_located] VARCHAR(255),
	[scanned_for_pit_tags] BIT,
	[pit_tags_scan_frequency] VARCHAR(255),
	[scanned_for_magnetic_wires] BIT,
	[magnetic_wires_located] VARCHAR(255),
	[inspected_for_living_tags] BIT,
	[living_tags_located] VARCHAR(255),
	[brochure_comments] VARCHAR(255),
	[brochure_background_color] VARCHAR(255),
	[brochure_image_file_attachment_id] VARCHAR(255)
);


CREATE TABLE [turtle_morphometric] (
	[turtle_morphometric_id] UNIQUEIDENTIFIER NOT NULL,
	[turtle_id] UNIQUEIDENTIFIER NOT NULL,
	[date_measured] DATETIME,
	[scl_notch_notch_value] DECIMAL(7,2),
	[scl_notch_notch_units] VARCHAR(2),
	[scl_notch_tip_value] DECIMAL(7,2),
	[scl_notch_tip_units] VARCHAR(2),
	[scl_tip_tip_value] DECIMAL(7,2),
	[scl_tip_tip_units] VARCHAR(2),
	[scw_value] DECIMAL(7,2),
	[scw_units] VARCHAR(2),
	[ccl_notch_notch_value] DECIMAL(7,2),
	[ccl_notch_notch_units] VARCHAR(2),
	[ccl_notch_tip_value] DECIMAL(7,2),
	[ccl_notch_tip_units] VARCHAR(2),
	[ccl_tip_tip_value] DECIMAL(7,2),
	[ccl_tip_tip_units] VARCHAR(2),
	[ccw_value] DECIMAL(7,2),
	[ccw_units] VARCHAR(2),
	[weight_value] DECIMAL(7,2),
	[weight_units] VARCHAR(2)
);


CREATE TABLE [turtle_tag] (
	[turtle_tag_id] UNIQUEIDENTIFIER NOT NULL,
	[turtle_id] UNIQUEIDENTIFIER NOT NULL,
	[tag_number] VARCHAR(255),
	[tag_type] VARCHAR(255),
	[location] VARCHAR(255),
	[date_tagged] DATETIME
);


CREATE TABLE [washbacks_acquired_event] (
	[washbacks_acquired_event_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[species_code] VARCHAR(2),
	[event_date] DATETIME,
	[event_count] INTEGER,
	[acquired_from_county] VARCHAR(255),
	[under_5cm_clsl] BIT
);


CREATE TABLE [washbacks_died_event] (
	[washbacks_died_event_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[species_code] VARCHAR(2),
	[event_date] DATETIME,
	[event_count] INTEGER,
	[under_5cm_clsl] BIT
);


CREATE TABLE [washbacks_doa_event] (
	[washbacks_doa_event_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[species_code] VARCHAR(2),
	[event_date] DATETIME,
	[event_count] INTEGER,
	[doa_from_county] VARCHAR(255),
	[under_5cm_clsl] BIT
);


CREATE TABLE [washbacks_released_event] (
	[washbacks_released_event_id] UNIQUEIDENTIFIER NOT NULL,
	[organization_id] UNIQUEIDENTIFIER NOT NULL,
	[species_code] VARCHAR(2),
	[event_date] DATETIME,
	[beach_event_count] INTEGER,
	[offshore_event_count] INTEGER
);


CREATE TABLE [user] (
	[user_id] UNIQUEIDENTIFIER NOT NULL,
	[user_name] VARCHAR(255), 
	[user_email] VARCHAR(255), 
	[organization_id] UNIQUEIDENTIFIER NULL,
	[is_admin] BIT,
	[last_login] DATETIME
);


INSERT INTO [user] (user_id, user_name, user_email, organization_id, is_admin, last_login)
VALUES ('603D67B0-4121-4768-B468-7F162D9E6E54', 'JP-ADMIN', 'jpalexa@gmail.com', NULL, 1, GETDATE());
INSERT INTO [user] (user_id, user_name, user_email, organization_id, is_admin, last_login)
VALUES ('983597B0-B311-4816-9088-3FB02AB778AF', 'JP-NORMAL', 'jpalexa@yahoo.com', NULL, 0, GETDATE());


INSERT INTO [county] (county_id, county_name) VALUES ('a09beb2d-4399-4b65-b907-4cf39b1331f6', 'Alachua');
INSERT INTO [county] (county_id, county_name) VALUES ('92b94704-dfc9-47cd-b37e-74a7c9c9558b', 'Baker');
INSERT INTO [county] (county_id, county_name) VALUES ('c7d2fa86-6e72-4c3c-9f7d-8068235d70ee', 'Bay');
INSERT INTO [county] (county_id, county_name) VALUES ('c7aa970a-bb8f-46f2-868c-531a358b61fe', 'Bradford');
INSERT INTO [county] (county_id, county_name) VALUES ('b6a4f5da-3dee-4f41-abfa-06c36f2b54e7', 'Brevard');
INSERT INTO [county] (county_id, county_name) VALUES ('ac5dccf2-f3c6-44b4-8618-1205a66f7912', 'Broward');
INSERT INTO [county] (county_id, county_name) VALUES ('65b7fd02-5ac5-4f27-98ad-b953874491ee', 'Calhoun');
INSERT INTO [county] (county_id, county_name) VALUES ('78411f96-fd54-41f5-9189-7f66bb4426cc', 'Charlotte');
INSERT INTO [county] (county_id, county_name) VALUES ('e261e0f9-4f63-4ca2-991a-8b53a61bef22', 'Citrus');
INSERT INTO [county] (county_id, county_name) VALUES ('edb6787a-a8cf-47d5-88fc-2cea152d8590', 'Clay');
INSERT INTO [county] (county_id, county_name) VALUES ('4f259f17-b83a-4fed-87ce-59f876b9f970', 'Collier');
INSERT INTO [county] (county_id, county_name) VALUES ('b1c9170e-0c76-4b4e-b346-5beffeb9b1ed', 'Columbia');
INSERT INTO [county] (county_id, county_name) VALUES ('f82a9bc3-1a94-40b2-8b73-a68a27b21229', 'DeSoto');
INSERT INTO [county] (county_id, county_name) VALUES ('851773a1-e50c-42ce-a5f9-293ba1003ab8', 'Dixie');
INSERT INTO [county] (county_id, county_name) VALUES ('b0efa114-f7e4-488b-8fce-73da6fc0febe', 'Duval');
INSERT INTO [county] (county_id, county_name) VALUES ('90362e93-bdf2-41c3-b9c3-9d7da7b65c0c', 'Escambia');
INSERT INTO [county] (county_id, county_name) VALUES ('9f3ef9b5-e4c2-4fdd-9280-0faf97148bcd', 'Flagler');
INSERT INTO [county] (county_id, county_name) VALUES ('49a909e8-0045-458e-b799-0e0a034c0b05', 'Franklin');
INSERT INTO [county] (county_id, county_name) VALUES ('4d031fdb-8af7-4d91-b671-644451ce6a66', 'Gadsden');
INSERT INTO [county] (county_id, county_name) VALUES ('bb3484e7-d130-4fb7-a459-7fb1683e219f', 'Gilchrist');
INSERT INTO [county] (county_id, county_name) VALUES ('cd565ff0-6c24-4269-b17f-63ed49a3b6c5', 'Glades');
INSERT INTO [county] (county_id, county_name) VALUES ('4dc5d194-a5cf-40a4-b485-fe2e22faaa0b', 'Gulf');
INSERT INTO [county] (county_id, county_name) VALUES ('bc7cbc42-2d12-4211-b421-c5a3c9853035', 'Hamilton');
INSERT INTO [county] (county_id, county_name) VALUES ('904f82b2-c2ed-45f9-9caf-9e6f7e7d7d7d', 'Hardee');
INSERT INTO [county] (county_id, county_name) VALUES ('f00fd3ef-ee3c-4093-8fe1-1f7901da445e', 'Hendry');
INSERT INTO [county] (county_id, county_name) VALUES ('5ae5cc08-2eef-4cb9-b03a-b18cfdae7032', 'Hernando');
INSERT INTO [county] (county_id, county_name) VALUES ('79e69c07-0206-4221-896d-5a5540425e00', 'Highlands');
INSERT INTO [county] (county_id, county_name) VALUES ('a132bfa9-7c14-461f-ac09-d8f67c7e0ff0', 'Hillsborough');
INSERT INTO [county] (county_id, county_name) VALUES ('c9143268-1d6a-45d3-865d-30bb98d74ba0', 'Holmes');
INSERT INTO [county] (county_id, county_name) VALUES ('75f1d5fa-f483-4f6c-a56f-972ccc72179e', 'Indian River');
INSERT INTO [county] (county_id, county_name) VALUES ('2ba3eb0c-8efa-43e7-ac10-b3c1993e6412', 'Jackson');
INSERT INTO [county] (county_id, county_name) VALUES ('284b7828-0724-4f88-86af-df8ee912ad8a', 'Jefferson');
INSERT INTO [county] (county_id, county_name) VALUES ('99b0de21-1218-4a3a-94de-f22740cf3e59', 'Lafayette');
INSERT INTO [county] (county_id, county_name) VALUES ('69fae139-a2d1-47ac-b70b-c5788a8a05b5', 'Lake');
INSERT INTO [county] (county_id, county_name) VALUES ('4ee6b1ef-948b-4153-b412-7be93ad4e60d', 'Lee');
INSERT INTO [county] (county_id, county_name) VALUES ('36eff79b-270e-4d0e-82a9-849345c3f3b0', 'Leon');
INSERT INTO [county] (county_id, county_name) VALUES ('86c29227-72ee-43eb-9565-c4f9d4db4843', 'Levy');
INSERT INTO [county] (county_id, county_name) VALUES ('7f706ce3-00cd-4667-87ce-dd02d95b2b4e', 'Liberty');
INSERT INTO [county] (county_id, county_name) VALUES ('e6b38130-7239-4263-a70b-5b037639b202', 'Madison');
INSERT INTO [county] (county_id, county_name) VALUES ('2d407aca-6606-43e2-96f5-b3288db24527', 'Manatee');
INSERT INTO [county] (county_id, county_name) VALUES ('d31f71dd-ddb1-4066-aa26-eee0732c63d0', 'Marion');
INSERT INTO [county] (county_id, county_name) VALUES ('e1ef9a87-5539-4b55-8a7f-d22bc01940dc', 'Martin');
INSERT INTO [county] (county_id, county_name) VALUES ('4bd08d27-2a82-42bc-9817-6d8748e17916', 'Miami-Dade');
INSERT INTO [county] (county_id, county_name) VALUES ('6985e08e-4dc5-4eb5-ba20-c5c8ca88ac3b', 'Monroe');
INSERT INTO [county] (county_id, county_name) VALUES ('1ed55662-b4a9-4fb7-9f01-ad584e47aa8a', 'Nassau');
INSERT INTO [county] (county_id, county_name) VALUES ('8eeb8188-50c8-429b-8fa3-2f41094f027a', 'Okaloosa');
INSERT INTO [county] (county_id, county_name) VALUES ('7fe8e543-5b2c-49e7-9b49-1989312bfc46', 'Okeechobee');
INSERT INTO [county] (county_id, county_name) VALUES ('fc2056a9-5d87-4a12-8ea9-ce3e18b2ef52', 'Orange');
INSERT INTO [county] (county_id, county_name) VALUES ('6e11b4e8-77a6-4093-bd58-e99b2c8d84b9', 'Osceloa');
INSERT INTO [county] (county_id, county_name) VALUES ('5c527fef-166e-4756-b44b-8e686d807fa3', 'Palm Beach');
INSERT INTO [county] (county_id, county_name) VALUES ('2148ae6f-1b07-40d5-94d9-c123e47a0061', 'Pasco');
INSERT INTO [county] (county_id, county_name) VALUES ('39887f5c-590b-48df-bd24-bd3575baacc7', 'Pinellas');
INSERT INTO [county] (county_id, county_name) VALUES ('c1d36391-710b-4978-a8c5-a3b6e71e22dd', 'Polk');
INSERT INTO [county] (county_id, county_name) VALUES ('17eaafd5-68fd-45d9-9bdc-38735e756594', 'Putnam');
INSERT INTO [county] (county_id, county_name) VALUES ('33fa357b-3a18-4ae4-9005-88e528d4013b', 'Santa Rosa');
INSERT INTO [county] (county_id, county_name) VALUES ('50d34547-8dce-42da-8e5c-e14c2b490c0e', 'Sarasota');
INSERT INTO [county] (county_id, county_name) VALUES ('e368e401-b31d-4515-9596-97f766096321', 'Seminole');
INSERT INTO [county] (county_id, county_name) VALUES ('b458cdb7-e0a6-4b43-b3de-17a263011f37', 'St. Johns');
INSERT INTO [county] (county_id, county_name) VALUES ('efe1a2e7-7d5b-4396-9255-dddb1c379be1', 'St. Lucie');
INSERT INTO [county] (county_id, county_name) VALUES ('e0f13c9f-099e-4d17-92b0-fc9f015977b1', 'Sumter');
INSERT INTO [county] (county_id, county_name) VALUES ('b2d2ed66-2d91-40f6-b87f-040473e85804', 'Suwannee');
INSERT INTO [county] (county_id, county_name) VALUES ('2f7ac677-c3e0-48e4-8729-f8c48397839c', 'Taylor');
INSERT INTO [county] (county_id, county_name) VALUES ('e588aa3b-7ac7-498c-bcbc-4e5613658946', 'Union');
INSERT INTO [county] (county_id, county_name) VALUES ('2540c545-c2a1-42fc-858a-ee897673903a', 'Volusia');
INSERT INTO [county] (county_id, county_name) VALUES ('2be0412c-0d8c-4564-847b-326ec7fc70f0', 'Wakulla');
INSERT INTO [county] (county_id, county_name) VALUES ('2c298fdc-83c0-44a3-862e-236887f61ab3', 'Walton');
INSERT INTO [county] (county_id, county_name) VALUES ('31ab2879-884b-4c07-ab4b-bb4ea0e24624', 'Washington');


INSERT INTO organization (organization_id, organization_name, address_1, city, state, zip_code) 
VALUES (NEWID(), 'Organization 1', '111 Main Street', 'Orlando', 'FL', '32801');

INSERT INTO organization (organization_id, organization_name, address_1, city, state, zip_code) 
VALUES (NEWID(), 'Organization 2', '222 Main Street', 'Savannah', 'GA', '31414');




