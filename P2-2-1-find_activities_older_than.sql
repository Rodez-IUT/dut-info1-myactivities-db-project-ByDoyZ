CREATE OR REPLACE FUNCTION find_activities_older_than(
	old_date DATE)
RETURNS SETOF activity AS $$
	SELECT title
	WHERE old_date = creation_date
	RETURNING activity;
	$$
	LANGUAGE SQL;