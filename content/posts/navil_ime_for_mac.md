---
title: "나빌입력기for맥"
date: 2022-10-21T00:28:40-07:00
draft: false
---

업무상 맥북을 사용해야 해서 318Na 자판을 맥OS에서 동작하게 만들어야 했습니다. 그러지 않으면 할 줄 아는 한글 자판인 두벌식을 사용하거나 390, 391 등 널리 알려진 세벌식 자판을 공부해야 했지요. 다행히 맥OS에는 구름입력기라는 매우 훌륭한 한글 입력기가 오픈 소스로 있었습니다. 게다가 구름 입력기는 libhangul을 오토마타로 이용하고 있었지요. 저는 이미 libhangul을 살짝 고쳐서 리눅스와 윈도우에서 사용하고 있었으므로 맥에서도 구름 입력기로 318Na 자판을 간단히 이식할 수 있을 줄 알았습니다.

그러나 구름입력기를 빌드하지 못했습니다. 제가 맥OS의 개발 환경에 익숙하지 않아서 그런지 그냥 단순히 소스 코드 받아서 빌드하는 것으로는 빌드가 안되더군요. 의존성이 있는 패키지를 받아서 연결해야하는데 잘 안됐습니다. 그래서 그냥 입력기를 새로 만드는건 얼마나 어려울지 대충 검색해 봤습니다. 대충 찾아보니 맥OS에서 입력기 만드는 일은 윈도우에서 만드는 것보다 훨씬 쉬워 보였습니다. (다 만들고 나서 비교해 보니 확실히 맥OS 입력기가 윈도우보다 쉽습니다.) 적당히 제가 직접 만들 수 있을 것 같다는 느낌이 들었습니다. 그래서 만들기로 결심했습니다.

## 공부

일단 저는 맥OS에서 xcode 사용법도 모릅니다. object-c나 swift 역시 문법도 모르는 상태였죠. 그래서 swift 공부하는 책 중에 평이 그나마 괜찮아 보이는 책을 두 권 샀습니다. 그런데 두 권 모두 iOS에서 iOS 용 앱 개발하는 내용을 설명하더군요. 내가 원하는건 맥OS 데스크탑 개발인데… 그래도 뭐 xcode 사용법이나 swift 문법은 같을테고 UIkit이든 Appkit이든 프레임 워크 사용법도 비슷하겠지라고 생각했습니다. 무엇보다 저는 IMkit(Input Method Kit)을 주로 쓸 것이거든요. 애플은 자기네 SW 개발 프레임워크에 어쩌구저쩌kit이라고 이름을 붙인다는 것을 처음 알았습니다.

이때까지만 해도 swift라는 언어에 대해 이름만 알았지 문법이건 특징이건 아무것도 몰랐었습니다. 그리고 swiftUI니 스토리보드니 하는게 차이가 뭔지 뭐가 뭔지도 하나도 몰랐었습니다. 그런데 지금은 대충 구분도 할 줄 알고 개념도 알게 되었습니다. 뭐 이 정도만 해도 부수적으로 얻은 지식으로는 꽤나 값어치있는 지식이라고 생각합니다.

![](/images/2022/97615537ae69a873983c926253af634beb6e8e27.jpeg)

회사에서 지급한 업무용 맥북에서 318Na 자판을 쓰기 위해 한글 입력기를 만들려고 M2 맥북에어를 지르고 공부 시작하던 첫 날에 찍은 사진입니다.

swift 문법은 공식 문서와 여기저기 고마운 분들이 정리한 블로그 글 읽으니 제가 필요한 만큼은 대충 알것 같아서 하루 반 정도 공부했습니다. 프로그래밍 언어들의 문법이야 아예 태생이 다른 함수형 언어들이 아닌 이상 다 비슷비슷해서 할 줄 아는 프로그래밍 언어가 서너개 이상 된다면 새로운 문법은 금방 익힙니다. 만약 까먹으면 그때 그때 검색하면 되니까요.

애플 cocoa 프레임워크에서 클래스 상속 관계와 기본적으로 사용해야 하는 클래스의 특징 같은 것들도 대충 일주일 정도 공부했습니다. xcode 사용법도 일주일 정도 해 보니 어느 정도 구조가 눈에 들어왔습니다. 그렇게 책 보고 공부하는 것은 한 2주 정도 시간을 투입했습니다.

## 검색

맥에서 입력기를 만드는 방법은 구글링하면 서 너개 정도 나옵니다. 실제 검색 결과는 더 많지만 이 서너개 정도 나오는 문서를 베낀 문서들이 대부분입니다. 그나마 이 서너개 문서들도 내용이 거의 동일합니다. 가장 기본적인 코드 구성 방법과 프로젝트 설정 방법만 설명하고 있죠. 그래도 가장 중요한 내용이긴 합니다. 그래서 그대로 따라서 프로젝트를 구성하고 코드를 작성하고 빌드해서 앱 패키지 파일을 생성하고 입력기를 인스톨해 봅니다. 그런데 입력기가 동작하지 않더라구요. 가장 단순한 동작만 하는 입력기인데도요.

