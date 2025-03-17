# 웹페이지 내용 모음

## https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=

몇 년 전에 PCB없이 아크릴 레이저 커팅해서 키보드를 만든적이 있습니다.

![01.jpg](./images/image_b2f865411e7d47008763e118ea092316.webp)

저렇게 핸드 와이어링했죠. 나름 재미있긴 했지만 꽤 고통스런 작업이었습니다. 이 키보드는 지금도 잘 쓰고 있습니다. 그러던 어느날 에고노믹(ergonomic) 스타일 키보드가 갖고 싶어졌습니다. 에고노믹 키보드란 대충 이런 키보드들을 말합니다.

![02.png](./images/image_a07ccf516b284b93b4975795bb06a1f0.webp)

손목 건강이 안좋다거나 하는 등 심각한 이유는 아니고요. 그냥 저런 키보드도 멋있어서요. 당연히 기존 제품 중 쓸만한 것들이 있는지 찾아 봤습니다. 그런데 마음에 드는 것이 없더라구요. 결정적으로 ‘B’ 키가 문제였습니다. 한글 두벌식을 사용하고 영문 쿼티 자판을 사용한다면 영어 타이핑할 때 ‘B’키는 왼손으로 타이핑하고 ‘B’키에 매핑된 ‘ㅠ’는 오른손으로 타이핑합니다. 그래서 좌우가 갈라진 에고노믹 키보드는 ‘B’ 키가 왼쪽과 오른쪽에 둘 다 있어야 편합니다. 물론 적응해서 ‘B’와 ‘ㅠ’를 모두 왼손으로 타이핑하면 되겠지만, 그렇게 하기 싫거든요..:)

찾다보면 ‘B’키가 왼쪽과 오른쪽에 둘 다 있는 키보드도 있었는데 그런거는 레이아웃이 마음에 안들었습니다. 저는 방향키가 꼭 있었으면 좋겠거든요. 그래서 만들기로 결심했습니다. 그런데 저번처럼 핸드 와이어링하기는 싫고 해서 이번에는 PCB를 떠 볼까하고 자료 조사를 했습니다.

PCB 디자인을 할 수 있는 툴은 여러가지가 있습니다. 그 중에서 제가 고를 수 있는건 사실상 KiCAD 한 개 뿐이었습니다. 왜냐면 제가 리눅스를 메인 데스크탑 운영체제로 쓰거든요. 리눅스에서 제대로 동작하는 쓸만한 프로그램은 KiCAD 뿐입니다. 그래서 KiCAD로 PCB 디자인하기로 결정하고 최신 버전을 설치했습니다. 저는 민트 리눅스를 배포판으로 쓰는데 배포판으로 다운받는 KiCAD는 버전이 옛날꺼라 그런지 버그가 많더라구요. 그래서 그냥 KiCAD 사이트가서 다운받아 설치했습니다.

![03.png](./images/image_ab5f9d8a84ad425395ad07ba0e55350c.webp)

윈도우, 맥을 포함해서 아주 많은 리눅스 배포판을 지원합니다. 민트 리눅스는 우분투 기반이므로 우분투를 클릭해서 설치했습니다.

이제 설치는 했는데 어떻게 해야 할지 모르겠습니다. 그래서 쓸만한 강좌 같은 것이 있는지 검색했습니다. 검색 결과 찾은 사이트는

<https://wiki.ai03.com/books/pcb-design/page/pcb-guide-part-5---creating-the-pcb>

이 페이지인데요. 이 글에서 PCB 디자인하는 내용은 위 사이트의 내용을 제가 직접 해보고 쓴 것에 불과합니다. PCB 디자인은 어떻게 하는지 대충 알았으니 어떤 모양으로 키보드를 만들지 대충 구상을 합니다. 인터넷에서 적당히 참고할 만한 이미지를 찾아 봤습니다.

![04.jpg](./images/image_74e7d83b23c54fca87af844f8d5bae66.webp)

일단 기본적인 레이아웃은 이 키보드처럼 만들 생각입니다. 방향키가 있으니까요. 저기에 Home, End 키를 추가하고 Win키 (Meta 키라고 하던가..)도 추가하고 이중 레이어 처리를 하려면 Fn 키도 있는것이 좋겠네요. 그리고 오른쪽에 B 키도 하나 더 넣을 겁니다.

![05.jpg](./images/image_058f663f85ff4f5bbf49c225ba9fd0ea.webp)

그리고 이렇게 좌우가 갈라진 형태도 괜찮아 보입니다. 위 사진은 전부 무선인것 같은데 저는 입력기기가 무선인걸 별로 안좋아해서 유선으로 연결할 생각입니다.

![06.jpg](./images/image_a88dbf6edf474b12b9687aa1b31ce958.webp)

그리고 이렇게 가운데가 살짝 높은 형태가 손이 더 편하다고 합니다. 평평한 키보드도 잘 써 왔긴하지만 이왕 에고노믹스로 만들기로 결정했으니 할껀 다 해보려고요. :)

![07_re.png](./images/image_80fc59954aa544c1b9ba94e9e1fa56e3.webp)

대략 이런 모습으로 나올 것 같습니다. 손으로 대충 그린거라 비율은 아마 그림과 다소 다를거라 예상됩니다. 그래도 대충 비슷하게 나오길 바라야죠.

다음은 컨트롤러를 결정하겠습니다. PCB를 디자인 할 것이지만 컨트롤러를 직접 PCB에 납땜하진 않을 생각입니다. 자잘한 저항등 수동 소자들 납땜할 자신이 없거든요. 대신 알리익스프레스에서 저렴하게 살 수 있는 STM32 보드를 사용할 것입니다.

![08.png](./images/image_fac5c187079e4ee884555c6ca36a019a.webp)

‘stm32 board’로 검색하면 나오는 것들 중 흔히 bluepill 또는 blackpill로 부르는 보드를 사용할 것입니다. 대충 알리익스프레스에서 $2 ~ $3 사이 가격으로 살 수 있습니다. 따라서 PCB에는 스위치와 다이오드만 납땜할 것이고 stm32 보드는 소켓으로 연결할 것입니다.

적당한 물건을 골라서 주문합니다. 알리익스프레스에서 물건이 오려면 한 달 정도 걸리므로 보드가 오는 동안 PCB를 디자인하겠습니다. 예전에 들은바로는 bluepill 보드는 USB쪽에 저항이 없어서 USB인식이 안되는 문제가 있으니까 blackpill로 사라는 걸 들은적이 있습니다. 그러니까 잘 찾아서 USB 저항 문제가 없는 보드 혹은 blackpill 보드로 사세요.

이제 준비 다 끝났으니, KiCAD를 켜고 PCB 디자인을 하겠습니다.

![09.png](./images/image_b99a96b111124949ba094d14ef4968d4.webp)

KiCAD를 실행하고 메뉴에서 New > Project를 선택해서 프로젝트를 만듭니다.

![10.png](./images/image_eb5069b38c764d89a043364df311f863.webp)

키보드를 만들것이므로 저는 keyboard라는 이름으로 적당한 폴더에 프로젝트를 만들었습니다. 프로젝트 생성에 별 문제가 없다면 위 그림처럼 pcb와 sch라는 두 메뉴가 보입니다. 이름만 봐도 알듯이 pcb는 PCB를 디자인하는 것이고 sch는 회로도를 그리는 것입니다. PCB를 그리기 전에 회로도를 먼저 그려야합니다.

바로 회로도를 그리겠습니다. 그 전에 체리 스위치를 PCB에 그리기 위한 라이브러리를 로딩해야 합니다.

<https://github.com/ai03-2725/MX_Alps_Hybrid.pretty>

위 URL로 가서 git 프로젝트 전체를 다운 받습니다.

Git clone으로 받아도 되고

![11.png](./images/image_f3151e6a24514d4c973b08ee113f66bc.webp)

깃헙에서 ‘Download ZIP’을 클릭해서 다운 받아도 됩니다.

일단 다운 받아 놓고 다시 KiCAD로 가서 회로도를 엽니다.

![12.png](./images/image_337204ce790646008dc4298aec628d2a.webp)

Keyboard.sch를 더블클릭하면 새창이 뜹니다. 거기서 회로도를 그릴겁니다.

![13.png](./images/image_b2dad876d17f45398383eab4502203bd.webp)

회로도 창에서 Preferences > Manage Symbol Libraries를 선택합니다.

![14.png](./images/image_9405eb5612004f909d8c1eeae75b3842.webp)

그러면 Symbol Libraries 창이 나옵니다. 여기에서 Project Specific Libraries 탭을 선택하고 아래에 보이는 폴더 아이콘을 누릅니다. 빨간 네모 안에 있는 저 버튼입니다.

![15.png](./images/image_8155686c3df24743963706bf7513f0f6.webp)

그리고 아까 다운받은 체리 MX 스위치 라이브러리 파일들 중에서 Schematic Library 폴더 안에 있는 MX_Alps_Hybrid.lib 파일을 선택해서 추가합니다.

![16.png](./images/image_c0852aa9a00f4132afc08362203b442e.webp)

추가하고 나면 이렇게 리스트에 라이브러리 이름이 보입니다.

![17.png](./images/image_19fd012f39b8415a9ad780dac29c5efa.webp)

이어서 PCB 그리는 창을 엽니다. 회로도는 회로도인데 이 PCB 그리는 창은 뭐라고 부르나요? PCB 디자인? 

아무튼, 이쪽에는 footprint라고 실제로 PCB에 그리는 그림에 대한 정보를 추가합니다.

![18.png](./images/image_18ec32a6993a495bb5ec5c02dc6b5253.webp)   

PCB 창에서 Preferences > Manage Footprint Libraries를 선택합니다.

![19.png](./images/image_ac16edd62034453fbcb92f65d660379b.webp)

마찬가지로 폴더 모양 아이콘이 있는 버튼을 누릅니다. 위 그림에서 빨간 네모로 표시한 버튼입니다.

![20.png](./images/image_7a39224e911b48e3bbc31f5556061ca7.webp)

그러면 폴더를 선택하는 창이 뜹니다. 거기서 MX_Alps_Hybrid.pretty를 선택합니다.

![21.png](./images/image_df66a5d847514515a7d279b0de6b6482.webp)

그러면 요렇게 추가됩니다.

여기까지 해서 준비 작업은 끝났습니다. 이제서야 드디어 회로도에 그림을 그릴 수 있게 되었습니다.

