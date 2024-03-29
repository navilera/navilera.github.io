---
title: "코마 마크다운파서"
date: 2022-06-19T05:03:17-07:00
draft: false
---

# 마크다운파서

나는 책 세 권을 썼다. 첫 번째 책은 2007년에서 2008년에 걸쳐 썼다. 당시에 나는 문서 작성은 당연히 워드 프로세서를 써야 하는줄 알았다. 그래서 아래아 한글로 책 한 권을 다 썼다. 두 번째 책은 2010년에서 2012년까지 약 2년 동안 썼다. 이 책도 워드 프로세서로 썼다. 그런데 아래아 한글을 쓰지 않고 오픈 오피스로 썼다. 세 번째 책은 2017년에서 2018년까지 썼다. 세 번째 책은 LaTeX로 썼다. 이 때 나는 워드 프로세서로 스타일 편집하는 것이 아니라 조판 도구로 문서 만드는 것이 더 편하다는 것을 알았다. 그 후로 LaTeX의 복잡함 대신 마크다운을 이용해서 글을 쓴다. 만약 내가 네 번째 책을 쓴다면 아마 마크다운으로 책을 쓸 것 같다.

내 글은 거의 대부분 소스 코드가 있고 그 코드를 설명하는 내용으로 된 글이 많다. 내 책 세 권은 모두 그런 스타일이고 주로 쓰는 글도 그렇다. 소스 코드와 함께 글을 쓸 때마다 매번 고민하는 것이 있다. 소스 코드를 줄 단위로 인용해서 설명을 하는 가장 효율적인 방법은 무엇일까 하는 것이다. 현재까지 내가 찾은 방법은 소스 코드에 줄 번호를 달고 줄번호를 이용해서 인용하는 것이다.

```c
uint32_t putstr(const char* s)
{
    uint32_t c = 0;
    while(*s)
    {
    Hal_uart_put_char(*s++);
    c++;
    }
    return c;
}
```

예를 들어, 위와 같은 코드를 인용한다면 아래와 같이 각 라인에 줄 번호를 붙이는 것이다.

```c
01|    uint32_t putstr(const char* s)
02|    {
03|        uint32_t c = 0;
04|        while(*s)
05|        {
06|        Hal_uart_put_char(*s++);
07|        c++;
08|        }
09|        return c;
10|    }
```

이렇게 줄 번호를 붙이면 번호를 이용해 코드를 설명할 수 있다. 참고로 위 코드는 내가 개발한 RTOS인 나빌로스 소스 코드에서 가져왔다. 04번째 줄 부터 08번째 줄 까지의 코드를 다시 인용한다.

```c
04|        while(*s)
05|        {
06|        Hal_uart_put_char(*s++);
07|        c++;
08|        }
```

그러면 위와 같이 코드 조각을 따로 인용하고 해당 코드를 조각 조각 나눠 설명하는 식이다. 나는 이런식으로 글 쓰는 것을 좋아한다. 인용한 코드에는 원본의 줄번호가 그대로 나와서 원본에서 어느 부분의 코드인지 찾아보기 쉽도록 의도했다.

첫 책을 쓸 때는 출판사에서 원고 코드에 줄번호를 달아서 편집본을 내게 줬다. 그 편집본을 받아서 본문에 몇 번째 줄, 몇 번째 줄을 일일이 수작업으로 달았다. 두 번째 책은 소스 코드가 많지 않아서 별로 어렵지 않았고, 세 번째 책은 LaTeX의 플러그인으로 처리했다. 하지만 완전히 동작하진 않아서 수작업이 필요했다.

마크다운 자체는 그저 스타일링을 아주 단순한 문법으로 표현하는 포멧 규칙일 뿐 위에서 말한 줄번호 넣기라든지 줄번호 참조 같은 기능 따위는 없다. 그래서 마크다운 일부를 읽어서 줄번호를 넣어주고 해당 줄번호를 참조해서 변환하는 파서겸 변환기를 만들었다.

## 방법을 고민

해당 목적을 달성하기 위해 내가 활용할 수 있는 방법은 많다. 가장 단순하고 빠르게 구현할 수 있는 방법은 그냥 python으로 줄 단위로 변경하는 것이다.

예를 들어, 아래 같은 마크다운을 정의한다.