원인은 입력기를 새로 설치하고 적용하려면 최소한 로그아웃, 로그인을 하거나 재부팅을 해야 한다는 것이었습니다. 그래도 유닉스 기반의 맥인데 그냥 되겠지라고 생각한 것이 맥OS를 너무 과대 평가 한 것이었습니다. 로그아웃, 로그인하니 그제서야 샘플로 만든 입력기가 동작하더군요. 이걸 알아내는데 전체 개발 기간 중에 가장 많은 시간을 소모했습니다… 정작 문서에는 로그아웃, 로그인을 다시 하라고 안 써 있었거든요.

그리고 나서 조금 더 자세한 예제 코드를 찾아 깃허브에서 검색을 시도했습니다. 꼭 한글 입력기가 아니어도 상관없으니 어느 정도 더 많이 구현한 예제 코드가 필요했거든요. 물론 이미 잘 구현되어서 훌륭히 동작하는 구름입력기도 오픈 소스로 공개되어 있었으나 이 시점에서 제게 구름입력기 소스 코드는 너무 양이 많고 복잡했습니다.

저는 윈도우에서 입력기를 만들어본 경험이 있었기 때문에 딱 필요한 요소만 구현에 넣으려면 무엇이 있어야 하는지 알고 있었거든요. 어차피 입력기야 윈도우든 맥이든 핵심 요소는 같습니다. 제가 필요한 정보는 이 핵심 요소를 어떻게 구현하는지 였습니다. 구름입력기 소스 코드에서 찾으려고 하니 눈에 잘 들어오지 않았습니다.

## 샘플

적당한 레퍼런스 입력기 코드를 깃허브에서 찾았습니다. 다만 코드가 object-c 였습니다. 그래도 API의 이름은 swift나 object-c나 같았기 때문에 잘 참고해서 샘플 코드를 만들었습니다. 이 샘플 입력기를 디버깅하면서 비로소 구름입력기의 소스 코드 구조를 이해할 수 있었습니다. 이렇게 했으니까 구름입력기 코드를 이해할 수 있었겠죠. 아마 그냥 눈으로만 이해하려고 했다면 중간에 포기하고 말았을 것입니다.

구름입력기 소스 코드를 이해하게 되면서 구름입력기에 대해 놀라움을 느꼈습니다. 애플 공식 문서나 인터넷 어디에서도 찾을 수 없었던 IMkit 사용법을 구름입력기에는 구현이 있었습니다. 정말 신기했습니다. 구름입력기 개발자님은 저런걸 어떻게 알았을까.

샘플 입력기로 입력을 한글로 변환해서 화면에 출력하는 기본 구조를 만들었습니다.

## 한글 오토마타

한글 오토마타는 꽤 쉽습니다. 학교에서 배우는 오토마타 이론대로 유한 상태 머신으로 구현할 수도 있고 유한 상태 머신의 개념을 사르르 녹여서 그냥 if-else 구문으로도 훌륭하게 구현 해 낼 수 있습니다. 저는 당연히 처음에 유한 상태 머신으로 구현했습니다. 그런데 이 구현이 제가 기대했던것보다 가독성이 떨어지더군요. 그리고 가독성을 개선하려고 코드를 고칠 수록 굳이 명시적으로 상태와 상태 처리 코드를 분리하지 않아도 충분히 같은 기능을 하도록 만들 수 있다는 것을 알게 됐습니다.

최종적으로 사용자 입력 시퀀스를 따로 저장하고 매번 입력 시퀀스를 순서대로 읽으면서 글자를 조합하는 형태로 오토마타를 구현했습니다. 아무래도 사용자 입력이 들어올때마다 상태 머신을 변경하면서 한글 글자 조합을 유지하는 전통적 형태의 한글 오토마타가 더 빠르고 효율적이겠지만, 요즘 컴퓨터가 얼마나 빠릅니까. 그리고 사용자 입력이 빨라봐야 얼마나 빠릅니까. 조금 느리게 구현해도 디버깅과 테스트가 쉽고 가독성이 좋은 코드가 더 좋은 선택이라고 판단했습니다. 성능은 하드웨어가 모두 해결해 줄 것입니다.

