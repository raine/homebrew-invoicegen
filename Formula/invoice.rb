class Invoice < Formula
  desc "Render invoices from YAML to PDF using Typst"
  homepage "https://github.com/raine/invoice"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/raine/invoice/releases/download/v0.1.0/invoice-darwin-arm64.tar.gz"
      sha256 "7d675479c978dbb486925394d230b9d63e515ae14d982f2fcd6c6e56cc387772"
    else
      url "https://github.com/raine/invoice/releases/download/v0.1.0/invoice-darwin-amd64.tar.gz"
      sha256 "cc69bc0721bef13f6e69d37fdb6c5815ed79a97527e28a33a0af526b7110afd9"
    end
  end

  on_linux do
    url "https://github.com/raine/invoice/releases/download/v0.1.0/invoice-linux-amd64.tar.gz"
    sha256 "007b5db05e076cac2451fc9a67ecde90fcba3475eb9e6b3ce71bca011d5ab7e7"
  end

  def install
    bin.install "invoice"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/invoice --version")
  end
end