```
    -->
      어떤 코드;
      어떤 코드;
      어떤 코드;
      어떤 코드;
    <--
```

마크다운 문법에 '-->'로 시작하고 '<--'로 끝나는 태그는 없다. 내가 임의로 정한 태그다. 해당 블록안에 있는 코드에 자동으로 줄번호를 다는 컨버터를 만드는 것이다. python으로 아래 코드 정도로 간단히 만들 수 있다.

[Code 01-01]
```python
01|    def conv_code(self, il):
02|        if il == "-->\n" or il == "<--\n":
03|            if il == "<--\n":
04|            self.code_line_number = 0
05|            return "```\n"
06|        ln_il = str(self.code_line_number) + "    " + il
07|        self.code_line_number += 1
08|        return ln_il
```

코드 [01-01]은 내가 실제로 사용했던 코드 중 일부다. 파라매터 il은 원본 원고 마크다운 문서를 한 줄 씩 읽어서 전달한 것이다. 02번째 줄에서 시작 태그와 끝 태그를 찾고 04번째 줄은 시작 태그일 때 줄 번호를 초기화한다. 그리고 06번째 줄에서 줄번호를 맨 앞에 붙이고 적당한 공백을 넣고 원본 내용을 넣어서 문자열을 새로 만든다. 이러면 원본 마크다운 소스코드에 줄 번호가 들어가게 된다.

이렇게 방향을 잡고 프로그램을 만들기 시작하면 초기에는 결과를 빨리 볼 수 있어 좋다. 그러나 언제나 그렇듯 요구 사항은 늘어난다. (혼자 만들고 혼자 쓰는 프로그램임에도!!!!) 요구 사항이 늘어나고 복잡해 질 수록 코드를 유지 보수하기 어려워진다. 가장 큰 문제는 이런 코드는 어떤 식으로든 반드시 스파게티 코드가 되어 버린다는 것이다.

그럼에도 만약 이 작업이 회사에서 하는 일이고 빠른 결과가 나와야 하는 일이라면 나는 이렇게 그냥 파이썬으로 빠르게 작업하고 말았을 것이다. 하지만 지금 이 작업은 그냥 내가 취미로 하는 일이다. 취미로 하는 일이기 때문에 뭔가 조금 더 그럴듯하고 조금 더 시간이 걸려도 된다.

그럼 조금 더 복잡하게 줄 단위로 읽어서 정규 표현식을 적용하여 필요한 변경 요소를 찾는 것이다. 나쁘지 않은 방법이다. 그런데 이왕 이렇게 할 바엔 차라리 파서까지 만들어 볼까하는 생각이 든다.

파서를 만들어서 처리하면 내가 변환하고 싶어하는 부분에 속성(attribute)을 부여할 수 있다. 그러면 코드 자체가 다소 복잡해 지더라도 코드의 구조를 파악하기가 더 쉽다. 어찌 됐든 속성을 부여한 파서 코드에서 부터 시작해서 필요한 부분을 찾아볼 수 있기 때문이다.

## 필요한 부분만 파싱하는 파서 정의

작성할 글에는 코드 블록이 두 종류 필요하다. 하나는 마크다운 코드 블록 그 자체다. 이 코드 블록은 내가 건들지 않는다. 두 번째는 줄번호를 자동으로 넣어야 하는 코드 블록이다. 그래서 마크다운 태그와 충돌하지 않는 새로운 코드블록 태그를 새로 정의한다. 나는 %%%를 줄번호 생성용 코드 블록 태그로 정의했다.

```
    ```
    코드1
    코드2
    코드3
    ```
```

위 코드는 마크다운 코드 블록 그대로다. 그래서 아무 작업하지 않고 그대로 아래처럼 출력한다.

```
    코드1
    코드2
    코드3
```

줄번호를 자동으로 생성하는 코드 블록은 아래와 같다.

```
    %%%
    코드1
    코드2
    코드3
    %%%
