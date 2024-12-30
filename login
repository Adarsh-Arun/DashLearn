import Link from 'next/link'
import { Button } from "@/components/ui/button"
import { Input } from "@/components/ui/input"
import { GraduationCap, ArrowRight, BookOpen, Users, TrendingUp } from 'lucide-react'

export default function LandingPage() {
  return (
    <div className="flex flex-col min-h-screen">
      <header className="px-4 lg:px-6 h-14 flex items-center">
        <Link className="flex items-center justify-center" href="#">
          <GraduationCap className="h-6 w-6" />
          <span className="ml-2 text-2xl font-bold">EduDrop</span>
        </Link>
        <nav className="ml-auto flex gap-4 sm:gap-6">
          <Link className="text-sm font-medium hover:underline underline-offset-4" href="#">
            Features
          </Link>
          <Link className="text-sm font-medium hover:underline underline-offset-4" href="#">
            About
          </Link>
          <Link className="text-sm font-medium hover:underline underline-offset-4" href="#">
            Contact
          </Link>
        </nav>
      </header>
      <main className="flex-1">
        <section className="w-full py-12 md:py-24 lg:py-32 xl:py-48">
          <div className="container px-4 md:px-6">
            <div className="grid gap-6 lg:grid-cols-[1fr_400px] lg:gap-12 xl:grid-cols-[1fr_600px]">
              <div className="flex flex-col justify-center space-y-4">
                <div className="space-y-2">
                  <h1 className="text-3xl font-bold tracking-tighter sm:text-5xl xl:text-6xl/none">
                    Empowering Students, Reducing Dropouts
                  </h1>
                  <p className="max-w-[600px] text-muted-foreground md:text-xl">
                    EduDrop is revolutionizing education by providing personalized learning paths, 
                    AI-driven resources, and collaborative tools to boost student engagement and success.
                  </p>
                </div>
                <div className="flex flex-col gap-2 min-[400px]:flex-row">
                  <Link href="/dashboard">
                    <Button className="inline-flex items-center justify-center">
                      Get Started <ArrowRight className="ml-2 h-4 w-4" />
                    </Button>
                  </Link>
                  <Link href="#learn-more">
                    <Button variant="outline">Learn More</Button>
                  </Link>
                </div>
              </div>
              <div className="flex flex-col justify-center space-y-4">
                <div className="space-y-2">
                  <h2 className="text-2xl font-bold">Login</h2>
                  <p className="text-muted-foreground">
                    Access your personalized learning experience
                  </p>
                </div>
                <div className="space-y-4">
                  <div className="space-y-2">
                    <label htmlFor="email">Email</label>
                    <Input id="email" placeholder="m@example.com" required type="email" />
                  </div>
                  <div className="space-y-2">
                    <label htmlFor="password">Password</label>
                    <Input id="password" required type="password" />
                  </div>
                  <Button className="w-full">Login</Button>
                </div>
              </div>
            </div>
          </div>
        </section>
        <section id="learn-more" className="w-full py-12 md:py-24 lg:py-32 bg-muted">
          <div className="container px-4 md:px-6">
            <div className="grid gap-6 lg:grid-cols-3 lg:gap-12">
              <div className="flex flex-col justify-center space-y-4">
                <BookOpen className="h-10 w-10" />
                <h2 className="text-2xl font-bold">Personalized Learning</h2>
                <p className="text-muted-foreground">
                  Tailored learning paths adapt to each student's unique needs and pace.
                </p>
              </div>
              <div className="flex flex-col justify-center space-y-4">
                <Users className="h-10 w-10" />
                <h2 className="text-2xl font-bold">Collaborative Study</h2>
                <p className="text-muted-foreground">
                  Join virtual study rooms and learn together with peers.
                </p>
              </div>
              <div className="flex flex-col justify-center space-y-4">
                <TrendingUp className="h-10 w-10" />
                <h2 className="text-2xl font-bold">Performance Analytics</h2>
                <p className="text-muted-foreground">
                  Track progress and identify areas for improvement with detailed insights.
                </p>
              </div>
            </div>
          </div>
        </section>
      </main>
      <footer className="flex flex-col gap-2 sm:flex-row py-6 w-full shrink-0 items-center px-4 md:px-6 border-t">
        <p className="text-xs text-muted-foreground">© 2024 EduDrop. All rights reserved.</p>
        <nav className="sm:ml-auto flex gap-4 sm:gap-6">
          <Link className="text-xs hover:underline underline-offset-4" href="#">
            Terms of Service
          </Link>
          <Link className="text-xs hover:underline underline-offset-4" href="#">
            Privacy
          </Link>
        </nav>
      </footer>
    </div>
  )
}