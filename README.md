# MyVideos

MyVideos is an AI-powered video generation platform that transforms stories and scripts into cinematic MP4 videos.

## Core Workflow

Script → Storyboard → Character References → Scene Keyframes → Scene Videos → Narration → Music → Subtitles → Final MP4

## Planned Stack

- Next.js 15
- TypeScript
- Tailwind CSS
- Supabase
- Vercel
- FFmpeg workers

## Roles

- Owner
- Admin
- Editor
- Viewer

## Monorepo Structure

```text
apps/
  web/      # Next.js frontend
  worker/   # FFmpeg rendering worker
packages/
  ui/
  shared/
supabase/
  migrations/
```

## Default Preferences

- Realistic visuals
- Female narration
- 1080p landscape output
- Burned-in subtitles
- Cinematic adventure soundtrack