저는 사실 318Na 자판만 사용할 수 있으면 나머지는 상관없습니다. 그래서 나빌입력기 for 맥에서도 318Na를 제외한 다른 한글 자판은 구현할 생각이 없었습니다. 윈도우의 나빌입력기에서 두벌식을 포함한 다른 한글 자판을 사용할 수 있는 것은 순전히 libhangul이 여러 한글 자판을 지원하기 때문입니다. 하지만 나빌입력기 for 맥은 libhangul을 쓰지 않고 오토마타도 제가 만들었기 때문에 제가 (혹은 다른 누가) 추가로 한글 자판을 구현하지 않으면 쓸 수 없습니다.

어차피 사람들은 더 기능이 많고 검증이 많이 되었고 성능이 좋은 구름입력기를 쓸테고 아마도 나빌입력기 for 맥을 쓰는 사람은 318Na를 쓰는 사람일테고 또한 아마도 318Na는 전세계에서 나만 쓸테니 다른 자판을 고려해서 굳이 범용성은 디자인에 신경쓰지 말자라고 원칙을 정했습니다. 그런데 소프트웨어 개발자가 프로그램을 만들면서 범용성 따위 신경 안쓰자고 하는게 더 어렵다는것을 깨달았습니다. 무의식적으로 예외 사항과 다른 요구 사항에 대한 공통적인 해결 방법을 찾아 코드를 만들게 되더군요. 무서운 직업 의식입니다. :)

그러다보니 제가 만든 오토마타의 첫 버전은 318Na만 지원하긴 했지만 디자인은 다른 한글 글자판도 사용할 수 있는 구조적 고려는 해두었습니다.

## 완성

앞에서 만든 입력기 샘플 (이제부터 프론트엔드라고 부르겠습니다.) 과 오토마타를 합칩니다. 그리고 여러가지 예외 사항을 디버깅합니다. 디버깅 과정은 지루한 try and repeat 입니다. 값을 살짝 조정해서 테스트 해 보고 다시 입력기를 언인스톨한 다음 입력기를 빌드하고 인스톨하고 로그아웃하고 로그인하고 입력기를 테스트 해 보고 다시 값을 조정하거나 코드를 고쳐보고 다시 언인스톨, 빌드, 인스톨, 로그아웃, 로그인 반복…

![](/images/2022/66f1e89da921c73456dc2b330d04fa725c0393db.gif)

나빌입력기 for 맥으로 입력한 첫 문장을 기록한 mov를 gif 변환했습니다. 그래서 그런지 실제 타이핑보다 속도가 훨씬 느리게 보이네요. 실제로는 저거보다 타이핑이 빠릅니다. :)

## 세벌식 390 추가

원래 계획은 318Na 자판 외에 다른 자판은 추가할 생각이 없었습니다. 어차피 오픈 소스로 공개할 것이니까 누군가 필요하다면 추가해서 풀 리퀘스트 보내주면 머지해야지 하는 생각이었죠. 그런데 입력기 자체를 제가 예상한 것보다 훨씬 빨리 완성해서 좀 심심하더군요. 아무래도 윈도우에서 한글 입력기를 맨땅에서 구현한 경험이 있어서 빨리 만들 수 있었던것 같습니다. 이래서 경력직을 선호하나봅니다. :)

그렇다고 한글 입력기 말고 뭐 딱히 떠오르는 개인 프로젝트 아이디어도 없어서 그냥 세벌식 390을 추가로 구현했습니다. 제가 설계한 오토마타가 과연 318Na 말고 다른 한글 자판에 제가 예상한 정도 수준으로 유연하게 확장할 수 있는지도 궁금했고요.

결과적으로 세벌식 390 추가는 제가 예상한 딱 그정도 작업으로 아주 잘 되었습니다. 친구 중에 390 사용자가 있어서 테스트 부탁했더니 깔끔하고 빠릿하게 잘 동작한다고 말해 주었습니다. 아직도 나빌입력기 for 맥을 쓰고 있는지는 모르겠네요. 아무튼 성공적으로 세벌식 390 자판을 추가했습니다.

## 두벌식 추가

저는 윈도우에서 나빌입력기 만들 때도 그렇고 지금 나빌입력기 for 맥을 만들 때도 두벌식 사용자는 기본 입력기로 충분하다고 생각합니다. 두벌식 사용자가 서드파티 한글 입력기를 사용할 이유가 없다는 것이지요. 두벌식을 쓴다면 윈도우든 맥이든 기본 입력기가 가장 편하다라고 생각합니다. 그러나 의외로 두벌식 사용하면서도 기본 입력기를 안쓰는 사람들이 꽤 있더라구요.

