export default function HomePage() {
  return (
    <main className="max-w-6xl mx-auto p-10">
      <h1 className="text-5xl font-bold mb-6">MyVideos</h1>
      <p className="text-xl text-neutral-400 mb-8">Create cinematic AI videos from stories and scripts.</p>
      <div className="grid gap-4 md:grid-cols-4">
        {['Storyboard','Characters','Narration','Export'].map((item)=><div key={item} className="rounded-xl border border-neutral-800 p-4">{item}</div>)}
      </div>
    </main>
  )
}
