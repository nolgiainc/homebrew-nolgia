class Nolgia < Formula
  desc "CLI for the Nolgia generative media platform (image, audio, video)"
  homepage "https://nolgia.ai"
  version "0.3.8"
  license "MIT"

  on_macos do
    url "https://github.com/nolgiainc/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-apple-darwin"
    sha256 "18094ed0aab942ae9179ab2bb15cd8707ad8d1edaeb5d43b9561a55bcfd9c947"
  end

  on_linux do
    url "https://github.com/nolgiainc/nolgia-cli/releases/download/v#{version}/nolgia-x86_64-unknown-linux-gnu"
    sha256 "2476c25ba5e62ede9c73da38b41801aa534480357724a04f2dcc75722bc609e2"
  end

  def install
    binary = Dir["nolgia-*"].first
    bin.install binary => "nolgia"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/nolgia --version")
  end
end
