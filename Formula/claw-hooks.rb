class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.103"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.103/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "1639438cf9f21976b5e61db12b1d5bb41044d7875fb748dfd59fb20740d2ddec"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.103/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "d9b8516e0fccddb27efc51e8520c5071696005371c8573d147f63ef1941d58d3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.103/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dca43d837557c95a1584db1de55944539bfa30ea49713fcfba8a77bc39a6ba7b"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.103/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8c4691ac198ff402cd802ebe367fbd3b6b688a286868b16a49774c5752d7faef"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
