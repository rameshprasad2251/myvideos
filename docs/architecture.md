# MyVideos Architecture

Frontend: Next.js on Vercel
Backend: Supabase
Rendering: FFmpeg worker service
Storage: Supabase Storage

Pipeline:

Script -> Storyboard -> Assets -> Narration -> Music -> Rendering -> Export

Rendering jobs are asynchronous and report progress back to Supabase.
