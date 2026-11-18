cask "miyagi" do
  arch arm: "arm64", intel: "x64"

  version "0.19.0"
  sha256 arm:   "78378b8c480f07765b924dddd43a6be296bee35ba06e89a5f78a01d946d3e175",
         intel: "17fbf9191cc5c1a4bc84a691aae0ee099ebb10aab781ba8d860b3336c8b3fe84"

  url "https://github.com/falkenslab/miyagi/releases/download/v#{version}/miyagi-#{arch}.dmg"
  name "miyagi"
  desc "AI teaching assistant for teachers, with or without a Moodle course"
  homepage "https://falkenslab.github.io/miyagi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "miyagi.app"

  # Only Electron's caches: the teacher's subjects and settings live in ~/.miyagi and are never removed.
  zap trash: [
    "~/Library/Application Support/miyagi",
    "~/Library/Preferences/dev.falkenslab.miyagi.plist",
    "~/Library/Saved Application State/dev.falkenslab.miyagi.savedState",
  ]

  # The app is only ad hoc signed (no Apple Developer ID yet): the caveats say how to open it.
  caveats <<~EOS
    miyagi isn't signed with an Apple Developer ID yet. If macOS won't open it,
    or says it is damaged, remove the download quarantine once:

      xattr -dr com.apple.quarantine /Applications/miyagi.app

    Your subjects are kept in ~/.miyagi, and uninstalling (even with --zap)
    never deletes them.
  EOS
end
