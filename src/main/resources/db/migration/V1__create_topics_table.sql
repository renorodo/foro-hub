-- V1__create_topics_table.sql
-- Minimal topics table

CREATE TABLE IF NOT EXISTS topics (
  id BIGINT NOT NULL AUTO_INCREMENT,
  title VARCHAR(200) NOT NULL,
  message TEXT NOT NULL,
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
  status VARCHAR(20) NOT NULL,
  author VARCHAR(100) NOT NULL,
  course VARCHAR(100) NOT NULL,
  PRIMARY KEY (id),
  KEY idx_topics_status (status),
  KEY idx_topics_created_at (created_at)
) ENGINE=InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
