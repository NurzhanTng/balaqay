-- ============================================================
-- KidGrow — Create Database
-- Run: psql -U postgres -f scripts/create-db.sql
-- ============================================================

SELECT 'CREATE DATABASE kidgrow'
WHERE NOT EXISTS (
    SELECT FROM pg_database WHERE datname = 'kidgrow'
)\gexec

\connect kidgrow

-- Enable UUID extension
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

\echo 'Database kidgrow ready ✓'