class Invoicegen < Formula
  desc "Render invoices from YAML to PDF using Typst"
  homepage "https://github.com/raine/invoicegen"
  version "0.1.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/invoicegen/releases/download/v0.1.1/invoicegen-darwin-arm64.tar.gz"
      sha256 "a14f4a9e11387bb1ea0b1f3cb59c33b0470bf4bb5af75bfb306f5c2f8d4faa4e"
    else
      url "https://github.com/raine/invoicegen/releases/download/v0.1.1/invoicegen-darwin-amd64.tar.gz"
      sha256 "6ab419d9d92af24d842edaef2293863bc0087fd314bb70fb7568e226d9ef6624"
    end
  end

  on_linux do
    url "https://github.com/raine/invoicegen/releases/download/v0.1.1/invoicegen-linux-amd64.tar.gz"
    sha256 "83dda7f9011dc9ec236a001a0ce9359c0dcdab3b8a59f1d4baec57b39635c5af"
  end

  def install
    bin.install "invoicegen"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invoicegen --version")
  end
end
