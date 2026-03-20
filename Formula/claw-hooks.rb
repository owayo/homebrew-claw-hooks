class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.3.106.tar.gz"
  sha256 "e1018c79dc69f6c821114c848a8a2172a44fbaf14105187a859f638846c41928"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.3.106"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "7a95514b9509d8508c129b3ab6b10bde04ffa14f31fd32af0e20d86e0fa6a6e9"
    sha256 cellar: :any_skip_relocation, sonoma: "4e30de868b8f6ffc646e7d0371071d4fca97e4adc3369a261c1415ebd6d0b70b"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c44e54041b789feefe9a0e3a23f0dcd635d510e54c91f2babc4954d8e8807295"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
