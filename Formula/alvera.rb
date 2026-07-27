class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.15.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0/alvera-0.15.0-darwin-arm64.tar.gz"
      sha256 "4098b581c0562ae8cbd3794fced43b0831f3666c7683186340914277f756d128"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0/alvera-0.15.0-darwin-x64.tar.gz"
      sha256 "9df0279ed8f8f3ecd3a5438e44772f20c11eed998f33894ab392f4f3834f913a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0/alvera-0.15.0-linux-x64.tar.gz"
      sha256 "870b395f38d14139683a01479b6ce107698cff960d49c8c9ad00a73ccf94c8ca"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.15.0/alvera-0.15.0-linux-arm64.tar.gz"
      sha256 "9e07b39eeb2eb11c517fd8c46a1faf9331a6cdd9af8fdeeff25838c30c39c2fc"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