다시 회로도 창으로 가서 Place symbol 아이콘을 누릅니다. 오른쪽 사이드바에 있습니다.

![22.png](./images/image_ec1b6d96e1b74487b34625c5d0f5724e.webp)   

Place symbol 아이콘을 누른 다음 캔버스에 아무데나 클릭하면 심볼을 선택하는 창이 나옵니다. 아니면 키보드 단축키 ‘A’를 누른 다음 캔버스 아무데나 클릭해도 됩니다.

![23.png](./images/image_6710878e5ec243c8b205ce7434d9b0e0.webp)

검색으로 mx를 입력하면 mx가 들어간 모든 심볼이 나옵니다. 그 중 MX_Alps_Hybrid에서 MX-NoLED를 선택합니다. LED없는 체리 MX 스위치를 의미하는 심볼입니다. 그리고 캔버스에 아무데나 놓습니다.

참고로 KiCAD에서 마우스 휠은 확대/축소입니다. 캔버스 이동은 마우스 미들 버튼(보통 휠 클릭)입니다.

![24.png](./images/image_b4540a84b080459aa30ce0a2e69a3c4b.webp)

MX 스위치 심볼이 캔버스에 보입니다. 축하합니다. 회로도를 그렸습니다! 키보드의 동시 입력을 가능하게 하려면 스위치마다 다이오드가 붙어야 합니다. 아까처럼 Place symbol 아이콘을 누르거나 키보드 A 키를 눌러서 다이오드 심볼을 추가합니다.

![25.png](./images/image_8bb9d49246794e8584d11c984b05f4aa.webp)

다이오드는 1N4148을 씁니다. 왜 이거를 써야하는지는 모릅니다. 예전에 키보드 자작할 때 봤던 강좌에서 이걸 쓰라고 해서 그냥 씁니다.

![26.png](./images/image_91c7fa5ce30d452caa45e608c143456a.webp)

MX스위치 심볼에 COL, ROW라고 이름을 써 놔서 이름에 맞춰 심볼을 돌렸습니다. COL이 세로고 ROW가 가로입니다. 그리고 다이오드는 COL입력에 곧바로 연결했습니다. 심볼을 돌리려면 단축키를 이용하는 것이 편합니다.

회로도에서 심볼 모양을 조작하는 단축키는 아래와 같습니다.

m: pick the component up and move it

g: drag the component up and move it while keeping wires attached to it

c: copy the component

e: edit the component

r: rotate the component

y: mirror the component

del: delete the component

esc: abort!

따라서 스위치를 선택하고 r과 y를 원하는 모양이 나올 때까지 누릅니다. 그리고 다이오드를 선택해서 r을 눌러 돌리고 m을 눌러서 이동하여 COL에 바로 연결합니다.

![27.png](./images/image_4c3d1415b53945029ac340e85ebf6a02.webp)

마우스 포인터를 드래그하면 여러 심볼을 동시에 선택할 수 있습니다. 이 상태에서 당연히 Ctrl+C, Ctrl+V를 하면 심볼을 복사할 수 있습니다. 심볼을 복사해서 키보드 스위치 매트릭스를 구성합니다.

![28.png](./images/image_55a5850d41b64084893f7ac60f62c347.webp)

키보드를 두 파트로 만들 생각이므로 첫 번째 파트 (키보드 왼쪽 부분)에 대한 키보드 스위치 매트릭스입니다. 먼저 스위치들끼리 와이어링을 하겠습니다.

![29.png](./images/image_2afe0373cf14402580d92326d7ecd2ff.webp)

와이어링 단축키는 w입니다. wiring을 생각하면 쉽습니다. w를 누르고 연결점을 한 번에 쭉 이으면 접점에 알아서 점이 찍히면서 연결됩니다.

![30.png](./images/image_3586d045be51452088e6d50b68ea0102.webp)

연결을 완료한 회로도입니다. 단순하죠? 그냥 매트릭스라서 그렇습니다. 이제 컨트롤러와의 연결선을 그려야 합니다. 앞에서도 말했듯 저는 PCB에 컨트롤러를 납땜하지 않고 보드를 사서 소켓에 꼽을 것이기 때문에 회로도에는 소켓이 나와야 합니다.

\-----------

클리앙이 게시물 한 개에 이미지가 30개 제한이 있는걸 처음 알았네요..ㅎㅎㅎㅎ 원래는 1편이 이미지 45개 짜리인데...

어쩔 수 없이 분량을 나눠야 겠습니다. 다음편은 컨트롤러 보드를 꼽을 소켓 구멍을 회로도에 그리는 작업입니다.

2편: [https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=)CLIEN

---

## https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=

1편 : [https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=)CLIEN

![31.jpg](./images/image_a897a800f32e429b90570dbabde1f229.webp)

제가 주문한 보드의 회로도는 이와 같다고 합니다. 사실 확실하진 않아요. 알리익스프레스 물건에 대해서는 믿음이 없으니까요. 그래도 일단 중요한건 소켓이 몇 칸 짜리인지이므로 그것만 확인하겠습니다. 17칸짜리 핀헤더 소켓이면 되겠네요. 왼쪽 아래에 JP3과 JP4가 17칸짜리 핀헤더입니다.

핀헤더 심볼을 추가합니다. a를 누르고 ‘conn’이라고 검색하면 종류가 엄청 많이 나옵니다. 현시점에서 뭐가 맞는건지 저도 모르겠습니다. 일단 위에 있는 보드 회로도와 같은 모양인 심볼을 찾아서 넣겠습니다. 뭔가 아닌것 같으면 나중에 바꾸면 될 테니까요.

![32.png](./images/image_7fb09725bf2645e9bc0f33c2756f8154.webp)

이름이 Conn_01x17입니다. 옆에 나오는 그림은 보드 회로도에 나온 핀헤더 심볼과 완전히 같진 않은데 그래도 제일 비슷합니다. 일단 이거로 하죠. 17개짜리 두 개를 배치합니다.

![33.png](./images/image_e241376ae6724fb69ac2b40b32c0563b.webp)

회로도에서 와이어 라인이 이쁘게 보이게 하기 위해서 눕혔습니다. 그리고 보드 회로도랑 같은 핀 순서가 되게 하려고 r과 y 단축키로 적당히 심볼을 배치했습니다.

이제, 키보드 스위치 매트릭스에 col과 row를 각각 어느 핀에 연결할 지 조사해야 합니다.

![34.jpg](./images/image_81259247817a4e5b98c7318fec128a74.webp)

이 그림은 그냥 구글링해서 찾은 건데, 알리익스프레스에서 파는 STM32 Black Pill 보드는 핀아웃이 모두 동일한 것으로 보입니다. 그래서 아무거나 참고해서 써도 될것 같아요. 중요한 것은 USB 신호 핀이 PA11과 PA12입니다. 이 두 핀은 USB로 써야 하므로 키보드 스위치에 연결하면 안됩니다. 그리고 PA9와 PA10은 TX1, RX1이라고 써 있는데 아마도 UART입출력으로 보입니다. 디버깅하려면 UART도 써야 하므로 PA9, PA10도 쓰면 안됩니다.

키보드 스위치 매트릭스를 보면 왼쪽 파트는 col이 7개고 row가 5개입니다. 일단 핀 12개를 써야 합니다. 보아하니 위 그림에서 오른쪽 PA0부터 PA7과 그 위에 PB0, PB1, PB10, PB11을 쭉 쓰면 될것 같네요.

![35.png](./images/image_63747c4a7ef04871b9970e65d66a8bd1.webp)

확대해서 캡춰하니 화질이 않좋네요. 아무튼 PA0부터 시작하는 핀은 JP4에 12번부터 역방향으로 1번핀까지 12개입니다. 여기에 연결하겠습니다.

![36.png](./images/image_9d793d463fa0455198b551cb4c84d2a5.webp)

위 그림처럼 와이어를 연결합니다. 레이블을 써서 더 깔끔하게 그리는 방법도 있는것 같은데, 나중에 PCB로 그릴 때를 상상하면서 이렇게 하면 될랑가 싶어 선으로 연결해 봤습니다. Row 라인 5개는 PA0부터 PA4에 연결했습니다. 핀 번호로는 12번부터 8번입니다. 그리고 나머지 1번핀부터 7번핀은 Col라인 7개에 연결했습니다.

여기까지하면 왼쪽 파트 회로도 완성입니다. 별거 없네요. 이제 고려할 것은 오른쪽 파트와 연결을 어떻게 할지입니다. 지금 세 가지 정도 방식이 머릿속에 떠오르네요.

첫 번째 방법은 완전히 분리해서 오른쪽 파트에도 컨트롤러를 별도로 달아서 그쪽에서는 그쪽이 알아서 처리하는 것입니다. 어차피 컴퓨터에 키보드 여러개 붙을 수 있으니까요. 그러면 컴퓨터에는 키보드가 두 개가 붙어 있는 걸로 인식됩니다. 각 키보드가 반쪽짜리로 동작하는 것이지요. 이 방식도 나쁘지 않아 보입니다. 다만 컨트롤러를 두 개 써야 하고 펌웨어도 각각 코딩해서 넣어야 하겠네요. 장점은 왼쪽, 오른쪽 파트의 PCB가 완전히 분리된다는 것입니다. 깔끔해지죠.

두 번째 방법은 왼쪽 파트의 와이어를 어떤식으로든 연장해서 오른쪽 파트로 전달하는 것입니다. Row 라인 5개를 오른쪽 파트로 전달하고 오른쪽 파트에서 오는 Col 라인을 받아서 컨트롤러에 연결하면 됩니다.

세 번째 방법도 왼쪽 파트와 오른쪽 파트를 연결하는 것인데, 두 번째 방법과 다르게 오른쪽 파트에도 컨트롤러를 두고 간단한 펌웨어를 넣어서 시리얼 신호로 오른쪽 파트의 입력 결과를 왼쪽 파트에 있는 컨트롤러로 전달하는 것입니다. 두 번째 방법보다 왼쪽 파트와 오른쪽 파트를 연결하는 와이어링이 간단해지겠네요.

저는 두 번째 방법을 선택하겠습니다. 이리저리 생각해봐도 제일 쉽습니다. 일단 Row라인 5개를 보내야 합니다. 어떻게 보내는게 제일 편할까 생각하다가 그냥 소켓에 와이어 납땜해서 뭉쳐서 보내기로 결정했습니다.

