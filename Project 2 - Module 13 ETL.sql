CREATE TABLE contacts (
    contact_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

SELECT * FROM contacts
-------------------------
CREATE TABLE category (
    category_id VARCHAR(10) PRIMARY KEY,
    category VARCHAR(50) NOT NULL
);

SELECT * FROM category
-------------------------------------
CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50) NOT NULL
);

SELECT * FROM subcategory
-------------------------------------
CREATE TABLE campaign (
    cf_id SERIAL PRIMARY KEY,
    contact_id INTEGER,
    company_name VARCHAR(100),
    description TEXT,
    goal NUMERIC(15, 2),
    pledged NUMERIC(15, 2),
    outcome VARCHAR(20),
    backers_count INTEGER,
    country CHAR(2),
    currency CHAR(3),
    launch_date TIMESTAMP,
    end_date TIMESTAMP,
    category_id VARCHAR(10),
    subcategory_id VARCHAR(10)
);

SELECT * FROM campaign
-------------------------------------