---
title: "318Na 세벌식 자판"
date: 2021-12-13T17:18:03-07:00
draft: false
---


프로젝트 URL: [https://github.com/navilera/318Na_HangulKeyboard](https://github.com/navilera/318Na_HangulKeyboard)

* 2018.12.25: 글 씀
* 2019.04.23: 자판에 겹받침을 시프트 문자에 추가 배정

3-18Na 자판은 기존 두벌식 자판 배열을 전혀 수정하지 않고 세벌식 자판을 구현한 자판입니다. 이 자판은 기계식 타자기로 구현이 아마 불가능 할 겁니다. 인간의 능력은 무한하므로 아마 구현 하는 사람이 있을지도 모르겠으나 지금은 아마 구현이 안될 거라 생각됩니다. 3-18Na 자판은 도깨비불 현상을 용인합니다. 하지만 두벌식 수준으로 종성이 나타났다가 다음 글자의 초성으로 획 이동하는 그런 수준의 도깨비불 현상은 아닙니다. 종성이 보이되 그 모양이 종성을 유지한채 바뀌는 수준의 도깨비불 현상입니다.

![3-18Na 자판 배열](/images/2021/bb42d9bcec337de07c6f993f84dbe09464dc9167b7caf4b6ba4dd8359899557d.png)

완성된 3-18Na 자판의 배열은 위 그림과 같습니다. 이제부터 왜 이런 자판 배열을 만들었는지 설명하겠습니다. 

중성과 종성은 한 키에 배치해도 서로 꼬이지 않습니다. 이중 모음만 피하면 말이죠. 음운학적으로 이중 모음은 ㅑ,ㅕ,ㅛ,ㅠ,ㅒ,ㅖ,ㅘ,ㅙ,ㅝ,ㅞ,ㅢ 이지만 저는 키보드에서 모음을 두번 타이핑해서 만드는 모음만을 고려 대상으로 하겠습니다. 그러면 ㅒ,ㅖ,ㅘ,ㅙ,ㅝ,ㅞ,ㅢ가 대상이 됩니다. ㅒ,ㅖ는 연타로 입력을 하고 나머지는 두 키를 눌러서 입력기가 조합하여 만들어 내는 자모입니다. 이들의 공통점을 도출하면 ㅏ, ㅓ, ㅣ 그리고 ㅐ와 ㅔ로 조합이 완료된다는 것입니다. 이점이 왜 중요하냐면, 이들 다섯개 키에는 종성을 배치할 수 없기 때문입니다. 예를 들어 ㅣ키에 ㄹ 받침을 배치했다면 "의"를 두드릴 때와 "을"을 두드릴 때의 차이를 오토마타가 구분할 수 없기 때문입니다. 물론 "으->의->을"의 변화를 거치도록 오토마타를 만들 수 있겠지만, 같은 이유로 "을"과 "읠"을 구분할 수 없게 됩니다. 그래서 복잡도를 줄이기 위해 이중 모음을 완성하는 키에는 종성을 배치하지 않기로 결정을 했습니다.

그러면, 종성 배치가 가능한 키는 ㅛ, ㅕ, ㅑ, ㅗ, ㅠ, ㅜ, ㅡ 이렇게 7개입니다. 겹받침을 조합으로 입력한다 해도 필요한 종성은 ㄴ, ㄹ, ㅇ, ㄱ, ㅅ, ㅁ, ㅂ, ㅎ, ㅌ, ㄷ, ㅍ, ㅈ, ㅊ (사용 빈도순) 이렇게 14개입니다. 이중 ㄱ 과 ㅅ 은 쌍자음이 받침으로 사용됩니다. "갂" 과 "갔" 같은 글자 말이죠. 그래서 (ㄱ, ㄲ), (ㅅ, ㅆ)을 하나로 묶어서 배치하는 것이 타당해 보입니다. 그러면 남은 키는 5개, 남은 종성은 12개입니다. 앞서서 (ㄱ, ㄲ) 과 같이 한 키에 종성을 두 개 배치했으므로 다른 키에도 종성을 두 개 씩 배치해 보겠습니다. 그러면 남은 5개 키에는 종성을 최대 10개 까지만 넣을 수 있습니다. 2개가 남습니다. 선택을 해야 했습니다. 키 두 개를 선정해서 종성을 세 개 배치할 것인가 아니면 특수 문자 키를 사용할 것인가에 대한 선택이죠. 저는 두 번째 안을 선택했습니다. 우리가 키보드에 열 손가락을 얹어 놓은 모습을 보면 오른손 새끼 손가락에만 글자가 아닌 특수 문자인 세미콜론(;)이 있습니다. 그리고 세미콜론은 한글 문서 작성에서 거의 사용하지 않는 문자이기도 합니다. 때문에 다른 세벌식 자판에서도 이 세미콜론 키는 모두 다 글자를 할당해서 쓰고 있었습니다. 그러면 6개 키에 12개의 종성을 넣을 수 있습니다. 이제 키는 확보되었으니 어디에 배치할 지를 결정하는 일만 남았습니다.

세미콜론 키를 제외한 ㅛ, ㅕ, ㅑ, ㅗ, ㅠ, ㅜ, ㅡ 모음 키는 오른손 검지와 중지로 누르는 키입니다. 열손가락 중에서 가장 힘이 쎈 키라고 할 수 있지요. 다른 세벌식 자판도 되도록이면 빈도가 많은 글자를 검지와 중지에 배정하는 경향을 보였습니다. 이는 당연한 생각이라 여겨집니다. 3-18Na 자판에서는 모든 종성이 오른손 검지와 중지로 눌리므로 종성 중에서도 빈도가 높은 글자를 되도록 검지에 배치하고 가장 빈도가 낮은 종성은 무조건 세미콜론 자리로 배치했습니다. 그래서 ㅈ 과 ㅊ은 자연스레 세미콜론 자리로 갔습니다. 

가장 빈도가 높은 ㄴ 종성부터 배치하도록 하죠. 당연히 손가락의 이동거리를 최소화 하는 위치에서 검지로 누르는 키에 배치했습니다. 바로 ㅗ 키이죠. 대기 시간에 오른손 검지는 영문자 J 키에서 대기하므로 빈도가 높은 ㄴ 받침은 J 바로 옆에서 누를 수 있게 했습니다.

그다음 빈도가 높은 ㄹ 받침은 기본 위치 기준 이동거리가 같은 ㅕ와 ㅜ 중에 골라야 했습니다. 여러번 눌러보니 손가락을 펴서 누르는 ㅕ보다 손가락을 굽혀서 누르는 ㅜ가 더 편했기에 ㅜ에 받침 ㄹ을 배치했습니다. 딱히 과학적인 이유는 아닙니다. 어차피 저 혼자 쓰려고 만든건데요 뭐. 

지금까지 기준이라면 이제 ㅕ 위치에는 다음으로 사용 빈도가 높은 ㅇ 받침이 와야 겠지만 (ㅅ, ㅆ)을 배치했습니다. 왜냐하면 ㅅ 종성을 연타해서 완성하는 ㅆ 받침이 우리말에서 정말 많이 쓰이기 때문이지요. 당장 이 글만 해도 "있습니다.", "했습니다"가 정말 많이 나오지요. 

이제 남은 키는 ㅛ, ㅑ, ㅠ, ㅡ 입니다. 배치할 받침은 ㅇ 입니다. ㅛ, ㅠ 는 검지로 누르는 키입니다. ㅑ, ㅡ 는 중지로 누르는 키입니다. 검지로 누르긴 하지만 ㅛ는 이동 거리가 깁니다. ㅠ는 심지어 원래 오른손으로 누르는 키가 아닙니다. 차라리 이동 거리가 짧은 ㅑ, ㅡ가 더 나은 선택으로 보입니다. 중지는 손가락이 길어서 인지 펴서 누르는 ㅑ가 ㅡ보다 좀 더 편하더라구요. 그래서 ㅑ에 받침 ㅇ을 배치했습니다. 순전히 내 개인적인 경험적 결정입니다. 참 과학적 근거 없는 자판 배열이라는 생각이 듭니다. 뭐 때로는 직관이 더 훌륭한 답일 때도 있으니까요.

이제 (ㄱ, ㄲ)을 ㅡ에 배치할지, ㅛ에 배치할지 결정해야 합니다. 여러번 실험해 봤더니 재미있는 현상이 발견되었습니다. 오른손으로 두드리는 종성의 위치가 무의식적으로 왼손으로 입력하는 자음 배치를 따라 간다는 것이었습니다. 받침 ㄱ 혹은 ㄲ을 두드려야 겠다고 마음 먹은 순간 오른손 검지가 자판의 위쪽 배열로 이동하더라는 겁니다. 왜냐하면 왼손 자음 배치에서 ㄱ이 ㅅ옆에 윗 쪽 배열에 있기 때문입니다. 놀라운 발견이었습니다. 그래서 ㅛ 키에 (ㄱ, ㄲ)을 배치했습니다.

남은 받침은 ㅁ과 ㅂ입니다. 빈도가 더 높은 ㅁ을 ㅡ 키에 배치했습니다. 왜냐면 ㅠ키가 비록 검지로 누르는 키이긴 하지만 원래 왼손으로 누르는 키이기 때문에 ㅡ가 실제로는 누르기 더 편할거라고 생각했기 때문입니다. 그리고 남은 ㅠ에 ㅂ을 배치했습니다.

이제 남은 종성 자모는 사용 빈도가 비교적 낮은 ㅎ, ㅌ, ㄷ, ㅍ, ㅋ 입니다. ㅊ은 이미 ㅈ과 함께 세미콜론에 배치했습니다. 남은 종성 자모를 배치함에 있어 겹받침의 조합을 고려해야 합니다. 현대 한글 겹받침은 ㄲ, ㅆ, ㄳ, ㄵ, ㄶ, ㄺ, ㄻ, ㄼ, ㄾ, ㄿ, ㅀ, ㅄ, ㄽ 이렇게 13가지 입니다. ㄲ 과 ㅆ은 이미 배치했습니다. 그러므로 남은 11개 겹받침의 조합을 고려해서 배치해야 합니다. 이중 ㄳ, ㄵ, ㅄ 은 이미 배치한 종성으로 조합되는 겹받침이므로 역시 고려 대상이 아닙니다. 그러면 ㄶ, ㄺ, ㄻ, ㄼ, ㄾ, ㄿ, ㅀ, ㄽ 이렇게 8개가 남네요.

ㄶ을 먼저 보겠습니다. ㄴ은 이미 배치되어 있습니다. 그러면 ㅎ의 자리를 정해야 합니다. 받침 ㅎ은 단독 받침외에도 ㄶ과 ㅀ의 조합을 완성하는 글자이기도 합니다. 따라서 ㄴ과 ㄹ 받침과 겹받침을 만들 때 서로 간섭하지 않는 글자와 같은 키를 사용해야 합니다. 저는 ㅇ을 선택했습니다. 한글 제자 원리로 보더라도 ㅇ과 ㅎ은 가까운 글자입니다. 그리고 도깨비불 현상을 봐도 "행" -> "햏" 으로 변하는 과정이 시각적으로도 손으로 글씨를 쓰는 듯한 자연스러운 변화 이므로 (물론 손글씨를 쓸 때는 ㅎ의 머리를 먼저쓰긴 하지만 아무튼 ㅇ과 ㅎ은 모양이 비슷하니까요) 시각적으로도 거부감이 덜 합니다. 오토마타 측면에서 보더라도 ㄹ+ㅇ, ㄴ+ㅇ의 겹받침은 없으므로 ㅎ이 단독 받침으로 쓰일 때도 키 두 번 눌러서 입력이고 겹받침으로 쓰일 때도 오토마타가 조합이 없는 ㅇ은 건너 뛰고 바로 ㅎ을 인식해서 키 두 번 눌르는 것으로 입력이 됩니다.

이제 남은 겹받침은 ㄺ, ㄻ, ㄼ, ㄾ, ㄿ, ㄽ로 모두 ㄹ과 조합하는 겹받침입니다. 그리고 아직 배치를 완료 못한 종성 자모는 ㅌ, ㄷ, ㅍ, ㅋ 입니다. 이중 ㄹ과 겹받침을 만들지 않는 글자는 ㄷ, ㅋ 입니다. 이 둘 중 하나가 ㄹ과 한 키에 배치되어야 합니다. 왜냐하면 ㄹ과 조합하여 겹받침을 만드는 글자가 ㄹ과 같이 있으면 타자가 의도한 글자가 나오지 않기 때문입니다. 예를 들어 (ㄹ, ㅍ)이 한 키에 배치되어 있다면, "릎'을 입력하고 싶은데 "르->를->릂"이 되어 버리기 때문입니다. 물론 오토마타에서 처리하여 한 번 더 같은 키를 누르면 "르->를->릂->릎"이 되게 할 수는 있으나 오토마타를 복잡하게 하면서까지 ㄹ과 조합하여 겹받침을 만드는 글자를 ㄹ과 같은 키에 배치해서 얻을 수 있는 이득이 별로 없습니다. 그래서 ㄹ과 겹받침을 만들지 않는 ㄷ이나 ㅋ을 ㄹ과 같은 키에 배치하면 오토마타도 단순화하고 글자를 완성하는데 누르는 키의 횟수를 줄일 수 있습니다. 결론적으로 (ㄹ, ㅋ)을 배치했는데 (ㄹ, ㅋ)이 된 이유는 얘네들 보다 (ㅁ, ㄷ)의 이유가 더 큽니다.

(ㅁ, ㄷ)으로 결정된 가장 큰 이유는 시각적 효과 때문입니다. 처음에는 크게 의도하지 않았는데, 자판 개발 과정에서 도깨비불 현상을 되도록 긍정적으로 최대한 적극적으로 이용할 수도 있을 거란 생각이 들었습니다. 이왕 생기는 현상인데 시각적 효과를 이용해보잔 발상이었죠. 예를 들어 (ㅇ, ㅎ) 같은 경우죠. (ㄱ, ㄲ)이나 (ㅅ, ㅆ) 도 마찬가지로 도깨비불 현상 덕에 오히려 더 손으로 글자를 쓰는 듯한 느낌이 들었습니다. 우리가 ㅆ을 손으로 쓸 때 ㅆ을 한 번에 못 쓰잖아요. ㅅ 한 개 쓰고 그 옆에 ㅅ을 써서 ㅆ을 만들 듯 키보드를 두드리면서도 "잇->있"으로 받침 ㅆ이 만들어지는 과정이 시각적으로 표현되는게 괜찮아 보였습니다. (ㅁ, ㄷ)을 엮었을 때 제가 원하는 모습은 "칟 -> 침" 으로 획이 증가하는 방향으로의 변화였지만 ㅁ과 ㄷ은 빈도수의 차이가 너무 크기에 순서를 바꿔서 얻는 것보다 손해가 더 크다고 판단되어 비록 획이 감소하는 방향의 변화이긴 하지만 되도록이면 시각적 효과를 고려해 (ㅁ, ㄷ)을 엮기로 결정했습니다.

마찬가지로 "ㄹ->ㄷ" 보다는 "ㄹ->ㅋ"이 시각적으로 더 자연스러워 보이기도 하고요.

이제 남은 종성 자모는 ㅌ과 ㅍ입니다. 두 글자 모두 ㄹ과 조합되어 겹받침을 만드네요. 그러면 두 글자 중 빈도수와 시각적 효과를 고려해서 ㅌ이 ㄴ과 같은 키를 쓰게 되었고 ㅍ이 ㅂ과 같은 키를 쓰게 되었습니다. 

문제는 ㅍ입니다. 같은 키를 쓰는 ㅂ도 ㄹ과 겹받침을 만들고 ㅍ도 ㄹ과 겹받침을 만듭니다. 원칙대로라면 ㅊ과 자리를 바꾸어 (ㅂ, ㅊ), (ㅈ, ㅍ)으로 구성해야 하지만, ㅈ과 ㅊ이 너무도 강력한 관계라는 것이 문제였습니다. 한글 제자 원리 상으로 보나 시각적 효과로 보나 (ㅈ, ㅊ)은 도저히 떠어 놓을 수 없었습니다. 저는 할 수 없었습니다....

다행히 우리말에서 ㄿ은 "읊다" 할 때 (읊조리다 등) 밖에 쓰지 않습니다. 정말 단 한글자 읊을 표기하기 위해 존재하는 겹받침입니다. 거의 쓸일이 없기에 부득이 하게 "을->읇->읊"으로 변화하는 오토마타로 처리하도록 할 수 밖에 없었습니다. 지금도 아쉬움이 남는 결정입니다. (ㅈ, ㅊ)은 참으로 깨뜨리기 싫은 완결성에서 오는 그 어떤 심리적 저항감 같은 것이 있습니다.

그리고 마지막으로 (ㅈ, ㅊ)에 의해서 자리를 빼았긴 세미콜론은 시프트+L로 갔습니다. 그러다보니 시프트+J와 시프트+K도 뭔가를 채우고 싶어서 손가락이 많이 이동해야 해서 두드리기 어려운 ㅄ과 ㄺ을 각각 넣었습니다. ㅄ과 ㄺ은 시프트를 누르지 않고도 입력할 수 있기 때문에 타자의 취향에 따라 사용하면 됩니다. 

(2019.04.23 자판 배열 수정) 만든 3-18Na 자판으로 십만자 이상 글을 써 보니 의외로 겹받침을 한 번에 입력하는 것이 편했습니다. 비록 시프트키를 누르더라도 한 번에 겹받침을 입력하는 것이 자판을 두 번 눌러서 입력하는 것보다 편했습니다. 그래서 겹받침 ㄶ, ㅀ, ㄼ, ㄻ 네 개를 각각 시프트+H, 시프트+I, 시프트+B, 시프트+M에 배정했습니다.

이렇게 해서 3-18Na 자판의 구성 이유를 모두 설명했습니다. 저는 이 글을 3-18Na 자판으로 쓰고 있습니다. 꽤 긴 글임에도 확실히 두벌식보단 좀 나은것 같다는 생각은 듭니다. 두벌식과 초중성이 완전히 같은 자판 배열을 사용하기 때문에 학습이 매우 빠르다는 장점이 있지만 반대로 계속 두벌식과 헤깔린다는 단점도 있네요. 그런데 두벌식과 헤깔리는 것은 다른 세벌식 자판을 연습할 때도 두벌식 사용자가 경험하는 현상이기 때문에 향후에 제가 3-18Na 자판에 익숙해진 다음에도 계속 두벌식 자판과 헤깔리는 현상이 나타나는지 확인해 봐야 할 문제입니다. 아직은 저도 초창기라 모르겠습니다.

(2019.04.23 추가) 3-18Na 자판을 사용한지 약 4개월 지난 시점에서 추가합니다. 4개월 동안 3-18Na 자판으로 십만자 이상 글을 써보고 내린 결론입니다. 두벌식과 완전 호환이라는 장점은 꽤 강력합니다. 저는 문제없이 두벌식과 3-18Na 자판을 사용합니다. 처음에 조금 버벅이는 시간이 지나면 다시 전처럼 두벌식으로 고속 타이핑도 가능하고 또 30분 내외 적응 시간이 지나면 3-18Na 자판으로 타이핑할 수 있습니다.

이 자판은 자판 전문 연구가들이 보기에 지적하고 싶은 부분이 매우 많은 자판일 거라 생각됩니다. 그러나 제가 다른 세벌식 자판을 연습하면서 제가 느낀 불편함과 납득할 수 없던 설계 요소를 나만의 방식으로 해결했습니다. 저는 매우 잘 사용하고 있지요. 그러한 연유로 나는 딱히 3-18Na 자판이 널리 사용되길 바라는 마음이 있지도 않습니다. 다만, 저의 시간과 노력을 투입해 만들었고 과정 중에 많은 오픈 소스 소프트웨어를 수정했으므로 이왕 이렇게 된 김에 공개하는 것이 나와 비슷한 사람에게 도움을 줄 수 있을 꺼라 생각하여 공개를 결정했습니다. 그래서 3-18Na 자판을 쓰건 말건 그것은 이 글을 읽는 사람의 마음입니다. 그리고 지적이나 비판, 비난은 정중히 삼가합니다. 이미 확정된 자판 배열로 연습을 거의 다 했는데, 또 어떤 지적으로 자판 배열을 바꾸어야만 하는 고민을 하거나 유혹을 받고 싶지 않습니다.

자판 배열에도 GPL이 적용되는지는 모르겠으나 3-18Na 자판은 GPL3.0 입니다.