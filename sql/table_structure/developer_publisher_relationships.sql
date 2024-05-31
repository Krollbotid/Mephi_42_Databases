CREATE TABLE DeveloperPublisherRelationships (
    relationship_id SERIAL PRIMARY KEY,
    developer_id INT NOT NULL,
    publisher_id INT NOT NULL,
    relationship_type VARCHAR(50),
    start_date DATE,
    end_date DATE
);
