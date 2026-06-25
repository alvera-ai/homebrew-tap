class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.12.1"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1/alvera-0.12.1-darwin-arm64.tar.gz"
      sha256 "ed9721348544ce96f86093e1e4b0ad7932788a2e69daf5bbe42ed11708b2b4d4"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1/alvera-0.12.1-darwin-x64.tar.gz"
      sha256 "c798598dc9fa69bb340adde49ef53138c386cb67bf411dd55f8361c0a897c223"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1/alvera-0.12.1-linux-x64.tar.gz"
      sha256 "708ae7de7d675bafc1cafb8f1e81e999014b3257e2bb857bc9d220424f81ce6f"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1/alvera-0.12.1-linux-arm64.tar.gz"
      sha256 "6ea654bf65d078ed04cbc5a8346077b4afcaa20e6914d1e2899943db2c9b11fa"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
