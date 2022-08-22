#!/bin/sh

set -eux


createdb omdb

psql -v ON_ERROR_STOP=1 -X omdb <<EOF
SET ROLE postgres;
CREATE EXTENSION IF NOT EXISTS pg_trgm;
CREATE EXTENSION IF NOT EXISTS tsm_system_rows;
\i /omdb/omdb.sql
EOF

createdb recipeguru

psql -v ON_ERROR_STOP=1 -X recipeguru <<EOF
SET ROLE postgres;
\i /omdb/recipeguru.sql
EOF