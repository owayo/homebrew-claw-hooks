class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.5.101.tar.gz"
  sha256 "ad1d7ae660ee24e63ec58b3187ad9dacb88fe6f815ba65c057a9f8b29c9dbf18"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.5.101"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "0934650b0259bc15124bf191474ec33748e2369481924ebab2f8e19d31553824"
    sha256 cellar: :any_skip_relocation, sonoma: "1030cf1c81fe3e99f1e62378226a10d3015b432422158c013212f0662ca928c7"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d1069096625da7033529f9aeb8685270d1d4493fa668578049b4b5fe802007cf"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
