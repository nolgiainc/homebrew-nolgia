class Nolgia < Formula
  desc "CLI for the Nolgia generative media platform (image, audio, video)"
  homepage "https://nolgia.ai"
  version "0.2.26"
  license "MIT"

  on_macos do
    url "https://github.com/nolgiainc/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-apple-darwin"
    sha256 "9a51792fcc39bddcd9697617c648ad90f8fa9b039ebebae9c5f7b0263ab33f36"
  end

  on_linux do
    url "https://github.com/nolgiainc/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-unknown-linux-gnu"
    sha256 "c6feefd6da21294a299a80761197b0a4ced7a66b37109bf9336ab3f0a51359aa"
  end

  def install
    binary = Dir["nolgia-*"].first
    bin.install binary => "nolgia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nolgia --version")
  end
end
