# Prerelease channel for the alvera CLI. keg_only so it installs
# alongside the stable alvera formula without clobbering it; point the
# alvera command at this build on demand with
#   brew link --overwrite alvera-next
# and revert with
#   brew unlink alvera-next
# Updated by release-cli.yml on every prerelease (next dispatch or rc tag).
class AlveraNext < Formula
  desc "Alvera platform CLI (prerelease channel) — point alvera at unstable on demand"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.12.1-next.0420540"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.0420540/alvera-0.12.1-next.0420540-darwin-arm64.tar.gz"
      sha256 "b0c0269fe5d9facd72a08bee99032048fb7e139e509831144ecf65408fada7ee"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.0420540/alvera-0.12.1-next.0420540-darwin-x64.tar.gz"
      sha256 "db0b5bd58cf0e5b18faf5a1ccc927bd3db65bbec93b38b06397010fc1ea6e8da"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.0420540/alvera-0.12.1-next.0420540-linux-x64.tar.gz"
      sha256 "8af5757bbf755af027bfa83553ee7041443b990ca79cc252df6c8466fae6742b"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.0420540/alvera-0.12.1-next.0420540-linux-arm64.tar.gz"
      sha256 "2aefcb0efc6743ed7f593f9e37dfbc76a1d8f17ea167fa439a0694eb4573fcea"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
