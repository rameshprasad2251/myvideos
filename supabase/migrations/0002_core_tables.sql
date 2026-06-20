create table scenes (
 id uuid primary key default gen_random_uuid(),
 project_id uuid references projects(id) on delete cascade,
 scene_order int not null,
 description text,
 duration_seconds int default 5
);

create table exports (
 id uuid primary key default gen_random_uuid(),
 project_id uuid references projects(id) on delete cascade,
 status text default 'queued',
 output_url text
);

alter table scenes enable row level security;
alter table exports enable row level security;

create policy "project owners manage scenes" on scenes for all using (
 exists(select 1 from projects p where p.id = project_id and p.owner_id = auth.uid())
);
