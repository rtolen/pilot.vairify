import { Link } from "react-router-dom";

export default function Dashboard() {
  return (
    <div className="min-h-screen bg-background flex items-center justify-center px-4">
      <div className="text-center space-y-3">
        <p className="text-muted-foreground">
          Dashboard is coming soon. Stay tuned for your new safety status screen.
        </p>
        <Link
          to="/feed"
          className="text-primary font-semibold hover:underline"
        >
          Go To My Feed
        </Link>
      </div>
    </div>
  );
}
