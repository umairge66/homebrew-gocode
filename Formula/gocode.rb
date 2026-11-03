class Gocode < Formula
  desc "Agentic coding assistant for your terminal, written in Go"
  homepage "https://github.com/umairge66/gocode"
  version "0.1.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.5/gocode-0.1.5-darwin-arm64.tar.gz"
      sha256 "2ecaedb7f8c17553938d22668f364b5733278f954917bb64d2c292b4e62eed38"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.5/gocode-0.1.5-darwin-amd64.tar.gz"
      sha256 "3a7073048510cd9606561d1a1f8043c6f4b7d1543635560b8da9caedfdf95329"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.5/gocode-0.1.5-linux-arm64.tar.gz"
      sha256 "8d0182a4f249a84304983805212c772ca4acd2b88b5d34a46842b4d9b89716dc"
    end
    on_intel do
      url "https://github.com/umairge66/gocode/releases/download/v0.1.5/gocode-0.1.5-linux-amd64.tar.gz"
      sha256 "da85659a430f0c5fdcd159625b1a1bc3ceff2caaf6b18535c4cd1a985f4a1c6c"
    end
  end

  def install
    bin.install "gocode"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/gocode --version")
  end
end
