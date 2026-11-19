class Nolgia < Formula
  desc "CLI for the Nolgia generative media platform (image, audio, video)"
  homepage "https://nolgia.ai"
  version "0.3.6"
  license "MIT"

  on_macos do
    url "https://github.com/nolgiainc/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-apple-darwin"
    sha256 "366960141bef92b017ff1eb8ef841ac908c05155ff7ec14b1966ee8281301e5d"
  end

  on_linux do
    url "https://github.com/nolgiainc/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-unknown-linux-gnu"
    sha256 "b2e0795f44209b12c539b9336f59321692b298c042bce7f700283aab4415dc3d"
  end

  def install
    binary = Dir["nolgia-*"].first
    bin.install binary => "nolgia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nolgia --version")
  end
end
