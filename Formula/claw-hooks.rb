class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.5.105.tar.gz"
  sha256 "1ff498edabfc2c0f97c289f44c9daa74ca88d2b25a1fed7fb1c76a49a2fe0b43"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.5.105"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "361c11da150aae83765d991959d7e0f161d798c5881b5f43c020c9e4686c7b1d"
    sha256 cellar: :any_skip_relocation, sonoma: "85623aeffc40dd2448b434abbd02a379cf44d5a1e125a6add5cbf235905437e7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c2337ea0c01aa94d4bb3bbad0a529354e0640f0db78768fc071255a63aae2210"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
