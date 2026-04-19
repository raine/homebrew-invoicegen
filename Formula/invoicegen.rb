class Invoicegen < Formula
  desc "Render invoices from YAML to PDF using Typst"
  homepage "https://github.com/raine/invoicegen"
  version "0.1.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/invoicegen/releases/download/v0.1.2/invoicegen-darwin-arm64.tar.gz"
      sha256 "92d0df04452e135d08499daa18c387efc2dc06373e699470b354d626b733637e"
    else
      url "https://github.com/raine/invoicegen/releases/download/v0.1.2/invoicegen-darwin-amd64.tar.gz"
      sha256 "5056231c00d7c2cac364a70ec1f0361eb78f630f6e5403da141a6541139380aa"
    end
  end

  on_linux do
    url "https://github.com/raine/invoicegen/releases/download/v0.1.2/invoicegen-linux-amd64.tar.gz"
    sha256 "91af7b459bc4a000d594eb8db84fb7bcd0a624c243cd4955511e935980306cc8"
  end

  def install
    bin.install "invoicegen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invoicegen --version")
  end
end