```

이렇게 %%%로 시작과 끝을 태깅하고 코드를 넣으면 아래처럼 변환된다.

```
01|    코드1
02|    코드2
03|    코드3
```

위 코드는 변환기로 자동 변환한 결과다. 계속 변환기라고 부르기엔 정이 안가므로 이쯤해서 이름을 지어야겠다. 이름은 코마(COMA)다. COnfiguable MArkdown processor라고 풀 네임을 짓긴했는데 그냥 이름 짓다가 혼수상태 빠질것 같아서 코마로 지었다. 앞으로 코마라고 부르겠다.

# 코마

사실 이 글을 쓰는 목적은 코마를 테스트하기 위함이다. 이글은 코마로 변환해서 최종적으로 블로그에 게시할 것이다.

## 기능 설명

내가 계속 글을 쓰고 그것을 코마로 변환하는한 아마 기능은 계속 추가될 것이다. 현 시점에서 코마에 넣은 기능은 아래와 같다.

* 코드 블록에 자동으로 줄 번호 넣어줌
* 줄 번호를 본문 설명에 자동으로 넣어줌
* 인용을 재인용 하는 코드에 해당 코드의 줄 번호를 그대로 인용함
* 코드 블록에 번호를 매겨줌
* 코드 블록 번호를 본문 설명에서 인용함

아직도 코마에 버그가 남아 있어서 디버깅 중이라, 윗 내용까지 쓰고 지금 이 줄을 쓰는데 일주일이 넘게 걸렸다. 계속 이어서 글을 쓰겠다.

## 문법

문법은 지금도 변경 중이다. 이 글을 쓰고 있는 현시점에서의 문법을 설명한다.

[Code 02-01]
```c
01|    doc : para
02|        | para doc
03|        | code doc
04|        ;
05|    
06|    para : TITLE                { write_header($1); }
07|         | CODE_LINE             { write_md_text($1); }
08|         | CODE_NUM                 { write_code_num($1); }
09|         | LABELED_CODE_LINE     { write_replace_code_line($1); }
10|        | MD_CODE_QUOTE         { write_quote(); }
11|         | QUOTE_BLOCK              { write_plain($1); }
12|         | bullet_list NEW_LINE     { write_plain($1); }
13|         | sentence_list NEW_LINE    { write_text($1); }
14|         ;
15|    
16|    code : CODE_QUOTE codeblock CODE_QUOTE         { write_code($2); }
17|         ;
18|    
19|    codeblock : codeline
20|          | codeline codeblock               
21|          ;
22|    
23|    codeline : CODE_LINE                         
24|         | LABELED_CODE_LINE                 
25|         ;
26|    
27|    bullet_list : BULLET_LIST
28|            | BULLET_LIST bullet_list
29|            ;
30|    
31|    sentence_list :                              { $$ = NULL; }
32|              | sentence                 
33|              | sentence SPACE sentence_list
34|              ;
35|    
36|    sentence : WORD_DOT
37|         | REF_LINE SPACE sentence
38|         | REF_CODE sentence
39|         | WORD sentence
40|         ;
```

위 코드 [02-01]가 현 시점 코마의 전체 문법이다. 먼저 시작 문법인 doc을 보자. 01번째 줄부터 04번째 줄까지 코드다.

```c
01|    doc : para
02|        | para doc
03|        | code doc
04|        ;
```

doc은 문서(document)다. para는 문단(paragraph)다. 즉, 문서는 문단이 한 개 이상 반복되거나 문단과 코드(code)가 섞여서 반복됨을 정의했다. 문단과 코드에 해당하는 문법 정의 두 개로만 이뤄졌다.

먼저 문단의 문법이다.

```c
06|    para : TITLE            { write_header($1); }
07|         | CODE_LINE         { write_md_text($1); }
08|         | CODE_NUM                 { write_code_num($1); }
09|         | LABELED_CODE_LINE     { write_replace_code_line($1); }
10|         | MD_CODE_QUOTE          { write_quote(); }
11|         | QUOTE_BLOCK              { write_plain($1); }
12|         | bullet_list NEW_LINE     { write_plain($1); }
13|         | sentence_list NEW_LINE    { write_text($1); }
14|         ;
```

사실상 내가 재정의한 코드 블록을 제외한 모든 마크다운 문법이 모두 문단(para)이다. 문단은 다음 요소로 이뤄져 있다.

* 제목 (TITLE)
* 코드 (CODE_LINE)
* 코드 블록 번호 (CODE_NUM)
* 줄번호가 달린 코드 (LABELED_CODE_LINE)
* 오리지널 마크다운의 코드 블록 태그 (MD_CODE_QUOTE)
* 인용 (QUOTE_BLOCK)
* 리스트 (bullet_list)
* 텍스트 문단 (sentence_list)

각 요소는 lexer에서 정규표현식으로 구분한다.

제목은 마크다운 문법에서 #으로 시작하는 그 문법이다.

```c
^"#"+" ".+\n {
    yylval.str = yytext;
    return TITLE;
}
```

첫 글자가 #이고 #이 한 개 이상 반복되다가 공백이 나오고 아무 문자나 나오다가 개행으로 끝나는 한 줄은 제목으로 판단한다. 익숙한 마크다운의 그것이다.

코드는 문서에서 소스 코드를 한 줄씩 표현하는 문법이다.

```c
^\t.*\n {
    yylval.str = yytext;
    return CODE_LINE;
}
```

탭 문자로 시작하고 아무글자나 나오다가 개행으로 끝나는 한 줄은 코드로 판단한다. 마크다운 문법에서는 코드 블록 태그로 감싸기만 하면 코드로 인식하긴 하지만 코마에서 조금 더 쉬운 파싱을 위해 코드는 무조건 탭으로 한 번 들여쓰기를 하게 했다. 그리고 마크다운 문법에서도 코드 블록 태그를 쓰지 않고 그냥 탭으로 한 번 들여쓰기를 하면 코드로 인식한다. 나는 둘을 섞어 쓰는 것을 강제하여 코마가 코드로 인식하게 했다.

코드 블록 번호는 문서에서 인용하는 소스 코드의 이름이다.

```c
^"code{"[a-zA-Z][a-zA-Z][a-zA-Z]"}"\n {
    yylval.str = yytext;
    return CODE_NUM;
}
```

흔히 소스 코드를 설명하는 문서에서 코드를 지칭할 때 '코드 10-15' 이렇게 인용한 소스 코드에 번호를 매겨서 설명한다. 이를 위한 문법이다. 이 문법은 마크다운에는 없고 코마 전용 문법이다. 소스 코드 시작 부분에 쓰면 코마에서 자동으로 소스 코드에 번호를 매긴다. 본문에서 aaa에 해당하는 레퍼런스 레이블을 사용하면 자동으로 코드 번호로 변환한다.

애초에 코마를 만들기로 결심한 이유가 인용한 소스 코드에 줄 번호를 자동으로 넣고 싶어서 였다. 그리고 본문에서 줄 번호 인용을 쉽게 하기 위함이었다. 그 용도로 만든 문법이 줄 번호가 달린 코드 문법이다.

```c
^[a-zA-Z][a-zA-Z]"|"\t.*\n {
    yylval.str = yytext;
    return LABELED_CODE_LINE;
}
```

기본 문법은 소스 코드 한 줄과 같다. 다만 시작 문자가 탭이 아니라 알파벳 두 글자 이고 구분자가 나온 다음 탭 문자가 나오고 소스 코드가 한 줄 나오면 줄 번호가 다른 코드 문법으로 인식하고 알파벳 두 글자를 레퍼런스 이름으로 해서 본문에서 인용한다.

오리지널 마크다운의 코드 블록 태그는 그냥 원래 마크다운의 코드 시작 태그다.

```c
^"```\n"        return MD_CODE_QUOTE;
```

인용도 원래 마크다운의 인용 문법이다.

```c
^"> ".+\n {
    yylval.str = yytext;
    return QUOTE_BLOCK;
}
```

리스트도 원래 마크다운에서 리스트를 표현하는 문법이다. 코드 [02-01]에서 27번째 줄부터 29번째 줄 코드를 다시 인용한다.

```c
27|    bullet_list : BULLET_LIST
28|            | BULLET_LIST bullet_list
29|            ;
```

BULLET_LIST 토큰이 연속되는 문법이다.

```c
^"*"+" ".+\n {
    yylval.str = yytext;
    return BULLET_LIST;
}
```

토큰 자체는 그냥 마크다운의 문법 그대로다.

텍스트 문단은 문서의 대부분을 차지하는 본문 설명이다.

```c
31|    sentence_list :                              { $$ = NULL; }
32|              | sentence                 
33|              | sentence SPACE sentence_list
34|              ;
35|    
36|    sentence : WORD_DOT
37|         | REF_LINE SPACE sentence
38|         | REF_CODE sentence
39|         | WORD sentence
40|         ;
```

텍스트 문단은 문장(sentence)의 연속으로 구성되 있다. 문장은 단어(WORD)의 연속 혹은 코드 인용(REF_CODE) 혹은 줄 번호 인용(REF_LINE)의 연속이다. 그리고 문장은 마침표를 찍은 문장(WORD_DOT)으로 반드시 끝나야 한다.

```c
[a-zA-Z가-힣,\<\>\(\)\[\]0-9\|\!\'\"\%\#_]+" " {
    yylval.str = yytext;
    return WORD;
}

