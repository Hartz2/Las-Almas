-- creates table: dis_manager
-- manager_id: unique ID of manager
-- runner_id: unique ID of runner

CREATE TABLE dis_manager(manager_id INT(5), runner_id INT(5));

-- creates table: dis_runner_out
-- runner_id: unique ID of runner
-- date_out: runner start shift 
-- method: how was the product sent
-- quantity: amount of product ordered
-- product_type: type of product

CREATE TABLE dis_runner_out(runner_id INT(5), date_out DATETIME, method VARCHAR(20), quantity INT(2), product_type VARCHAR(20));

-- creates table: dis_runner_in
-- runner_id: unique ID of runner
-- date_in: runner end shift 
-- collected: money collected [USD]
-- losses: products lost

CREATE TABLE dis_runner_in(runner_id INT(5), date_in DATETIME, collected INT(7), losses INT(2));

-- inserts data into dis_manager table 

INSERT INTO dis_manager VALUES ('30001', '40001');
INSERT INTO dis_manager VALUES ('30002', '40002');
INSERT INTO dis_manager VALUES ('30003', '40003');
INSERT INTO dis_manager VALUES ('30004', '40004');
INSERT INTO dis_manager VALUES ('30005', '40005');

-- insert data into dis_runner_out table 

INSERT INTO dis_runner_out VALUES ('40001', '2001-01-28 00:00:00', 'car', '2', 'product type');
INSERT INTO dis_runner_out VALUES ('40002', '2022-12-01 02:00:00', 'car', '9', 'product type');
INSERT INTO dis_runner_out VALUES ('40003', '2005-03-31 07:00:00', 'plane', '14', 'product type');
INSERT INTO dis_runner_out VALUES ('40004', '2018-06-19 12:00:00', 'plane', '22', 'product type');
INSERT INTO dis_runner_out VALUES ('40005', '2011-02-11 19:00:00', 'car', '5', 'product type');

-- insert data into dis_runner_in table

INSERT INTO dis_runner_in VALUES ('40001', '2001-01-28 03:00:00', '200', '0');
INSERT INTO dis_runner_in VALUES ('40002', '2022-12-01 04:00:00', '1200', '0');
INSERT INTO dis_runner_in VALUES ('40003', '2005-04-01 00:00:00', '4500', '0');
INSERT INTO dis_runner_in VALUES ('40004', '2018-06-21 17:00:00', '5800', '0');
INSERT INTO dis_runner_in VALUES ('40005', '2011-02-11 22:00:00', '600', '0');

-- Manager table request
SELECT runner_id, date_out, date_in, method, 
