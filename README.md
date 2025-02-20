# homebrew-face-mosaic

動画に写っている顔にぼかしを入れます

## setup comamnd

```bash
% poetry -V
Poetry (version 2.0.1)
% poetry init

This command will guide you through creating your pyproject.toml config.

Package name [homebrew-face-mosaic]:  
Version [0.1.0]:  
Description []:  
Author [take-takashi <take.t.public@gmail.com>, n to skip]:  
License []:  MIT
Compatible Python versions [>=3.13]:  >=3.13,<3.14

Would you like to define your main dependencies interactively? (yes/no) [yes] no
Would you like to define your development dependencies interactively? (yes/no) [yes] no
Generated file

[project]
name = "homebrew-face-mosaic"
version = "0.1.0"
description = ""
authors = [
    {name = "take-takashi",email = "take.t.public@gmail.com"}
]
license = {text = "MIT"}
readme = "README.md"
requires-python = ">=3.13,<3.14"
dependencies = [
]


[build-system]
requires = ["poetry-core>=2.0.0,<3.0.0"]
build-backend = "poetry.core.masonry.api"


Do you confirm generation? (yes/no) [yes]

% pyenv local 3.13.1
% poetry env use $(pyenv which python)
% poetry env info | grep -A 5 "Virtualenv" | grep "Python:" | awk '{print $2}'
3.13.1
% poetry shell
% deactivate
```

## poetry add

```bash
% poetry add ultralytics opencv-python torch torchvision ffmpeg-python "numpy<=2.1.1"
% poetry add -D pyinstaller taskipy
```

## pyproject.toml setting

```bash
% echo -n '
[tool.taskipy.tasks]
build = "pyinstaller --onefile --clean --add-data 'assets:assets' --name 'face-mosaic' main.py"
' >> pyproject.toml
```

## run command

```bash
% poetry run python main.py input.mp4 output.mp4
```

## build command

```bash
# buildしたら「dist」ディレクトリにmain(app)が生成される
# パラメータ等修正の時はpyproject.tomlの[tool.taskipy.tasks]を修正すること
% poetry run task build
```

## memo

- [ultralytics/ultralytics: Ultralytics YOLO11 🚀](https://github.com/ultralytics/ultralytics)  
  YOLOのモデルDL
- [akanametov/yolo-face: YOLO Face 🚀 in PyTorch](https://github.com/akanametov/yolo-face?tab=readme-ov-file)  
  YOLOのモデルDL（顔検出）