![37.png](./images/image_5a046333ff9341df83ea0c913c4f8028.webp)

뭔지 모르겠는데 Conn_01x05_Female이라는 것도 있습니다. 이거도 한 번 써 봅니다. 아까 쓴거랑 뭔가 다른지는 나중에 PCB 나와보면 알겠지요.

![38.png](./images/image_682b7d5dca9541ab88887b26acb2f3f7.webp)

이 그림을 보니 뭔가 Col과 Row가 반대로 된것 같아 보이는데… 사실 중요하지 않습니다. 그냥 회로도 상에 가로, 세로를 기준으로 col과 row라고 부르겠습니다. 아무튼 그래서 row 라인 5개를 Conn_01x05에 연결했습니다.

오른쪽 파트에서는 col라인이 몇 개가 오는지 세어 보죠.

![39._re.png](./images/image_9d46a968eedf46dead07b01a1ed70e6d.webp)

두 번째 줄이 9개로 오른쪽 파트에서 넘어오는 col 라인 수는 9개입니다.

![40.png](./images/image_720086408db5472ba846d897f498eda7.webp)

이 그림을 다시 보면 여기서 핀 9개를 쓸 수 있을 것 같네요. PB3부터 PB7까지와 PB12부터 PB15까지 핀이 딱 9개입니다. 핀 번호는 3번부터 7번까지 5개와 14번부터 17번까지 4개입니다.

먼저 Conn_01_09_Female을 추가합니다. 아까 5개짜리 추가한것과 같은 과정으로 추가하면 됩니다. 그런 다음 이번에는 레이블을 붙여 보겠습니다. 와이어를 그리니까 공간이 안나와서 예쁘게 안그려지더라구요.

![41.png](./images/image_93b9caba06a34db38c34044d5634bb39.webp)

레이블은 Ctrl+H 단축키로 추가합니다.

![42.png](./images/image_1ee33808595c497d82ae7a9e7b98e5c8.webp)

Ctrl+H 단축키를 누르면 위와 같은 창이 나옵니다. 이름과 방향, shape를 이리저리 바꿔가면서 원하는 모양을 만드세요. 넣어보고 원하는 모양이 아니면 지운 다음 다시 넣으면 됩니다.

레이블을 핀 헤더 소켓에 연결하겠습니다.

![43.png](./images/image_95aa9af2bd0b4f609e2ecab98d7f2c0f.webp)

이러고 나니, 아까전에 ROW도 이렇게 레이블로 할껄 하는 생각이 드네요......

아무튼,

대략 이와 같은 모양으로 연결합니다. 레이블이 제대로 될지 모르겠네요. 이 글을 쓰고 있는 시점에서 저도 해 본적이 없거든요..

여기까지해서 키보드 매트릭스의 연결이 모두 끝났습니다. 아직 만들지 않은 미지의 오른쪽 파트와의 연결까지 고려해서 회로도를 그렸습니다.

마지막으로 핀 세 개만 더 연결해야 겠네요. UART 선입니다. 디버깅할 때랑 펌웨어 다운로드 할 때 쓰는데 미리 핀을 뽑아 놓으면 편하니까요.

![44.png](./images/image_bf54e5c30ad2490eba8708661ecf4e25.webp)

UART의 TX1과 RX1이 각각 PA9와 PA10이고 핀 번호는 11번과 12번입니다. UART 통신하려면 호스트와 RX, TX, GND만 연결하면 되므로 GND는 1번핀에서 가져오고 11번, 12번핀 RX, TX를 연결합니다.

![45.png](./images/image_77d330d66a214f868f49b3ddb7948e37.webp)

완성한 왼쪽 파트 회로도입니다. 제대로 맞게 했는지는 확신이 없네요. 아무튼 이 회로도를 기반으로 해서 PCB를 만들 것입니다.

다음편에서는 PCB를 디자인 하겠습니다.

3편 : [https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=)CLIEN

---

## https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=

1편 : [https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=)CLIEN

2편 : [https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=)CLIEN

지난 글에서 회로도까지 그렸습니다. 이번에는 PCB를 그려보겠습니다. 회로도가 PCB로 변환되는 형태인가봅니다. 저도 PCB 디자인을 처음하는거라 잘 모릅니다. :)

회로도에 심볼을 PCB의 그림으로 매칭하는 작업이 필요합니다. PCB에 그리는 그림을 풋프린트(footprint)라고 부릅니다.

![01.png](./images/image_3cff7959de794ac7b3e776b5d3d7b3d8.webp)

상단 아이콘에서 무당 벌레 아이콘 옆에 있는 Assign PCB footprints to schematic symbols 아이콘을 클릭합니다.

![02.png](./images/image_b5e7b7d054f34ceb907eff3444845e20.webp)

뭘 의미하는지는 모르겠는데 아마 심볼에 번호를 어떤 순서로 매기는지 같은 것을 설정하는 것으로 보입니다. 잘 모르니까 그냥 Annotate 버튼을 누르겠습니다.

![03.png](./images/image_b339ffed23804d1da6d7a3dccd22da39.webp)

D0부터 D29까지 다이오드에는 풋프린트가 자동으로 할당되어 있습니다. 딱히 아무것도 안했는데 자동으로 할당되어 있으니 그냥 두겠습니다. 만약 자동 할당이 안되어 있다면 위 그림을 보고 할당해 주세요.

![04.png](./images/image_96251be202044f35ad10374bd8427ff8.webp)

그 다음은 컨트롤러 보드를 꼽을 소켓 자리인데 이름을 봐서는 PinHeader보다는 PinSocket이 맞을 것 같습니다. 보드에 PinHeader가 있고 키보드PCB에 PinSocket이 있어서 꼽히는게 아무래도 맞지 않을까요? 아니면 뭐 어쩔 수 없고요..

문제는 제가 주문한 보드 핀헤더가 몇 mm짜리인지 모른다는 것입니다. 이게 아마 업계 표준이 있고 대체로 많이 쓰는건 뭔지 정해져 있는것 같은데... 제가 잘 몰라요..:)

<https://stm32-base.org/boards/STM32F103C8T6-Black-Pill.html>

구글 검색해 보니 위 링크에 스팩이 나와 있네요. 그냥 저걸 믿으렵니다. 예전에 사 놓은게 어디 있을텐데 찾아서 직접 재 보고 싶네요.

![05.png](./images/image_2926a541b09b4ecca4f123d264bb96ac.webp)

2.54mm 라고 합니다.

![06.png](./images/image_7d49be962b284b3b893f090fc165589b.webp)

그래서 컨트롤러 보드를 꼽을 17칸 짜리 구멍은 PinSocket 2.54mm Vertical로 풋프린트를 설정합니다.

![07.png](./images/image_46d9e61d041c47e892f1199e88027c5c.webp)

오른쪽 파트랑 연결용으로 만든 소켓 구멍과 UART용 연결 소켓은 사실 아무거나 해도 상관없습니다. 핀헤더 안들어가면 그냥 와이어 납땜해 버리면 되니까요. 그래도 그냥 2.54mm로 통일해서 PinHeader로 풋프린트를 설정합니다.

![08.png](./images/image_9cd7e161c61541f1b5c02ae93b581ade.webp)

왼쪽 사이드 패널에서 MX_Alps_Hybrid를 선택하면 오른쪽 사이드 패널에 스위치 풋프린트 종류가 나옵니다. 1U, 1.5U, 1.75U 같은 이름으로 보아 키보드 각 키캡 크기 별로 풋프린트가 있는 걸로 보입니다. 그러면 스위치마다 적당한 풋프린트를 써야 합니다.

가운데 패널에서 MX1, MX2 … 이렇게 있는 심볼 이름을 하나씩 클릭하면서 회로도를 보면 어떤 심볼을 선택한 것인지 빨간색으로 표시됩니다.

![09.png](./images/image_2260068a4edd4b2e89912d7381703ce0.webp)

MX10을 선택해 봤습니다. 그랬더니 회로도에서 MX10에 해당하는 스위치 심볼이 빨간색으로 표시되네요. 이런식으로 어떤 스위치인지 확인해가면서 적절한 크기의 풋프린트를 설정합니다.

MX1부터 MX7은 키보드에 ESC와 숫자 1부터6까지입니다. 모두 1U 키캡이죠. 그래서 shift 키를 누르고 MX1부터 MX7을 선택해서 1U 풋프린트를 할당하겠습니다.

![10.png](./images/image_fd0cfbc5997e4feab451a086c09c7ca0.webp)

1U에 NoLED로 설정된 풋프린트를 MX1부터 MX7에 할당했습니다.

2열에 MX8부터 MX13은 MX8이 TAB키입니다. TAB키는 1.5U이고 나머지 MX9부터 MX13은 Q, W, E, R, T로 1U입니다.

![11.png](./images/image_2afd30eeed174a43bc8d47efd3e3908e.webp)

3열은 전통적 키보드에서 CapsLock으로 시작합니다. 저는 저 좋은 자리에 별로 쓰지 않는 CapsLock이 있는 걸 별로 안좋아해서 보통 Fn키로 씁니다. 어차피 펌웨어에서 리맵하면 되는거라 딱히 중요하진 않습니다. 아무튼 3열의 첫번째 키캡은 보통 1.75U입니다. 그리고 나머지는 다 1U입니다.

4열은 Shift키로 시작하고 왼쪽 Shift 키는 보통 2.25U입니다. 그리고 나머지는 다 1U입니다. 여기까지 한 번에 다 작업하고 5열을 생각하겠습니다.

![12.png](./images/image_febb6bc6867d4619b27bcc2532c838a5.webp)

이렇게 되겠죠.

5열은 Ctrl, Win(Meta), Alt, 스페이스 바입니다. Ctrl, Alt 키들은 전통적으로 1.25U입니다. 스페이스 바는 원래 긴 키캡인데, 저는 키보드를 반으로 쪼갤 것이니까 대충 적당히 긴 키캡을 스페이스 바로 쓰면 됩니다. 지금 쓰고 있는 키보드로 왼쪽 스페이스를 눌러보니 대충 C와 V 사이 위치를 엄지로 누르네요. 그래서 크기가 어떻든 그정도만 커버하면 될것 같습니다. 그래서 2.25U 키캡을 스페이스로 쓰기로 하겠습니다.

![13.png](./images/image_d746d70d718b4da184ef358d1e8a6715.webp)

