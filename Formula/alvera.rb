class Alvera < Formula
  desc "Alvera platform CLI — manifest-driven provisioning + spec conduit"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.13.0"
  license :cannot_represent

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0/alvera-0.13.0-darwin-arm64.tar.gz"
      sha256 "f8ecf1e111b1349b502ce67ed7ebb311ef04853f5b6f63c392c7200e000d1ca4"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0/alvera-0.13.0-darwin-x64.tar.gz"
      sha256 "d523765aea1e839e45d768f0a944453c8a2d8dbc9fc7de0ea8f69a282780358e"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0/alvera-0.13.0-linux-x64.tar.gz"
      sha256 "6d05cf8f8dbff7ad7b1ec6096fdec36af0ad275d15fdf9573ac72223fe80a07c"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.13.0/alvera-0.13.0-linux-arm64.tar.gz"
      sha256 "25d25fd0f5eb3d03d366f30e815a43c1e84dfe7c2d3ace7884843bb224280d0e"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
