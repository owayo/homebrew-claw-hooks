class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  url "https://github.com/owayo/claw-hooks/archive/refs/tags/v26.5.100.tar.gz"
  sha256 "ef8d43647b4b1dc248b985fc8c344895cf8c09b76ef8a92ea7b6275a92524278"
  license "MIT"

  bottle do
    root_url "https://github.com/owayo/claw-hooks/releases/download/v26.5.100"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f42c03db07d7ba4c528a590b71888ffce5e30faddf35e9e6f0e9a1689597c0be"
    sha256 cellar: :any_skip_relocation, sonoma: "51b40bc1d41915635acccc901335f50095379f510cc808d17f4d84c140f4fdf4"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "c5fdf78d9ef5ec0e2bed45bca0222beea696f3ef31a454e47690dd41e751265d"
  end

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