[a-zA-Z가-힣,\<\>\(\)\[\]0-9\|\!\'\"\%\#_]+[\.\?] {
    yylval.str = yytext;
    return WORD_DOT;
}
```

WORD는 단어가 나오고 뒤에 공백(띄어쓰기)가 나오는 토큰이고, WORD_DOT은 단어가 나오고 마침표가 나오는 토큰이다. 단어의 정규표현식은 한글을 포함하고 여러 특수 문자를 표기했다. 글을 쓰면서 필요한 특수 문자는 그때 그때 lex 정의 파일에 추가하고 있다.

다음은 코드 문법이다. 코드의 시작과 끝을 표시하는 태그(CODE_QUOTE)로 감싸여 있는 codeblock 문법이다. codeblock 문법은 다시 codeline이 반복되는 문법이다.

```c
16|    code : CODE_QUOTE codeblock CODE_QUOTE         { write_code($2); }
17|         ;
18|    
19|    codeblock : codeline
20|          | codeline codeblock               
21|          ;
22|    
23|    codeline : CODE_LINE                         
24|         | LABELED_CODE_LINE                 
25|         ;
```

코드 한 줄(codeline)이 어떻게 파싱되는지만 알면 된다. CODE_LINE과 LABELED_CODE_LINE는 위에서 설명했다.

```c
01|    void write_header(const char* str)
02|    {
03|        if (str[0] == '#' && str[1] == ' ') {
04|            s_chapter_num++;
05|            s_code_num_of_chap = 0;
06|        }
07|        fprintf(out_fp, "%s\n", str);
08|    }
```

제목을 생성하는 코드다. 실질적으로 하는 일은 07번째 줄에 있는 fprintf() 함수로 원본 내용을 그대로 쓰는 것 뿐이다. 바로위에 03번째 줄부터 06번째 줄에 조건문은 챕터마다 s_chapter_num 변수 값을 하나씩 올린다. 소스 코드 번호를 챕터마다 하나씩 올리기 위해서 카운트하는 변수다.

```c
01|    void write_text(const char* str)
02|    {
03|        if (str) {
04|            fprintf(out_fp, "%s\n", str);
05|        }
06|    }
```

텍스트를 생성하는 코드다. 딱히 하는 일은 없고 그냥 입력을 그대로 출력에 보낸다. 마지막에 개행을 넣어준다. lex, yacc로 파싱 및 문법 처리 과정에서 개행이 사라진다. 그래서 이렇게 개행을 넣어줘야 원본과 같아진다.

```c
01|    void write_code_line(const char* str)
02|    {
03|        if (s_printing_line_num) {
04|            fprintf(out_fp, "%02d|%s", s_printing_line_num++, str);    
05|        } else {
06|            fprintf(out_fp, "%s", str);
07|        }
08|    }
```

코드 한 줄은 줄 번호를 표시하는 코드와 줄 번호를 표시하지 않는 코드. 이렇게 두 종류가 있다. s_printing_line_num 전역 변수로 구분한다. s_printing_line_num 전역 변수에 0이 아닌 값이 있을 때는 줄 번호를 표시하라는 뜻이다. 그래서 s_printing_line_num를 검사해서 줄 번호 표시 여부를 판단 한 다음 줄 번호를 표시하거나 그냥 출력한다.

```c
01|    void write_replace_code_line(const char* str)
02|    {
03|        SET_LINE_REF_KEY(str);
04|        if (s_recording_code_line) {
05|            add_key_value(key, s_printing_line_num);
06|            fprintf(out_fp, "%02d|%s", s_printing_line_num++, &str[3]);
07|        } else {
08|            uint32_t line_num = get_key_value(key);
09|            if (line_num == 0) {
10|                fprintf(stderr, "Line indicater is not found! -- key: %s\n", key);
11|                exit(-1);
12|            }
13|            fprintf(out_fp, "%02d|%s", line_num, &str[3]);
14|            // if s_printing_line_num is not zero means that second position so, reset to zero
15|            // if s_printing_line_num is zero means that first position so, set the starting line number
16|            s_printing_line_num = s_printing_line_num ? 0 : (line_num + 1);
17|        }
18|    }
```

소스 코드를 부분 인용하거나 최초 인용하는 소스 코드에 레퍼런스 레이블이 붙어 있을 경우에 대한 처리를 하는 함수다. 최초 인용일 때는 04번째 줄에서 레퍼런스 레이블과 해당 레이블이 있는 줄 번호를 key value storage에 저장한다. 소스 코드를 부분 인용 할 때는 줄 번호를 그대로 가져와야 한다. 그래서 08번째 줄에서 레퍼런스 레이블을 key로 하여 줄 번호를 key value storage에서 가져 온 다음 그 줄 번호를 출력한다.

```c
01|    void write_code_num(const char* ref)
02|    {
03|        s_code_num_of_chap++;
04|        SET_CODE_REF_KEY(&ref[5]);
05|        uint32_t value = (s_chapter_num * 100) + s_code_num_of_chap;
06|        add_key_value(key, value);
07|        fprintf(out_fp, "[Code %02d-%02d]\n", s_chapter_num, s_code_num_of_chap);
08|    }
```

코드 번호를 생성하는 함수다. key value storage는 값으로 int 타입 값만 가질 수 있으므로 챕터 번호-코드 번호 형태로 된 값을 수용할 수 없다. 그래서 챕터 번호를 100 이상 숫자에 배정하고 코드 번호를 99 이하 숫자에 배정해서 출력할 때 변환한다.

```c
01|    uint32_t get_linenum(char k1, char k2)
02|    {
03|        char key[3] = {0};
04|        key[0] = k1;
05|        key[1] = k2;
06|        uint32_t line_num = get_key_value(key);
07|        return line_num;
08|    }
09|    
10|    uint32_t get_codenum(char k1, char k2, char k3)
11|    {
12|        char key[4] = {0};
13|        key[0] = k1;
14|        key[1] = k2;
15|        key[2] = k3;
16|    
17|        uint32_t line_num = get_key_value(key);
18|        return line_num;
19|    }
```

줄 번호를 받아 오는 함수와 코드 번호를 받아 오는 함수는 기본적으로 동일하다. key value storage에서 값을 받아서 그대로 리턴할 뿐이다. 줄 번호는 키가 두 글자고 코드 번호는 키가 세 글자다. 내가 정한 규칙이다.

```c
01|    static void add_key_value(char* key, uint32_t value)
02|    {
03|        uint32_t key_index = search_key(key);
04|        if (s_key_value[key_index].key == NULL) {
05|            s_key_value[key_index].key = strdup(key);
06|        }
07|        s_key_value[key_index].value = value;
08|    }
09|    
10|    static uint32_t get_key_value(const char* key)
11|    {
12|        uint32_t key_index = search_key(key);
13|        return s_key_value[key_index].value;
14|    }
15|    
16|    static uint32_t search_key(const char* key)
17|    {
18|        // Just linear search
19|        for (uint32_t i = 0 ; i < s_key_value_end ; ++i)
20|        {
21|            if (strncmp(s_key_value[i].key, key, strlen(key)) == 0) {
22|                return i;
23|            }
24|        }
25|    
26|        uint32_t not_found_index = s_key_value_end;
27|        s_key_value_end++;
28|    
29|        if (s_key_value_end >= KV_MAX) {
30|            fprintf(stderr, "Exceed key value size\n");
31|            exit(-1);
32|        }
33|    
34|        return not_found_index;
35|    }
```

key value storage 관련 함수들이다. key value storage에 값을 추가하고 받아오고 검색하는 함수다. 아주 간단하게 구현한 key value storage다. 복잡하게 구현할 필요가 없기 때문이다.

코마는 현재 이 문서를 내가 의도한 대로 잘 변환한다. 어느 정도 목적을 달성하고 쓸만한 툴이라고 판단한다. 이제 쓰던 책을 다시 쓰러 가야 겠다.

