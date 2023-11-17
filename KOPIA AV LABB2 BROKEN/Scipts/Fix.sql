-- Drop the existing 'Latest' column if the table has already been created:
ALTER TABLE Champions DROP COLUMN Latest;

-- Add the new 'ReleaseDate' column:
ALTER TABLE Champions ADD ReleaseDate DATE NOT NULL;