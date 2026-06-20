# Deployment

## Frontend

Deploy `apps/web` to Vercel.

Set environment variables:

- NEXT_PUBLIC_SUPABASE_URL
- NEXT_PUBLIC_SUPABASE_ANON_KEY
- SUPABASE_SERVICE_ROLE_KEY

## Backend

Create a Supabase project and apply migrations in `supabase/migrations`.

## Worker

Build and run the FFmpeg worker:

```bash
docker compose up worker
```

The worker should poll render jobs and upload exports to Supabase Storage.
