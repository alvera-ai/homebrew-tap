# Prerelease channel for the alvera CLI. keg_only so it installs
# alongside the stable alvera formula without clobbering it; point the
# alvera command at this build on demand with
#   brew link --overwrite --force alvera-next
# and revert with
#   brew unlink alvera-next
# Updated by release-cli.yml on every prerelease (next dispatch or rc tag).
class AlveraNext < Formula
  desc "Alvera platform CLI (prerelease channel) — point alvera at unstable on demand"
  homepage "https://github.com/alvera-ai/homebrew-tap"
  version "0.12.1-next.gf971893"
  license :cannot_represent

  keg_only "prerelease channel for the stable alvera formula; run 'brew link --overwrite --force alvera-next' to point alvera at it"

  on_macos do
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gf971893/alvera-0.12.1-next.gf971893-darwin-arm64.tar.gz"
      sha256 "d77e8fdd10e39cbfbc52e6fcc674ecf33a12bdf3ca6027d3ba4f223aedea2e11"
    end
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gf971893/alvera-0.12.1-next.gf971893-darwin-x64.tar.gz"
      sha256 "754d710ddff95800fc619168467845bb40ff575adf97397a90ad81da69fc08a0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gf971893/alvera-0.12.1-next.gf971893-linux-x64.tar.gz"
      sha256 "3f04a85471a5bb4f91e94b1d30567e80a2c84319ea3044a34359007a15dcd59f"
    end
    on_arm do
      url "https://github.com/alvera-ai/homebrew-tap/releases/download/v0.12.1-next.gf971893/alvera-0.12.1-next.gf971893-linux-arm64.tar.gz"
      sha256 "d454e4b2cfe793b72135cc951833f70c183339c836cd44d38afd36ce4ca7035a"
    end
  end

  def install
    bin.install "alvera"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/alvera --version")
  end
end
