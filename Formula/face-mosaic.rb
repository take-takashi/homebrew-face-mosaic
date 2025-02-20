class FaceMosaic < Formula
    desc "撮影動画にモザイク編集をかけるCLIツール"
    homepage "https://github.com/take-takashi/homebrew-face-mosaic"
    url "https://github.com/take-takashi/homebrew-face-mosaic/releases/download/0.1.4/face-mosaic.tar.gz"
    sha256 "3c9491748cf3d705bcad6a62aec75745aeb501dafc95e3468b5953d0c6ed709a"
    license "MIT"
    version "0.1.4"

    def install
        # PyInstallerで生成された実行ファイル（例：face-mosaic）があると仮定
        bin.install "face-mosaic"
    end

    test do
        # バージョン確認など、簡単な動作確認テストを記述
        system "#{bin}/face-mosaic"
    end
end
