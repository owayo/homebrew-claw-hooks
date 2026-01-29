class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.1.106"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.1.106/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "abfb72b0e7b4db7838232d6e66da4e7427665e825f92e263d1cc150bf600beb0"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.1.106/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "fda699a8d72a7810510098a00dca3a856a5f94750bd7a8ca36bb8215caa34a24"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.1.106/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3c94d59159deb5adda515de584aff7aa12e54e19b669264a1b7af68fbb8b9b62"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.1.106/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4d16979428ae514f0cd37ddd130130b6c6aab46943cc4647bc598f94e2050509"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