이렇게 됩니다.

![14.png](./images/image_e6913ad7cdda4c03a48be714fe0b3e88.webp)

다시 PCB 디자이너 창을 실행합니다. (이 창 이름을 몰라서 제가 마음대로 부르는 겁니다. 정식 명칭은 뭘까요)

![15.png](./images/image_9af3fd2dceeb4cb88f6594b2109221d6.webp)

그리고 여기서도 무당 벌레 아이콘 옆에 있는 Update PCB from schematic 버튼을 클릭합니다.

![16.png](./images/image_bad0f202339d45d48ee0af9b27f45f9b.webp)

뭔지는 모르겠으나 successful이라고 나오니 별 문제 없나봅니다. Update PCB를 누릅니다.

![17.png](./images/image_4eb3f5ce3b224cfeb814333f8e29595b.webp)

짜잔!

그러면 이렇게 무작위로 풋프린트가 깔려서 나옵니다. 딱 봐도 저 풋프린트 심볼들을 적절한 위치에 재배치를 해야 할 것 같은 느낌이 드네요.

일단 심볼을 선택하기도 어렵습니다. 그래서 이름으로 바로 심볼을 찾습니다. 저는 가장 명확한 J3을 위로 배치하려고 합니다.

![18.png](./images/image_0d503538829440b597944a38c8032b71.webp)

Ctrl+F 키로 심볼을 찾습니다. 이름을 쓰고 Find Item 버튼을 누르면 심볼이 선택됩니다. 창을 닫고 단축키 m을 누르고 마우스를 움직이면 심볼을 이동할 수 있습니다. 그래서 J1, J2, J3을 의도한 배치대로 적당히 옮겨 놓습니다.

![19.png](./images/image_e449216b78d347318bd264f94414b43e.webp)

하얀 선은 각 핀에 연결되는 다른 핀을 알려주는 것입니다. 나중에 저 하얀 줄이 없어지게 wire를 그려줘야 합니다. 그래서 현 시점에서 보이는 저 하얀 선은 신경 쓰지 않아도 됩니다.

이제 노가다 반복작업이 남았습니다. 각 키보드 스위치를 쭉 정렬해야 합니다. 이게 이름 순서로 정렬하고 이런 기능이 있을 것 같은데, 전 KiCAD를 잘 쓸 줄 모르므로 노가다로 하나씩 옮기겠습니다.

![20.png](./images/image_76b66a1b64ae4ae09ea96c227b8b65bc.webp)

와이어링 가이드 라인 (하얀 줄) 때문에 어지럽긴 한데, 스위치 30개를 의도한대로 배치했습니다. 아직 다이오드를 배치하지 않아서 다이오드쪽으로 연결되는 하얀 줄이 많이 보입니다. 그런데 아직은 제가 생각하는 최종 목표가 아닙니다.

![21.png](./images/image_41217bd9e9eb4f12a0e6eb67e9d1da42.webp)

저는 이렇게 꺽여 있는 키보드를 만들려고 하거든요. 저 각도는 어느정도가 적당할지 아직 모르겠습니다. 대충 사람 손의 길이 차이 만큼이면 될 것 같거든요. 집에 각도기가 있던가…

대충 25도에서 30도 정도면 될것 같네요. 각도가 커 봐야 별로 안 예쁠것 같으니 한 25도 정도만 꺽어 보겠습니다.

![22.png](./images/image_414585ead67349fabe4e038eff56c623.webp)

심볼 풋프린트를 선택하고 마우스 우클릭해서 나오는 컨택스트 메뉴에서 Properties를 선택합니다.

![23.png](./images/image_8496fb9dfcb04669989e7ac51b755fac.webp)

Orientation 쪽 박스에 보면 각도로 보이는 숫자가 있고 Other에 25를 넣어 보았습니다.

![24.png](./images/image_f34e51c79d0a4a70a7879bea470a23ce.webp)

그랬더니 풋프린트 그림이 돌아갔습니다. 요렇게 하면 되겠군요. 그럼 쭉 해보겠습니다.

![25.png](./images/image_8c907f0eaaa94ab38d6872be696e7a19.webp)

중간에 캡춰가 없는데, 25도는 너무 많이 꺽은 것 같아서 20도로 조정했습니다. 요정도로 꺽어서 배치하면 적당히 목적에 맞는 것 같습니다.이제 다이오드를 배치해야 겠네요.

![26.png](./images/image_d10a41b93c3f4d8c8ac6568d97d49178.webp)

MX4 스위치에 D4 다이오드를 배치한 그림입니다. 다이오드를 표시하는 D4라는 레이블이 거울 반사 모양이죠? 이것은 양면 PCB의 뒷면에 풋프린트를 그린다는 의미입니다. 

아마도 뒷면에 납땜을 할 것으로 예상됩니다. 단축키 f를 누르면 앞면과 뒷면을 토글하면서 풋프린트를 배치할 수 있습니다. 

스위치를 윗면에 꼽으면 다이오드를 꼽을 자리가 협소해 보여서 뒷면에 다이오드를 꼽는게 나아 보입니다. 예전 기억을 떠 올려보면 다이오드가 충분히 작아서 방해가 안될 것 같기도 한데, 그냥 안전빵으로 뒷면에 다이오드를 꼽겠습니다.

![27.png](./images/image_9176973bccfb41ddb85458da68b9e908.webp)

다이오드를 모두 배치했습니다. 다이오드가 모두 제자리에 있으니 이제야 좀 정돈되어 보이고 좋네요.

다음은 컨트롤러 보드를 꼽을 소켓의 간격을 알아야 합니다.

\----------

그림 업로드 개수 제한 때문에 여기서 끊고...

다음편에 이어집니다.

---

## https://www.clien.net/service/board/lecture/16408079?od=T31&po=1&category=0&groupCd=

1편 : [https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=)CLIEN

2편 : [https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=)CLIEN

3편 : [https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=)CLIEN

STM32 보드 같은 작은 보드들도 정해진 표준 크기가 있을 텐데 제가 그걸 몰라서 노가다로 찾아야 합니다.

![28.png](./images/image_95124c0be7ed481babfe72fd340677e9.webp)

구글에서 이런 그림을 찾았습니다. 화살표, 동그라미가 중요한게 아니라, 밑에 빵판을 주목해서 보면, 양쪽에 각각 두 칸씩 남기고 보드가 꼽혀 있습니다. 빵판의 크기를 알면 소켓 간격을 알 수 있겠네요.

![29.png](./images/image_dde359c640f945c2b4907a4d12885f3c.webp)

빵판 규격입니다. 가운데가 7.62mm이고 양 옆으로 두 칸씩이므로 (2.54 * 2) * 2 입니다. 그래서 7.62 + 10.16 = 17.78mm입니다. J1과 J2의 간격을 17.78mm로 놓으면 되겠네요.

![30.png](./images/image_e6aac0a8be614c39b7bf29ac510f4e9e.webp)

그리드 간격을 0.2540mm로 바꿉니다. 17.78 / 2.54 = 7이므로 2.54의 배수로 맞추면 조정하기 편하기 때문입니다.

![31.png](./images/image_b75d04dfa41945a4b563ceccc109382d.webp)

그렇게 한 상태에서 J1과 J2를 조금씩 움직이면서 거리를 적당히 맞추고, 위 그림처럼 오른쪽 패널에 있는 버니어 캘리퍼스 모양 아이콘을 클릭해서 J1과 J2간 거리를 잽니다. 17.78mm라고 나오네요. 그러면 아마 딱 맞을 겁니다.

이제 PCB에 전선을 그립니다. 전문 용어로 라우팅이라고 하는가 봅니다. 저는 잘 모르니까 그냥 선 그린다고 이해했습니다. 단축키 x가 라우팅입니다. 그리고 뒷면, 앞면 배선을 토글하는 단축키는 v입니다.

![32.png](./images/image_4f39f11ab8be4566859cf7ba1af9aeb6.webp)

단축키 x를 누르고 시작 위치 패드를 클릭하면 도착 지점이 어디인지 보여줍니다. 그냥 클릭하면 자동으로 그어주는데 영 마음에 들지 않아서 직접 배선을 그려주는게 편합니다.

![33.png](./images/image_767439a327a34f168552eac29d552f3a.webp)

배선을 다 그렸습니다. 저는 비전문가라서 되는대로 최선을 다해서 그렸습니다. 아마 전문가의 눈으로 봤을 때 이상한 배선이 엄청나게 많을 것이라고 생각됩니다만, 그냥 해 보는 것이기 때문에 괜찮습니다. 취미인걸요.

위 그림에서 빨간색 배선은 PCB의 앞면에 그리는 배선이고, 초록색 배선은 PCB 뒷 면에 그리는 배선입니다. 2Layer PCB를 이용할 예정입니다.

![34.png](./images/image_5f1bdb23391e495b832720462302d3f3.webp)

다음은 PCB 외곽선을 그리겠습니다. 원, 곡선, 다면체 등 다양한 툴로 그릴 수 있는가 봅니다. 저는 그냥 graphic line를 택해서 그리겠습니다. 외곽선을 그리기 전에 레이어를 Edge.Cuts로 먼저 바꿔 놓습니다. 이래야 외곽선으로 인식하나봐요. 저도 잘 몰라요.. :)

![35.png](./images/image_23e6b28589f644cba9d7fa500c3d0e8f.webp)

전 그냥 대충 그렸습니다. 이게 그냥 네모로 PCB를 떠야 싼지 아니면 상관 없는건지 몰라서, 일단 하고 싶은 대로 그렸습니다. 괜히 나중에 PCB 값만 더 올라가는 것 아닌지 모르겠네요.

![36.png](./images/image_b9adc25027d7453d9db6cab491f7547e.webp)

상단에 있는 무당 벌레 모양 아이콘을 누릅니다. PCB를 디버깅하는 기능이라고 합니다.

![37.png](./images/image_bd9a73dbc92746c3b7a3ff7d52b690cf.webp)

음… 저는 뭐가 많이 나왔습니다. 대충 드릴 구멍이 서로 너무 가깝다는 건데… 뭔지는 모르겠지만 하나씩 눌러보고 위치 조정해야 겠습니다.

![38.png](./images/image_803421051caa4515a9db2a3d47781d06.webp)

