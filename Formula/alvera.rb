class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.21.2"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.2/alvera-0.21.2-darwin-arm64.tar.gz"
      sha256 "fab07823b97f43c401371a313f754552074e23a3e65faa421a8d4ddc8e3ac9f0"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.2/alvera-0.21.2-darwin-x64.tar.gz"
      sha256 "26759a66c54e05140f8fd51c66e7c0e671454392f614b6ee7bc45c1c506c59f3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.2/alvera-0.21.2-linux-x64.tar.gz"
      sha256 "7ff0bcd8c6b8205e6070ca3ac3a7f2784521704e661034b1452b45a8ba369d56"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.21.2/alvera-0.21.2-linux-arm64.tar.gz"
      sha256 "65041f03c77720f90dd61d569def9387494d7f8c344fcbe2b9cddc1772045916"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
