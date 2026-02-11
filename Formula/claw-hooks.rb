class ClawHooks < Formula
  desc "Hooks CLI for AI coding agents (Claude Code, Cursor, Windsurf)"
  homepage "https://github.com/owayo/claw-hooks"
  version "26.2.104"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.104/claw-hooks-aarch64-apple-darwin.tar.gz"
      sha256 "84a0b51cdd2014736a45406095950ded7112d86da8e624a70fa633555000c244"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.104/claw-hooks-x86_64-apple-darwin.tar.gz"
      sha256 "ff3158da1dbe7d4bc92a4fea459f24acb2ec4ceb425f19c4195ec6607669fcbe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.104/claw-hooks-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dc9c758d6569cd06b87a34c7a377aa3949ae2a95f15b5799db5f7626c44b571b"
    else
      url "https://github.com/owayo/claw-hooks/releases/download/v26.2.104/claw-hooks-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "69f608a9acf428dbb48bd9afe2cd1b1e6e748ff2ae4af3817c777b62afd4b7ed"
    end
  end

  def install
    bin.install "claw-hooks"
  end

  test do
    system "#{bin}/claw-hooks", "--version"
  end
end
