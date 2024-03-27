# align-equals

`align-equals`는 등호에 맞춰 코드의 열을 정렬하는 프로그램입니다. 예를 들어 아래와 같은 코드가 있을 때

```
address = "192.168.0.44"
port = 22
hostname = "wind"
```

이 프로그램을 이용하면 코드를 아래처럼 등호에 맞춰 정렬할 수 있습니다.

```
address  = "192.168.0.44"
port     = 22
hostname = "wind"
```

vim에서 비쥬얼 모드로 정렬하고 싶은 코드를 선택한 후에 아래처럼 입력하면 해당 코드만 정렬할 수 있습니다.

```
:!align-equals
```

## 설치 방법

이 코드를 빌드하려면 하스켈 컴파일러 GHC와 프로젝트 관리 도구 cabal이 있어야 합니다. [GHCup](https://www.haskell.org/ghcup/)을 이용하면 쉽게 설치할 수 있습니다.

터미널에서 아래와 같이 입력하면 설치할 수 있습니다.

```
git clone https://github.com/nattybear/align-equals
cd align-equals
cabal install align-equals
```

## 출처

이 코드는 가브리엘라님이 아래 블로그에 적은 코드를 코딩 컨벤션만 조금 바꿔서 그대로 적은 것입니다.

[Detailed walkthrough for a beginner Haskell program](https://www.haskellforall.com/2018/10/detailed-walkthrough-for-beginner.html)

이 코드의 원래 저자는 [Gabriella Gonzalez](https://linktr.ee/gabriella439)님입니다.

출처로 적은 블로그 글의 라이선스는 다음과 같습니다.

[Creative Commons Attribution 4.0 International License](https://creativecommons.org/licenses/by/4.0/deed.ko)