확대한 다음 디버거에 리스트를 하나씩 누르면 어디가 잘못된건지 나옵니다. MX 스위치 라이브러리에서 2번 홀을 드릴 구멍 두 개로 구현했는가 봅니다. 저건 내가 잘못 한 것이 아니니까… 그냥 넘어가겠습니다.

![39.png](./images/image_d9bbf6c4e7f642a7ba0bf6cd8fc40b5d.webp)

거버(Berbber) 라는 포멧으로 파일을 만들어야 PCB 업체에 주문을 넣을 수 있다고 알고 있습니다. 그래서 거의 마지막 단계로 거버 파일을 생성하겠습니다. 상단 아이콘에서 Plot 버튼을 클릭합니다.

![40.png](./images/image_45c89edbc89049ab9c2bd2c1d9c6b350.webp)

뭔지 모르겠네요. 그냥 Plot 버튼 누릅니다.

드릴 구멍을 뚫고 싶은데 어떻게 해야 하는지 모르겠네요. 그냥 나중에 PCB 오면 직접 드릴로 뚫어야 겠네요.

그리고 Generate Drill Files 버튼도 누릅니다.

![41.png](./images/image_12531bc8b92c49eb9fd31e0c124acfa9.webp)

역시 뭔지 모르겠습니다. Generate Drill File 버튼을 누릅니다.

이제 드디어 PCB를 주문할 차례입니다.

PCB를 만들어서 배송해 주는 업체는 매우 많다고 알고 있습니다. 그래서 이 글에서 특정 업체를 언급하기가 꺼려지네요. 되도록 업체 이름은 노출되지 않도록 하겠습니다. 그래도 워낙 유명한 업체라 웹 사이트 UI만 보고도 어딘지 아시는 분들은 다 아실것 같긴합니다.

사실 저도 어느 업체가 싸고 좋은지 몰라서 그냥 구글에 검색해 봤어요. 그랬더니 대체로 여러 게시글에서 써봤다고 하는 업체는 같더라구요. 그래서 저도 같은 업체에 주문을 시도해 봤습니다.

![42.png](./images/image_ebd306d8f2ef4d2496280f7ba26f49e4.webp)

먼저 거버 파일들과 drill 파일들을 모두 묶어서 압축 파일 한 개로 만듭니다.

![43.png](./images/image_3fff1aa4b7b04d8c97c8c3c2d4ecf56e.webp)

압축 파일을 PCB 업체에 업로드하면 저렇게 어떤 모습으로 PCB가 나올지 알려줍니다. 이게 5장이 최소 수량이네요… 난 한 장만 있으면 되는데…

PCB 그림 아래에는 이런저런 옵션을 선택할 수 있습니다. 옵션을 바꿀 때마다 오른쪽에 가격이 바뀝니다.

참고로 저는 디폴트 설정에서 PCB 마감만 한 단계 위로 했던 $1.xx가 추가되서 최종 $16.40이 나왔습니다.

![44.png](./images/image_f6e49ae174c64ba08e8c49f949edfee1.webp)

사실 저는 배송비를 더 걱정했습니다. 보통 이런건 배송비가 더 나오거든요. 물론 DHL Express를 선택하면 배송비가 $30이 넘었습니다. 다 눌러본 결과 Standard Special Air Mail이 가장 쌌으나 아무래도 FedEx가 배송 추적도 되고 훨씬 빠른데 금액 차이는 $1 정도라서 FedEx로 선택했습니다.

![45.png](./images/image_64a57142304843d88cf97de19fd17957.webp)

나름 검증된 사이트긴 해도 혹시 모를 사태에 대비해서 페이팔로 결제했습니다. 페이팔이 문제가 생겼을 때 환불이 쉽거든요. 페이팔로 결제하면 $0.50을 추가로 더 내야 합니다. 몇 백원 더 내고 마음의 평화를 얻을 수 있다면야!

그리고 기다리면 리뷰를 했다고 하고 생산 대기 중이라고 나옵니다. 이제 기다리면 되겠네요.

기다리는 중간에 Order history를 찍어보면 현재 어디까지 작업 중인지 나옵니다. 이게 진짜인지 아닌지는 몰라도 대략 어느 정도 작업 중이고 언제쯤 얘네가 물건을 보낼 지 알 수 있을 것 같긴 합니다.

![46.png](./images/image_cec858a9f3bc4e35b04435a7c619e224.webp)

다음편은 PCB가 오면 쓰겠습니다.

---

## https://www.clien.net/service/board/lecture/16439190?od=T31&po=2&category=0&groupCd=