앞서 세벌식 390 추가할 때의 이유에 더해서 세벌식 390 마져 어려움 없이 작업을 완료하여 그냥 서비스로 두벌식도 추가하기로 했습니다. 저는 오토마타를 설계할 때 일단 입력 자체에 초성, 중성, 종성이 반드시 구분해서 들어오는 한글 자판을 전제 했습니다. 쉽게 말해 어떤 종류든 세벌식 자판이라면 제가 설계한 오토마타에 별 어려움 없이 추가될 수 있다는 것이지요. 그러나 두벌식은 종성 입력이 없이 연속으로 입력되는 중성에 따라 종성으로 남을지 앞 글자의 종성이 뒷 글자의 초성으로 바뀔지를 오토마타가 결정해야 합니다. 이 로직을 우아하게 합치기 위해 오토마타의 파라메터 선언 코드를 고치긴 했지만 그래도 큰 공사 없이 두벌식을 오토마타에 합쳐 넣었습니다.

![](/images/2022/dfc8610d2ba0fe96d7fae2633df9ef04b3d48ef4.png)

나빌입력기를 설치해서 실행한 상태에서 한글 자판을 변경할 수 있습니다.

## 테스트

저는 맥을 거의 업무용으로만 쓰기 때문에 맥에서 한글을 사용하는 프로그램이 몇 개 없습니다. 사파리, 메모, 텍스트 편집기, 슬랙, 마크다운 에디터. 딱 이정도 입니다. 그래서 제가 한글이 필요한 프로그램 중심으로만 테스트를 했고 해당 프로그램들에서 나빌입력기 for 맥은 매우 만족스럽게 동작합니다.

뭐 다른 트윅도 안썼고 딱 IMkit에 공개된 API만 썼기 때문에 아마도 추가로 어떤 특별한 처리를 해 줘야만 한글이 나오는 프로그램들에서는 한글이 제대로 입력 안 될 수도 있습니다. 다행히 저의 활용 내에서는 그런 프로그램이 없었습니다. 슬랙이 한글 입력 처리를 좀 지랄 맞게 하긴 하지만 그래도 큰 특별 처리 없이 맞출 수 있었습니다.

맥에서 한글 입력의 고질적인 문제가 한글 입력에 랙이 걸려서 타이핑 속도보다 느리게 들어간다는 글을 인터넷 검색으로 쉽게 찾을 수 있습니다. 나빌입력기 for 맥으로 아직 같은 현상을 겪어보지 못했습니다. 현상을 설명한 글을 보면 해당 문제는 입력기가 문제인게 아니라 맥의 텍스트 서비스 자체가 문제인듯 보입니다만, 나빌입력기 for 맥이 워낙 단순하여 속도도 빠르고 잡아 먹는 자원도 적다보니 해당 문제를 피할 수 있는것은 아닌가 하는 생각도 해 봅니다.

또 구글 스프레드 시트에서 숫자 입력할 때 입력이 안된다는 글도 봤습니다. 음.. 나빌입력기 for 맥으로는 아무런 문제 없이 숫자와 한글 입력이 잘 되어서 해당 문제도 나빌입력기 for 맥에서는 발생하지 않는 것인지 아니면 제가 테스트를 제대로 하지 못한 것인지는 알 수 없습니다.

저는 맥에서 나빌입력기 for 맥으로 한글을 입력하는데 아무런 문제가 없습니다.

## 공개

제 깃허브에 전체 소스를 공개했습니다.

<https://github.com/navilera/NavilIMEforMac>

그리고 전체 소스 코드 설명도 리드미에 적었습니다. 전체 소스 코드가 천줄이 안되므로 소스 코드 전체 설명을 다 적을 수 있을 것 같아서 입력기 테스트도 할 겸해서 써 봤습니다. 아마도 저 정도 설명이면 소프트웨어 개발 경험이 있는 사람이라면 웬만한 사람은 자기만의 한글 입력기를 맥에서 만들 수 있을 것입니다.

## 설치

버전 번호를 특별한 기준없이 그냥 대충 올렸더니 이 글을 쓰는 시점 기준 3.0까지 릴리즈 했네요…

<https://github.com/navilera/NavilIMEforMac/tree/main/Release>

위 URL에서 최신 버전 zip을 받아서 압축을 해제합니다. 그러면 

```
$ ls
NavilIME.app install.sh   uninstall.sh   
```

파일이 세 개 보입니다. 터미널을 열고 install.sh를 실행하면 설치가 완료 됩니다. 아마 파인더에서 바로 실행해도 될것 같긴 하지만 제가 해 보지 않아서 동작을 장담할 수 없으니 꼭 터미널에서 실행해 주세요.

그런다음 

> 설정 -> 키보드 -> 입력소스 -> 한국어 -> NavilIME

위 순서 대로 나빌입력기 for 맥을 등록합니다. 그리고 로그아웃, 로그인 하거나 재부팅을 하면 나빌입력기 for 맥을 사용할 수 있습니다.

## 삭제

키보드 입력 소스 설정은 등록의 역순으로 하면 됩니다. 그런 다음 터미널을 열고 uninstall.sh를 실행합니다. 그리고 로그아웃, 로그인 혹은 재부팅하면 됩니다.

