class Nolgia < Formula
  desc "CLI for the Nolgia generative media platform (image, audio, video)"
  homepage "https://nolgia.ai"
  version "0.1.0"
  license "MIT OR Apache-2.0"

  on_macos do
    url "https://github.com/nolgiacorp/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-apple-darwin"
    sha256 "PLACEHOLDER_MAC_SHA"
  end

  on_linux do
    url "https://github.com/nolgiacorp/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-unknown-linux-gnu"
    sha256 "PLACEHOLDER_LINUX_SHA"
  end

  def install
    binary = Dir["nolgia-*"].first
    bin.install binary => "nolgia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nolgia --version")
  end
end