1편 : [https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=)CLIEN  
2편 : [https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=)CLIEN  
3편 : [https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=)CLIEN  
4편 : [https://www.clien.net/service/board/lecture/16408079?od=T31&po=1&category=0&groupCd=](https://www.clien.net/service/board/lecture/16408079?od=T31&po=1&category=0&groupCd=)CLIEN

주문하고 2주 정도 지나니 PCB가 도착했습니다.

![01.png](./images/image_477cc2931fee44e2a4c86178420d5ba5.webp)

뾱뾱이로 압축 포장을 해서 보내줬습니다. 꼼꼼하네요.

![02.png](./images/image_b7fc30ce20a74ada8cea34b4cc873b13.webp)

기대했던 것 보다 멋있군요!

PCB제조한 업체에서 테스트하고 보내 줬으리라 믿지만 그래도 한번 더 확인 할 겸 테스터로 배선을 찍어 보겠습니다. 총 5장인데 다 찍어보려니 지루하여 한 장만 찍어보고 그 한 장으로 작업을 진행하겠습니다. 나머지 4장은 어디다 쓸까…

중간에 스위치 접점에 배선이 연결되어 있긴하지만 기본적으로 한줄로 연결되어 있어야 하기 때문에 끝에서 끝만 찍어 보면 됩니다.

![03.png](./images/image_9401cdf8027745f6bc8f1d1538db0212.webp)

PCB를 계속 보고 있으니, 레이블을 추가로 더 넣었으면 보기 더 편했겠다는 생각이 듭니다. 회로도 없이 보면 살짝 헤깔리네요.

테스트 해보니 배선은 잘 연결되어 있습니다. 그 사이 도착한 컨트롤러 보드도 소켓 자리에 잘 맞는지 꼽아 보겠습니다. 인터넷에서 빵판 사진 구해다가 대충 간격 계산해서 넣은건데 잘 맞을지 궁금하군요.

![04.png](./images/image_bd42ba007684488eb1b737ed3f4401f4.webp)

딱 맞네요. 표준화란 이런것이죠! 그러면 핀헤더 소켓이 필요합니다. 새거 주문하려다가 혹시나해서 찾아보니 집에 남는게 두 줄 있네요! 아싸 돈 굳었다.

![05.png](./images/image_3a92de32bda44c5b9e97bf52d74cc383.webp)

적당한 길이 핀헤더 소켓과 핀헤더를 찾아서 PCB에 납땜하겠습니다. 키보드 오른쪽 파트랑 연결할 소켓은 와이어를 직접 납땜할 생각이므로 핀헤더를 꼽지 안겠습니다.

별문제가 없다면 이 상태에서 UART로 펌웨어를 다운로드 할 수 있어야 합니다. 집에 굴러다니는 UART 보드가 어디있더라…

![06.png](./images/image_eb1dc456e1864f109335af827b2264b1.webp)

집에 굴러다니는 UART보드를 찾았습니다. 이거 말고 좀 더 예쁘게 생긴애도 있었던걸로 기억하는데 못 찾겠네요. 그냥 이거 써야겠습니다.

![07.png](./images/image_71aa804532d3422d85ff4f556a633352.webp)

이렇게 각각 USB를 꼽아주고 컨트롤러의 Tx, Rx와 GND를 UART 보드에 맞춰서 연결합니다. Tx, Rx 연결은 Tx는 Tx끼리 Rx는 Rx끼리 연결하거나 아니면 당연히 Tx-Rx, Rx-Tx 쌍으로 연결해야 할텐데 문서 찾아보기 귀찮아서 일단 아무렇게나 연결해보고 동작 안하면 뒤집어서 연결해 보기로 했습니다. 이거는 반대로 연결한다고 뭐 크게 망가지지 않아요.

리눅스에서 stm32 칩에 펌웨어를 다운로드하는 툴이 있습니다. stm32flash라는 툴입니다. 우분투 기반 리눅스에서는 아래 명령어로 간단히 설치합니다.

sudo apt install stm32flash

UART 보드를 연결하고 UART 칩이 제대로 동작한다면, 아마 USB 디바이스로 UART 칩이 잡힐껍니다. UART 보드를 연결하고 lsusb를 입력해보겠습니다.

![08.png](./images/image_f21eb312c74c4e30a8778845e333059d.webp)

요렇게요. 그리고 컨트롤러 보드에 BOOT0, BOOT1로 이름 붙은 점퍼가 있는데요, 얘를 BOOT0=1, BOOT1=0으로 바꿉니다. stm32를 쓴 아두이노 호환보드는 종류가 엄청 많아서 이 점퍼 설정이 보드 종류마다 다릅니다. 제가 산 블랙필 보드는 아래 사진처럼 점퍼 설정을 하면 UART로 펌웨어를 다운로드 할 수 있습니다.

![09.png](./images/image_8ad8fb75e3bb46da9cb53700994beb30.webp)

이렇게 하고 아래 커맨드를 입력해서 응답이 오면 기본 준비는 끝난겁니다.

![10.png](./images/image_f5c1cbce25254de8a7e6f8f1b9144cfe.webp)

여기까지 되면 컨트롤러는 된다고 보고, 다이오드 납땜을 시작하겠습니다. 납땜은 그냥 납땜입니다. 반복작업.

![11.png](./images/image_50042dfec06b45ad8a647de002729b42.webp)

요렇게 납땜했습니다.

이제 컨트롤러 꼽고 펌웨어 올리면 되겠네요. 그 전에 스위치를 골라야 합니다.

저는 논클릭(갈축)을 좋아합니다. 이번에도 그래서 논클릭 스위치로 키보드를 만들 생각합니다. 다만 고민 중인 것은 체리 스위치냐 체리 호환(카일, 오테뮤, 게이트론 등) 스위치냐하는 것입니다. 이왕 PCB뜨는거 핫 스왑 가능하게 만들어서 스위치질이나 할껄하는 생각이 뒤늦게 드네요..ㅎㅎ

키보드를 직접 만들려고 드는 사람치고는 제가 스위치쪽에는 딱히 재주가 없습니다. 그저 체리 갈축이나 사서 그대로 붙여 쓸 뿐이죠. 스위치를 개별로 윤활 한다던가 스프링을 교체해서 키압에 변화를 준다던가하는 경지에는 도달조차 하지 못합니다. 그래도 찾아보니 광축이니 박스축이니 하는 스위치들이 있네요.

혹시 추천하고픈 스위치가 있으면 댓글로 부탁드립니다. 넌클릭 계열로요.

다음편은 아마 스위치 배송받아 납땜하고 펌웨어 올리는 작업기를 쓸 것 같습니다.

---

## https://www.clien.net/service/board/lecture/16474813?od=T31&po=7&category=0&groupCd=

1편 : [https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=)CLIEN  
2편 : [https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=)CLIEN  
3편 : [https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=)CLIEN  
4편 : [https://www.clien.net/service/board/lecture/16408079?od=T31&po=1&category=0&groupCd=](https://www.clien.net/service/board/lecture/16408079?od=T31&po=1&category=0&groupCd=)CLIEN  
5편 : [https://www.clien.net/service/board/lecture/16439190?od=T31&po=2&category=0&groupCd=](https://www.clien.net/service/board/lecture/16439190?od=T31&po=2&category=0&groupCd=)CLIEN

스위치를 알리익스프레스에서 주문했습니다. 2주가 지났는데 안오네요. 언젠간 오겠죠. (안오면 어쩌지…) 원래 생각은 스위치 올 때까지 기다렸다가 스위치 납땜 과정하고 동시에 펌웨어 작업 과정을 대충 때우고 넘어가려고 했습니다. 이 글 목적이 펌웨어를 설명하는 것은 아니니까요.

그런데 스위치가 함흥차사 오질 않으니, 심심해서 펌웨어 작업을 먼저 조금 해 두려고 합니다. 펌웨어 작업은 스위치가 없어도 할 수 있어요. 스위치 누르는 대신 전기가 통하는 아무 물건이든 가지고 스위치가 꼽히는 PCB 구멍을 연결해서 쇼트시키면 되거든요.

그래도 펌웨어 관련 내용은 대충 쓰겠습니다. 재미없거든요. 일단 펌웨어는 아래 링크에서 다운받습니다.

<https://github.com/navilera/Gosu>

stm32 보드에서 동작하는 키보드 펌웨어입니다.

USB HID 키보드 펌웨어의 필수 요소는 매우 간단합니다. 아래 두 가지만 구현하면 충분히 키보드 펌웨어로 기능할 수 있습니다.

1\. 어느 스위치가 눌렸는지 확인

2\. USB HID keyboard 스팩에 맞춰서 호스트로 keyscan code report를 보냄

어느 스위치가 눌렸는지 확인 하는 방법은 PCB에 스위치가 매트리스로 연결되어 있으므로 순서대로 row에 신호를 쏴서 col에서 읽어보면 됩니다.

![01.png](./images/image_5f26b03c4aae4d6c826eccef2fbc95ea.webp)

회로도를 다시 소환해 보죠. Row0에 신호를 쏘고 Col0부터 Col6까지 신호가 들어왔는지 확인해 보는 겁니다. 신호가 들어온 스위치가 닫힌것이지요. 그리고 순서대로 Row1에 신호를 쏘고 다시 Col0부터 Col6까지 또 읽습니다.

이게 전부입니다.

Row0부터 Row4에 연결한 GPIO를 output으로 설정하고 Col0부터 Col6에 연결한 GPIO를 input으로 설정해서 Row 쪽 GPIO 신호를 순서대로 high로 올리고 Col쪽 GPIO 신호를 읽어보면 되지요.

수도코드는 대충 이러합니다.

row_gpio = [GPIO 포트 5개 지정]

col_gpio = [GPIO 포트 7개 지정]

for row in row_gpio {

set_gpio_output(row)

}

for col in col_gpio {

set_gpio_input(col)

}

while(true) {

for row in row_gpio {

set_gpio_high(row)

for col in col_gpio {

if get_gpio_input(col) == 1 {

눌림!! : (row, col)

}// if

} // for col

set_gpio_low(row)

} // for row

} // while

그냥 아주 전형적이고 초보적인 폴링입니다. 그래서 각 폴링 루프 사이에 delay를 조금 넣어서 GPIO 신호 레벨이 올라갔다가 완전히 내려가는 시간을 주어야 하는 등 부가적인 작업이 필요하지만 수도코드에는 표현하지 않았습니다.

![02.png](./images/image_d8a728178a4a488fb239a5112a683906.webp)

왜냐면 논리적으로는 GPIO 신호 레벨이 high로 갔다가 low로 내려가는건 위 그림처럼 동작하는거로 이해합니다. 그러나 실제로 전압 레벨이 저렇게 딱딱 90도로 꺽이면서 high, low로 올라갔다 떨어졌다 하지 않거든요.

![03.png](./images/image_b08b206040104162ab524f5632023a29.webp)

그림이 좀 부정확하군요. 커브가 저 모양이 아닌데... 아무튼 실제로는 대충 위 그림처럼 완만하게 전압이 올라갔다가 내려갑니다. 대충 완만하다는 것을 표현한 그림이라고 이해해 주세요. 설정에 따라 위 그림에 전압레벨이 변하는 구간 T의 시간을 어느정도 짧게 할 수 있긴한데 아무튼 0은 아니기 때문에 적당한 delay는 필요합니다. 만약 코어가 충분히 느려서 GPIO 전압 레벨 변화 속도보다 펌웨어 실행이 느리다면 delay가 필요 없을 수도 있습니다.

![04.png](./images/image_cf7afa2555f248c2b9fafac811f0b835.webp)

다시 회로도를 보면 blackpill 보드 핀 번호 기준으로 8번부터 12번을 row에 연결했고 1번부터 7번을 col에 연결했습니다.

이걸 실제 GPIO 포트 번호랑 매칭해 보면…

![05.png](./images/image_4196e24fc83247988e33441a8bb06107.webp)

요렇게 됩니다. 그래서 row, col은 아래처럼 매칭됩니다.

Row0 : PA4

Row1 : PA3

Row2 : PA2

Row3 : PA1

Row4 : PA0

Col0 : PA5

Col1 : PA6

Col2 : PA7

Col3 : PB0

Col4 : PB1

Col5 : PB10

Col6 : PB11

실제 펌웨어 코드에서 위 매칭을 코딩한 코드는 아래와 같습니다.

![06.png](./images/image_28c6c2d535cf4be78a5e8604c7a5a5a3.webp)

그래서 정리하면 GPIO PA7에서 신호를 쏴서 GPIO PA6에서 신호를 받았다면 gRowPin[2]에서 신호를 쏴서 gColPin[1]에서 신호를 받은 것이기 때문에 (2,1) 에 있는 스위치가 눌렸다고 펌웨어는 알게되는 겁니다. 그러면 (2, 1) 위치에 있는 keycode를 찾아서 HID keyboard report 프로토콜에 실어서 호스트(운영체제)로 보내면 됩니다.

이 글에는 좀 정식으로 HID keycode를 스펙에서 찾아보려고 했는데 못 찾았네요… 대체 어디에 있는걸까요? 저는 그냥 아래 링크에서 가져다 썼습니다.

<https://gist.github.com/MightyPork/6da26e382a7ad91b5496ee55fdc73db2>

뭐가 됐든 동작만 잘하면 되죠.

![07.png](./images/image_210b1b4ad0ab47efbbe26986afc218be.webp)

그래서 키 맵 배치는 이렇게 됩니다. Layer 0은 그냥 쓸 때고요, Layer 1은 Fn 키를 눌렀을 때입니다. 저렇게 배치한 키에 해당하는 keycode로 2차원 배열 두 개를 만들면 됩니다.

![08.png](./images/image_4ca0546b9cab4afea77fc573d1ca4262.webp)

이렇게요.

그러면 위에서 언급한 예를 다시 가져와서, (2, 1)에 키가 눌린것을 펌웨어가 알았으면 Fn도 눌린건지 확인합니다. Fn 이 안눌렸으면 gKeymap_buffer_layer0에서 찾고 Fn이 눌렸으면 gKeymap_buffer_layer1에서 찾습니다. 안눌렸다고 치고, gKeymap_buffer_layer0[2][1]이면 kA 이고 이 값은 키보드 A에 해당하는 키코드입니다.

키 스위치 매트리스에서 어떤 스위치가 눌려서 그 스위치에 해당하는 키코드가 뭔지 찾는 과정은 이 과정의 반복입니다. 동시 입력이면 이 과정을 7번 모아서 한 번에 호스트로 레포트하는 것이지요.

다음은 USB HID가 되게 끔 펌웨어를 만들어야 합니다. 방법은 USB 장치를 등록할 때 USB descriptor를 HID 스팩에 맞춰서 보내는 겁니다. 그러면 운영체제가 HID로 인식하고 어떤 HID인지 본 다음 keyboard이면 keyboard로 등록해서 keycode report를 입력으로 처리하는 겁니다.

사실 이 과정이 키보드 펌웨어 만드는 과정 중에 제일 어려운 부분입니다. 대충 있는 코드 재활용한다고 해도 USB 스펙에 대해서 겉핥기식으로도 알아야 하기 때문이죠.

대부분은 stm32의 샘플 프로젝트 코드에 다 구현되어 있기 때문에 그대로 가져다가 디스크립터만 수정하면 됩니다. 그래서 샘플 코드를 보고 대충 필요한 위치에 값만 바꾸면 되는데요. 그래도 어떤 순서로 디스크립터가 구성되는지는 알아두면 좋습니다.

![09.png](./images/image_cefe615329ff48598ee8b442317836c5.webp)

USB 디스크립터는 이 그림처럼 계층 구조로 되어 있습니다. Device Descriptor를 먼저 보내고 그 다음에 Configuration Descriptor를 보내고 Interface, Endpoint 디스크립터를 이어서 보내면 됩니다.

디스크립터가 어떻게 구성되어야 하는지는 HID 스펙 문서에 샘플로 나와 있습니다. 친절하죠?

![10.png](./images/image_7349f6da4a6444b996d102cd5fc2503c.webp)

이렇게 샘플이 있어서, 요 샘플 그대로 디스크립터를 작성해도 됩니다.

![11.png](./images/image_e8ccd1709cf74e21b111ebc9f211a2f2.webp)

대부분은 stm32의 샘플 프로젝트에 있는 코드를 그대로 썼고 몇 개 값만 바꿨습니다. HID 스펙 버전을 1.0에서 2.0으로 바꿨습니다. 최종 동작에는 어떤 차이가 있는지 모르겠네요… 마지막 필드인 Number of possible configurations가 1이므로 이 디바이스 디스크립터는 Configuration descriptor를 1개 가집니다.

이런식으로 순서대로 config, interface, HID, endpoint 디스크립터를 하나씩 수정합니다. 하나씩 다 나열해봐야 알아보기 힘든 코드 나열일 뿐이니까 디스크립터 설명은 여백이 모자라 더 이상 적지 않겠습니다.

![12.png](./images/image_db9545fe59d04ef99b87238a64c653e4.webp)

키보드 키를 누르면 펌웨어가 어떤 키가 눌렸는지 확인해서 호스트(운영체제)에 뭐가 눌렸는지 알려줘야 합니다. 위 표가 어떻게 보내라고 스펙에서 설명하고 있는 표입니다. 간단히 말해 8바이트 배열로 보내는 거고 0번 바이트에 Modifier Keys (Alt, Ctrl, Shift 같은 애들입니다.) 에 대한 내용을 넣고 1번 바이트는 0으로 채우고 2번부터 7번까지 동시 입력된 애들을 기록해서 보내라는 겁니다. HID 스펙에 따르면 키보드가 한 번에 동시 입력으로 처리해서 호스트에 보낼 수 있는 키는 최대 6개입니다. 키보드 광고에 나오는 무한 동시 입력이라는 건 대체 뭔지 모르겠습니다. 스펙에 6개라고 정해 놨는데…. 아마 어딘가에 저 길이를 조정할 수 있는 설정이 있을 텐데… 귀찮아서 찾지 않았습니다. 6개도 충분하니까요.

![13.png](./images/image_4d9963c458894b69841e4a42ce3960ca.webp)

Modifier는 키가 여러개인데 report 할 수 있는 공간은 8바이트 뿐입니다. 그래서 얘네들은 비트맵으로 레포트합니다. 각 비트의 의미는 위 표와 같습니다.

예를 들어 왼쪽 ctrl과 alt를 동시에 누르고 오른쪽 shift를 누르면 0010_0101 = 0x25 가 되는겁니다. 쉽죠?

그래서 키보드 펌웨어는 운영체제에 인식되고 나면 내부적으로 저 8바이트짜리 report를 계속 호스트에 보내기만 합니다. 물론 받기도 하는데, 컴퓨터에서 임의로 numlock 같은거 켜잖아요. 그럴때는 호스트에서 1바이트 짜리 데이터를 받아서 펌웨어가 정해진 액션을 하는겁니다. 저는 필요없어서 안만들었습니다.

대충 수도코드는 이러합니다.

Idx = 2

for row 전체 {

for col 전체 {

if 입력인가() == true {

keycode = get_keycode(row, col)

if isModifier(keycode) == true {

report[0] |= getBitmap(keycode)

continue

} else {

report[idx++] = keycode

if idx >= 8 {

goto exit_loop

} // else

} // if is Modifier

} // 입력

} // for col

} // for row

exit_loop:

sort(report)

sendToHost(report)

대충 이러합니다. 실제 코드는 위 과정을 몇 개 함수로 쪼개서 goto는 없습니다. (goto가 뭐가 어때서!!)

---

## https://www.clien.net/service/board/lecture/16586010?od=T31&po=1&category=0&groupCd=

1편 : [https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=)CLIEN  
2편 : [https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=)CLIEN  
3편 : [https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=)CLIEN  
4편 : [https://www.clien.net/service/board/lecture/16408079?od=T31&po=1&category=0&groupCd=](https://www.clien.net/service/board/lecture/16408079?od=T31&po=1&category=0&groupCd=)CLIEN  
5편 : [https://www.clien.net/service/board/lecture/16439190?od=T31&po=2&category=0&groupCd=](https://www.clien.net/service/board/lecture/16439190?od=T31&po=2&category=0&groupCd=)CLIEN  
6편 : [https://www.clien.net/service/board/lecture/16474813?od=T31&po=7&category=0&groupCd=](https://www.clien.net/service/board/lecture/16474813?od=T31&po=7&category=0&groupCd=)CLIEN

대략 25일 만에 알리익스프레스에서 주문한 키보드 스위치가 도착했습니다.

![01.png](./images/image_b319741b676b46d9ba264817a828f9c8.webp)

제가 넌클릭 스위치 키감을 좋아해서 갈축이고요. 예전에 체리 스위치로 한 번 만들어 봐서 이번에는 게이트론 스위치로 구매했습니다. 같은 갈축이라고 해도 느낌이 다르다고 하더군요. 그리고 게이트론이 체리보다 훨씬 쌉니다. 총 110개를 $30 정도에 샀습니다.

뭐 잘 만들었으리라 믿지만 그래도 중국산은 한 번 확인을 해야 하기에… 하나씩 테스터로 찍어서 동작하는지 확인해 봤습니다.

![02.png](./images/image_5c51197185f24c328e8218b7e6e03d6f.webp)

멀티미터를 회로 연결 확인하는 모드로 바꾼 다음 저렇게 연결하고 스위치를 눌러봐서 삐~ 소리가 나는지 확인해 봤습니다. 우선 필요한건 29개라서 29개만 테스트 해봤습니다. 다행히 별 문제 없네요.

![03.png](./images/image_58262a590d304afbb16887c57af85b34.webp)

바로 납땜했습니다. 사실 거의 완성입니다. 여기에 케이스 받치고 키캡 꼽으면 끝이죠.

저대로 키캡만 꼽아서 바닥에 놓고 써도 되겠네요. :)

하지만 프레임도 만들어야 겠지요. 프레임은 딱히 마땅한 재료가 없어서 그냥 구하기 쉬운 나무로 깍아보려 합니다.

집에 굴러다니는 적당한 나무판을 고르고요.

![04.png](./images/image_bf4e0d7605664b839a0a3e3399211329.webp)

PCB를 대 보고 적당한 크기를 가늠합니다.

![05.png](./images/image_1b0e6d900a734026badb649ee2ff23d0.webp)

PCB 가장자리를 기준으로 같은 너비 만큼 여유를 두고 자를까 하다가 비대칭으로 대충 놓고 만드는게 더 멋있어 보여서 그냥 대충 잘랐습니다.

![06.png](./images/image_940f8e4a37e945539a7f316061b528ec.webp)

그리고 PCB가 나무에 들어가도록 살짝 안으로 나무를 파겠습니다. PCB와 충격 흡수 패드를 포함해서 높이는 5.1mm네요.

![07.png](./images/image_192572d743c54b68bc052230b8b8480d.webp)

딱 요정도 높이로 PCB 크기만큼 파내면 됩니다.

![08.png](./images/image_0439a22fc60842978985a3f4fa450afc.webp)

사진을 찍기 위한 연출 화면이고 실제로는 라우터의 가이드에 두꺼운 나무같은 걸 대서 직선으로 지나가면서 파 내야 합니다. 가이드 없이 맨손으로 직선을 파내는건 경지에 오른 사람이나 할 수 있는 일입니다. 저 같은 비전문가는 가이드를 대고 파내도 삑사리가 나요…

![09.png](./images/image_16b10c6013994b66bf5f2e74d201e332.webp)

다 파냈습니다. 사실 제일 쫄렸던 공정인데 나쁘지 않게 된것 같군요. 안쪽에 남은 찌꺼기는 끌로 긁어서 깔끔하게 파냅니다.

한번 삑사리 나서 라인을 벗어난 부분이 있습니다. 저거 하나 때문에 전체를 다시 하기 싫어서 그냥 그대로 진행하기로 했습니다...

![10.png](./images/image_7b670364e9e8477dbf863f3743d25449.webp)

끌로 면을 정리한 다음에 모서리를 각에 맞춰 깍아냈습니다. PCB와 패드를 깔고 맞춰봤습니다.

![11.png](./images/image_751cdcee049b4ffcbdbba54ff27ef606.webp)

잘 맞네요. 그러면 이제 나무 면을 다듬겠습니다. 네모 반듯한게 싫으니 대충 느낌있게 옆 면을 쳐 내고요…

![12.png](./images/image_48c46ee635de404698ebccb5f8536562.webp)

곡면으로 될 부분을 끌로 살짝 만져준 후에 사포질을 합니다. 끝없는 사포질.

![13.png](./images/image_cd9196542e1945978a02c905b750ec9a.webp)

제가 가진 사포가 40방, 80방, 120방, 180방, 240방 요렇게 다섯 종류입니다. 40방 사포부터 시작합니다. 40방 사포는 거의 대패 수준입니다. 면을 다듬는 수준을 넘어서 깍아 냅니다. 그래서 40방 사포로 모서리등을 정리하고요. 순서대로 80, 120, 180, 240으로 바꿔가면서 사포질을 합니다.

사포질이 끝나니 좀 매끄러워 졌습니다. 이제 스테인을 먹입니다. 제가 사용한 나무는 포플러 나무입니다. 예전에 포플러 나무 아래라는 노래도 있었지요. 이 노래 알면 아재입니다…

아무튼 포플러 나무는 나무 자체 무늬와 색이 볼만해서 일반적으로 진한 색깔의 스테인을 쓰지 않습니다. 그래서 저도 네추럴 컬러라고 써 있는 스테인을 샀습니다. 스테인 사러 간 김에 400방 사포도 샀습니다.

하루 정도 말리고요… 사포질 한 번 더 한 다음 스테인을 또 먹입니다. 그리고 하루 더 말리고요. 이렇게 아홉번 하여 구증구포… 는 아니고요.. 그냥 적당히 예뻐질 때까지 스테인과 사포질을 반복합니다. 저는 한 세번 정도 했어요.

![14.png](./images/image_37ba7123d870420a9bc1aeac24b169ab.webp)

한 번만 한 거랑 별차이 없네요. 괜히 했습니다… ㅎㅎ

케이스 만드는 작업을 하고 있다보니 나무판이 너무 평평하다는 생각을 했습니다. 키보드라는게 키가 박힌 보드니까 평평한게 당연한건데, 저는 약간 경사가 있으면 좋을 것 같습니다.

![15.png](./images/image_af7b5fa989dd42b8b8551b9e062687bf.webp)

리버스 틸트라고 하던데, 키보드 스페이스 쪽이 높고 숫자키쪽이 더 낮은 방식으로 경사를 주는 것입니다. 사람 손목이 앞으로 내려가는게 손목에 부담을 덜 준다고 합니다.

![16.png](./images/image_30e6e661b2e84eaeaa899f85780fc6fe.webp)

그래서 대충 이런 느낌으로 손목이 되는걸 기대하는 거지요.

나무판의 아래 면을 사선으로 컷팅해서 리버스 틸팅을 만들어보려고 했는데 제가 공구가 없어서 받침대를 따로 만들어서 붙이기로 했습니다.

![17.png](./images/image_4e8ddc719b8b4adf9f125cccc27d6ad5.webp)

받침대가 붙어있는 곳이 팜레스트 아래쪽입니다. 그래서 위 사진 기준으로 뒤집어서 평평한 책상에 놓는다면 리버스 틸팅이 되는것이지요.

받침대가 잘 붙고 나면 스테인을 몇 번 더 칠하고, 우레탄 코팅을 해서 케이스를 완성합니다.

![18.png](./images/image_377d823de5ac4d8e8dc96cfeef576526.webp)

파낸 부분에 PCB가 들어가고요. 아래쪽에 넓은 부분은 팜레스트입니다.

나무로 케이스 깍아서 만드는 동안 키캡을 주문했습니다. 키캡은 OEM 프로필로다가 PBT 염료승화 어쩌구 방식으로 적당한거 골라서 주문했습니다.

![19.png](./images/image_cbe43ce2743940308badf5cfac3e2636.webp)

이렇게 포장되서 배송받았습니다. 퀄리티 나쁘지 않네요. 키캡을 PCB에 꼽아 보겠습니다.

![20.png](./images/image_fa86b6f9bb2243689d6fc3f4d8b5f4a1.webp)

이제 좀 키보드처럼 보이네요. 스페이스 바는 원래 2.25u를 쓰려고 했는데, 키캡을 한 세트만 사서 2.25u 키캡이 엔터 하나밖에 없더군요. 그래서 그냥 2u 키캡을 꼽았습니다. 그래서 Alt 키와 간격이 넓어졌는데 크게 티 나지 않네요. 그래서 그냥 쓰기로 했습니다. 그러면 앞서 만든 케이스와 PCB를 합체!

![21.png](./images/image_c4923f3a9939472f9940902e59dfbed8.webp)

이래서 완성한 어고노믹스 분리형 리버스 틸팅 키보드의 왼쪽 반입니다. 지금은 왼쪽 손은 새로 만든 키보드로 타이핑하고 오른쪽 손은 원래 쓰던 키보드로 타이핑해서 쓰고 있습니다. 이렇게만 써도 꽤 편하네요. 키보드는 좌우 분리형이 진리인듯 합니다.

이제 지금까지 과정을 그대로 반복해서 오른쪽 파트를 만들면 되겠네요. 다음 글이 아마 마지막편이 될것 같습니다. 오른쪽 파트 만드는 과정을 쭉 빠르게 써 볼 예정입니다.

---

## https://www.clien.net/service/board/lecture/16615720?od=T31&po=0&category=0&groupCd=

1편 : [https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405159?od=T31&po=0&category=0&groupCd=)CLIEN  
2편 : [https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16405208?od=T31&po=0&category=0&groupCd=)CLIEN  
3편 : [https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=](https://www.clien.net/service/board/lecture/16408035?od=T31&po=0&category=0&groupCd=)CLIEN  
4편 : [https://www.clien.net/service/board/lecture/16408079?od=T31&po=1&category=0&groupCd=](https://www.clien.net/service/board/lecture/16408079?od=T31&po=1&category=0&groupCd=)CLIEN  
5편 : [https://www.clien.net/service/board/lecture/16439190?od=T31&po=2&category=0&groupCd=](https://www.clien.net/service/board/lecture/16439190?od=T31&po=2&category=0&groupCd=)CLIEN  
6편 : [https://www.clien.net/service/board/lecture/16474813?od=T31&po=7&category=0&groupCd=](https://www.clien.net/service/board/lecture/16474813?od=T31&po=7&category=0&groupCd=)CLIEN  
7편 : [https://www.clien.net/service/board/lecture/16586010?od=T31&po=1&category=0&groupCd=](https://www.clien.net/service/board/lecture/16586010?od=T31&po=1&category=0&groupCd=)CLIEN

지난번까지 작업으로 컨트롤러를 포함한 분리형 키보드의 왼쪽 파트를 완성했습니다. 오른쪽 파트는 지금까지 했던 작업을 한 번 더 하는 작업입니다. PCB 디자인해서 주문하고 스위치 납땜하고 키캡 끼우고 케이스 깍아서 만드는 작업이지요. 여기까지가 했던 작업 반복이고 추가 작업이라면 왼쪽 파트와 오른쪽 파트를 전선으로 연결하는 작업 정도입니다.

그럼 먼저 PCB를 디자인하겠습니다. 왼쪽 작업할 때랑 마찬가지로 회로도를 먼저 그리고요.

![01.png](./images/image_5dd0bb82ba2e4dada14d9559a44ce822.webp)

회로도 자체는 더 간단합니다. 컨트롤러 없이 스위치만 있기 때문입니다.

![02.png](./images/image_eabcaa7204ab4d0d9e8acf06b92bc9a3.webp)

그리고 PCB를 디자인합니다. 어고노믹스 스타일로 손가락 위치에 맞춰 적당히 꺽었습니다.

![03.png](./images/image_06813595e17e4ad5b0d33c893b0402d0.webp)

PCB를 주문합니다. 키캡이랑 스위치는 왼쪽 만들 때 주문해놨기 때문에 PCB만 추가로 주문하면 됩니다. 주문 완료하고 배송을 기다립니다.

PCB가 주말을 넘겨서 도착할 것으로 보이므로 주말에 케이스를 먼저 깍기로 결정합니다. 어차피 PCB 크기는 KiCAD에서 작업한 크기 딱 맞춰서 제작되어 올 것이므로 KiCAD에서 gerber 대신 SVG나 PDF로 plot 합니다. 그러면 프린터로 출력할 수 있는 svg나 pdf 파일 포멧으로 출력됩니다.

![04.png](./images/image_6265df688a3c44e3b4b577036393f56d.webp)

저는 pdf로 출력했습니다. PCB 기판 자체가 출력 용지 크기보다 작으므로 1:1 크기로 출력하면 실제 PCB 크기로 출력됩니다.

출력한 종이를 잘 오려서 집에서 굴러다니는 나무 판대기에 남은 부분에 잘 대 봅니다.

![05.png](./images/image_a467f44b09f14fcc8b79d89894b70f68.webp)

그리고 적당히 크기를 잡아서 자릅니다. 왼쪽 파트는 대충 정사각형에 가까운 모양이었는데 오른쪽 파트는 방향키를 포함하다보니까 옆으로 긴 직사각형에 가까운 모양입니다. 이제 파내고 깍아내고 사포질 해서 키보드 케이스를 대충 만듭니다.

![07.png](./images/image_7def55095197460e865d4f33f05cbdb2.webp)

완성입니다. 종이를 대보면 딱 맞는데 실제 PCB는 과연 맞을지 안맞을지 궁금하네요. 안맞으면 이 작업 또 해야 합니다…

![08.png](./images/image_780d9cf427c4460eae19390beeef12d1.webp)

PCB가 도착했습니다. 바로 다이오드와 스위치를 납땜하겠습니다.

![09.png](./images/image_05a4066ea5384eae92c09dc6826c9b68.webp)

PCB는 완료했고, 이제 케이스에 스테인 칠하고 사포질하고 우레탄 발라서 케이스를 완성하겠습니다. 그리고 바로 PCB를 얹어 보죠.

![10.png](./images/image_defcb27e5c70409c97dd9aeae1deec2f.webp)

거의 다 했습니다. 왼쪽 파트와 오른쪽 파트를 전선으로 연결하겠습니다. 전선길이는 적당히 본인의 어깨 너비보다 조금 넓은 수준이 적당해 보입니다. 여러 테스트를 해 보니 거의 대부분은 어깨 넓이 정도 수준으로 놓고 쓰는데 장시간 앉아서 자세가 흐트러지다 보면 의자에 점점 눕게 되고 키보드를 치는 양손도 벌어지게 되더라고요.

전선으로 뭘 쓸까 고민하다가 그냥 집에 굴러 다니는 랜 케이블(UTP라고 하죠)을 하나 희생하기로 했습니다. 총 13가닥이 필요한데 UTP 케이블 하나에는 8가닥이 들어 있으므로 UTP 두 줄을 쪼갭니다.

멀티미터로 찍어가면서 어느 핀에서 출발한 전선인지 찾아서 정확한 위치에 납땜합니다.

![11.png](./images/image_7beb8fc087ad4517b9cb3aca911046eb.webp)

케이스에 PCB를 고정하면 완성입니다.

![14.png](./images/image_9b916e08612247da9b52e7bf65583559.webp)

![16.png](./images/image_8e7564f9813b4cd89c6dcf277e9814bc.webp)

![17.png](./images/image_cc1d1db5f0f0419e9a4851df4e945d61.webp)

지금 이 글은 새로 만든 위 사진에 보이는 키보드로 작성하고 있습니다. 기분 탓일 수도 있겠지만 손가락이 더 편한 것 같기도 하고 아닌것 같기도 하고 그렇습니다. :)

총 제작 기간은 두 달 반 정도 걸렸네요. 대부분 시간은 알리익스프레스에서 주문한 부품 배송 기다리는 시간이었고 실제 작업 시간은 다 합쳐 봐야 한 일주일 정도였던것 같습니다.

막연히 PCB로 키보드 만들어야겠다고 생각하고 처음 계획했던 목표를 거의 달성했습니다. 처음 계획할 때부터 부족한 부분이라고 생각했던 부분이 두 군데 있는데요.

![12_check.png](./images/image_13a6a224f59f4ea784d9761fbbde7518.webp)

요 두 부분입니다. 만약 다음에 또 키보드를 자작하게 되면 컨트롤러는 PCB에 직접 실장하고 저 와이어 연결부분도 시리얼라이즈해서 전선 두세개 정도로 줄여보고 싶습니다. 아니면 아싸리 전부 무선으로 하거나...ㅎㅎㅎ

끝.

---

