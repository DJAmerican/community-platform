BEGIN;

CREATE TABLE contributor_activity (
    github_event_id text NOT NULL PRIMARY KEY,
    contributor_id integer NOT NULL REFERENCES github_user(id) ON DELETE RESTRICT,
    github_repo_id integer NOT NULL REFERENCES github_repo(id) ON DELETE RESTRICT,
    contribution_type text NOT NULL,
    contribution_date timestamp with time zone  NOT NULL 
);

COMMIT;