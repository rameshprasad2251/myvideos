create type app_role as enum ('owner','admin','editor','viewer');

create table profiles (
 id uuid primary key references auth.users(id) on delete cascade,
 full_name text,
 role app_role not null default 'viewer',
 created_at timestamptz default now()
);

create table projects (
 id uuid primary key default gen_random_uuid(),
 owner_id uuid references profiles(id),
 title text not null,
 status text default 'draft',
 created_at timestamptz default now()
);

alter table profiles enable row level security;
alter table projects enable row level security;

create policy "users view own profile" on profiles for select using (auth.uid() = id);
create policy "owners manage projects" on projects for all using (auth.uid() = owner_id);
