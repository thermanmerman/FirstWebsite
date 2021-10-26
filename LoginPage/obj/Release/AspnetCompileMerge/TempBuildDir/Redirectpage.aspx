﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Redirectpage.aspx.cs" Inherits="Default.WebForm2" EnableEventValidation="false"%>                  
<!DOCTYPE html>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="projects_table.css" />

<body>  
    
    
    <asp:Label ID="Label2" runat="server"></asp:Label>
                    
    <asp:Label ID="Label1" runat="server"></asp:Label>
     
    <form id="form2" runat="server"> 
        

        
        <style>
body {
  font-family: Arial, Helvetica, sans-serif;
}

.navbar {
  overflow: hidden;
  background-color: #213364;
}

.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

.dropdown {
  float: left;
  overflow: hidden;
}

.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #213364;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
}
</style>
        <div class="navbar">
          <a href="http://jetsdata.com/Redirectpage.aspx">Home</a>

          <div class="dropdown">

            <button class="dropbtn">Quick Project View 
              <i class="fa fa-caret-down"></i>
            </button>

            <div id="dropdwn" runat="server" class="dropdown-content"></div>
              
          </div> 
 
           <div class="dropdown">

                <button class="dropbtn">Quick Client View 
                  <i class="fa fa-caret-down"></i>
                </button>

                <div id="dropdown" runat="server" class="dropdown-content"></div>

            </div> 

            <div class="navSearch-inputWrapper">
                <asp:TextBox runat="server" ID="clientsearchbox"></asp:TextBox> 
                <asp:LinkButton class="nav-icon tool-icon" CssClass="primary-link primary-link--icon navSearch-icon checkboxes-ungated" runat="server" ID="clientsearchbutt" OnClick="clientsearchbutton_Click" >
                    <i class="fa fa-search" aria-hidden="true"></i>
                </asp:LinkButton>
            </div>
            
        </div>

        <h1 align="center" class="private-header__heading private-header__heading--solo">Projects</h1> 
        <asp:GridView runat="server" ID="cust" Visible="false" Enabled="false" ></asp:GridView>
        <style type="text/css">
            .Select {
    position: relative
}

    .Select, .Select div, .Select input, .Select span {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box
    }

        .Select.is-disabled > .Select-control {
            background-color: #f9f9f9
        }

            .Select.is-disabled > .Select-control:hover {
                box-shadow: none
            }

        .Select.is-disabled .Select-arrow-zone {
            cursor: default;
            pointer-events: none;
            opacity: .35
        }

.Select-control {
    background-color: #fff;
    border-color: #d9d9d9 #ccc #b3b3b3;
    border-radius: 4px;
    border: 1px solid #ccc;
    color: #333;
    cursor: default;
    display: table;
    border-spacing: 0;
    border-collapse: separate;
    height: 36px;
    outline: none;
    overflow: hidden;
    position: relative;
    width: 100%
}

    .Select-control:hover {
        box-shadow: 0 1px 0 rgba(0,0,0,.06)
    }

    .Select-control .Select-input:focus {
        outline: none
    }

.is-searchable.is-open > .Select-control {
    cursor: text
}

.is-open > .Select-control {
    border-bottom-right-radius: 0;
    border-bottom-left-radius: 0;
    background: #fff;
    border-color: #b3b3b3 #ccc #d9d9d9
}

    .is-open > .Select-control .Select-arrow {
        top: -2px;
        border-color: transparent transparent #999;
        border-width: 0 5px 5px
    }

.is-searchable.is-focused:not(.is-open) > .Select-control {
    cursor: text
}

.is-focused:not(.is-open) > .Select-control {
    border-color: #007eff;
    box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 0 3px rgba(0,126,255,.1)
}

.Select--single > .Select-control .Select-value, .Select-placeholder {
    bottom: 0;
    color: #aaa;
    left: 0;
    line-height: 34px;
    padding-left: 10px;
    padding-right: 10px;
    position: absolute;
    right: 0;
    top: 0;
    max-width: 100%;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap
}

.has-value.is-pseudo-focused.Select--single > .Select-control .Select-value .Select-value-label, .has-value.Select--single > .Select-control .Select-value .Select-value-label {
    color: #333
}

.has-value.is-pseudo-focused.Select--single > .Select-control .Select-value a.Select-value-label, .has-value.Select--single > .Select-control .Select-value a.Select-value-label {
    cursor: pointer;
    text-decoration: none
}

    .has-value.is-pseudo-focused.Select--single > .Select-control .Select-value a.Select-value-label:focus, .has-value.is-pseudo-focused.Select--single > .Select-control .Select-value a.Select-value-label:hover, .has-value.Select--single > .Select-control .Select-value a.Select-value-label:focus, .has-value.Select--single > .Select-control .Select-value a.Select-value-label:hover {
        color: #007eff;
        outline: none;
        text-decoration: underline
    }

.Select-input {
    height: 34px;
    padding-left: 10px;
    padding-right: 10px;
    vertical-align: middle
}

    .Select-input > input {
        width: 100%;
        background: none transparent;
        border: 0 none;
        box-shadow: none;
        cursor: default;
        display: inline-block;
        font-family: inherit;
        font-size: inherit;
        margin: 0;
        outline: none;
        line-height: 14px;
        padding: 8px 0 12px;
        -webkit-appearance: none
    }

.is-focused .Select-input > input {
    cursor: text
}

.has-value.is-pseudo-focused .Select-input {
    opacity: 0
}

.Select-control:not(.is-searchable) > .Select-input {
    outline: none
}

.Select-loading-zone {
    cursor: pointer;
    display: table-cell;
    text-align: center
}

.Select-loading, .Select-loading-zone {
    position: relative;
    vertical-align: middle;
    width: 16px
}

.Select-loading {
    -webkit-animation: Select-animation-spin .4s infinite linear;
    -o-animation: Select-animation-spin .4s infinite linear;
    animation: Select-animation-spin .4s infinite linear;
    height: 16px;
    box-sizing: border-box;
    border-radius: 50%;
    border: 2px solid #ccc;
    border-right-color: #333;
    display: inline-block
}

.Select-clear-zone {
    -webkit-animation: Select-animation-fadeIn .2s;
    -o-animation: Select-animation-fadeIn .2s;
    animation: Select-animation-fadeIn .2s;
    color: #999;
    cursor: pointer;
    display: table-cell;
    position: relative;
    text-align: center;
    vertical-align: middle;
    width: 17px
}

    .Select-clear-zone:hover {
        color: #d0021b
    }

.Select-clear {
    display: inline-block;
    font-size: 18px;
    line-height: 1
}

.Select--multi .Select-clear-zone {
    width: 17px
}

.Select-arrow-zone {
    cursor: pointer;
    display: table-cell;
    position: relative;
    text-align: center;
    vertical-align: middle;
    width: 25px;
    padding-right: 5px
}

.Select-arrow {
    border-color: #999 transparent transparent;
    border-style: solid;
    border-width: 5px 5px 2.5px;
    display: inline-block;
    height: 0;
    width: 0;
    position: relative
}

.is-open .Select-arrow, .Select-arrow-zone:hover > .Select-arrow {
    border-top-color: #666
}

.Select--multi .Select-multi-value-wrapper {
    display: inline-block
}

.Select .Select-aria-only {
    position: absolute;
    display: inline-block;
    height: 1px;
    width: 1px;
    margin: -1px;
    clip: rect(0,0,0,0);
    overflow: hidden;
    float: left
}

@-webkit-keyframes Select-animation-fadeIn {
    0% {
        opacity: 0
    }

    to {
        opacity: 1
    }
}

@keyframes Select-animation-fadeIn {
    0% {
        opacity: 0
    }

    to {
        opacity: 1
    }
}

.Select-menu-outer {
    border-bottom-right-radius: 4px;
    border-bottom-left-radius: 4px;
    background-color: #fff;
    border: 1px solid #ccc;
    border-top-color: #e6e6e6;
    box-shadow: 0 1px 0 rgba(0,0,0,.06);
    box-sizing: border-box;
    margin-top: -1px;
    max-height: 200px;
    position: absolute;
    top: 100%;
    width: 100%;
    z-index: 1;
    -webkit-overflow-scrolling: touch
}

.Select-menu {
    max-height: 198px;
    overflow-y: auto
}

.Select-option-group-label {
    box-sizing: border-box;
    background-color: #fff;
    color: #666;
    font-weight: 700;
    cursor: default;
    display: block;
    padding: 8px 10px
}

    .Select-option-group-label ~ .Select-option, .Select-option-group-label ~ .Select-option-group {
        padding-left: 20px
    }

.Select-option {
    box-sizing: border-box;
    background-color: #fff;
    color: #666;
    cursor: pointer;
    display: block;
    padding: 8px 10px
}

    .Select-option:last-child {
        border-bottom-right-radius: 4px;
        border-bottom-left-radius: 4px
    }

    .Select-option.is-selected {
        background-color: #f5faff;
        background-color: rgba(0,126,255,.04);
        color: #333
    }

    .Select-option.is-focused {
        background-color: #ebf5ff;
        background-color: rgba(0,126,255,.08);
        color: #333
    }

    .Select-option.is-disabled {
        color: #ccc;
        cursor: default
    }

.Select-noresults {
    box-sizing: border-box;
    color: #999;
    cursor: default;
    display: block;
    padding: 8px 10px
}

.Select--multi .Select-input {
    vertical-align: middle;
    margin-left: 10px;
    padding: 0
}

.Select--multi.has-value .Select-input {
    margin-left: 5px
}

.Select--multi .Select-value {
    background-color: #ebf5ff;
    background-color: rgba(0,126,255,.08);
    border-radius: 2px;
    border: 1px solid #c2e0ff;
    border: 1px solid rgba(0,126,255,.24);
    color: #007eff;
    display: inline-block;
    font-size: .9em;
    line-height: 1.4;
    margin-left: 5px;
    margin-top: 5px;
    vertical-align: top
}

.Select--multi .Select-value-icon, .Select--multi .Select-value-label {
    display: inline-block;
    vertical-align: middle
}

.Select--multi .Select-value-label {
    border-bottom-right-radius: 2px;
    border-top-right-radius: 2px;
    cursor: default;
    padding: 2px 5px
}

.Select--multi a.Select-value-label {
    color: #007eff;
    cursor: pointer;
    text-decoration: none
}

    .Select--multi a.Select-value-label:hover {
        text-decoration: underline
    }

.Select--multi .Select-value-icon {
    cursor: pointer;
    border-bottom-left-radius: 2px;
    border-top-left-radius: 2px;
    border-right: 1px solid #c2e0ff;
    border-right: 1px solid rgba(0,126,255,.24);
    padding: 1px 5px 3px
}

    .Select--multi .Select-value-icon:focus, .Select--multi .Select-value-icon:hover {
        background-color: #d8eafd;
        background-color: rgba(0,113,230,.08);
        color: #0071e6
    }

    .Select--multi .Select-value-icon:active {
        background-color: #c2e0ff;
        background-color: rgba(0,126,255,.24)
    }

.Select--multi.is-disabled .Select-value {
    background-color: #fcfcfc;
    border: 1px solid #e3e3e3;
    color: #333
}

.Select--multi.is-disabled .Select-value-icon {
    cursor: not-allowed;
    border-right: 1px solid #e3e3e3
}

    .Select--multi.is-disabled .Select-value-icon:active, .Select--multi.is-disabled .Select-value-icon:focus, .Select--multi.is-disabled .Select-value-icon:hover {
        background-color: #fcfcfc
    }

@keyframes Select-animation-spin {
    to {
        transform: rotate(1turn)
    }
}

@-webkit-keyframes Select-animation-spin {
    to {
        -webkit-transform: rotate(1turn)
    }
}

.baldric.picker {
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    text-align: left;
    line-height: 1.2;
    position: absolute;
    z-index: 10000;
    width: 300px;
    max-width: 100%;
    display: none;
    cursor: default
}

    .baldric.picker.picker--time {
        width: 100px
    }

    .baldric.picker.picker--opened {
        display: block
    }

.picker__holder {
    border-radius: 5px;
    box-sizing: border-box;
    position: absolute;
    background: #fff;
    border: 1px solid #aaa;
    border-top-width: 0;
    border-bottom-width: 0;
    width: 100%;
    min-width: 176px;
    max-width: 466px;
    max-height: 0;
    opacity: 0
}

.picker--opened .picker__holder {
    box-shadow: 0 6px 18px 1px rgba(0,0,0,.12);
    max-height: 25em;
    opacity: 1;
    border-top-width: 1px;
    border-bottom-width: 1px
}

.picker__box {
    padding: 0 1em
}

.picker__header {
    text-align: center;
    position: relative;
    margin-top: .75em
}

.picker__month, .picker__year {
    display: inline-block;
    margin-left: .25em;
    margin-right: .25em;
    line-height: 1.7em
}

.picker__select--month, .picker__select--year {
    border: 1px solid #b7b7b7;
    height: 2.5em;
    padding: .5em .25em;
    margin-left: .25em;
    margin-right: .25em
}

.picker__select--month {
    width: 35%
}

.picker__select--year {
    width: 25%
}

    .picker__select--month:focus, .picker__select--year:focus {
        border-color: #f7761f
    }

.picker__nav--next, .picker__nav--prev {
    border-radius: 3px;
    position: absolute;
    padding: .5em 1.25em;
    width: 1em;
    height: 1em;
    top: -.28em
}

.picker__nav--prev {
    left: -.5em;
    padding-right: 1.5em
}

.picker__nav--next {
    right: -.5em;
    padding-left: 1.5em
}

    .picker__nav--next:before, .picker__nav--prev:before {
        content: " ";
        border-top: .5em solid transparent;
        border-bottom: .5em solid transparent;
        border-right: .75em solid #444;
        width: 0;
        height: 0;
        display: block;
        margin: 0 auto
    }

    .picker__nav--next:before {
        border-right: 0;
        border-left: .75em solid #444
    }

    .picker__nav--next:hover, .picker__nav--prev:hover {
        cursor: pointer;
        color: #444;
        background: #fcd0b3
    }

.picker__nav--disabled, .picker__nav--disabled:before, .picker__nav--disabled:before:hover, .picker__nav--disabled:hover {
    cursor: default;
    background: none;
    border-right-color: #f5f5f5;
    border-left-color: #f5f5f5
}

.picker__table {
    text-align: center;
    border-collapse: collapse;
    border-spacing: 0;
    table-layout: fixed;
    font-size: inherit;
    width: 100%;
    margin: 1em 0
}

    .picker__table td {
        margin: 0;
        padding: 0
    }

.picker__weekday {
    width: 14.285714286%;
    padding: .5em 0;
    font-weight: 500
}

.picker__day {
    border-radius: 3px;
    padding: .3125em 0;
    border: 1px solid transparent
}

.picker__day--today {
    background: #fcd0b3;
    position: relative
}

    .picker__day--today:before {
        content: " ";
        position: absolute;
        top: 2px;
        right: 2px;
        width: 0;
        height: 0;
        border-top: .5em solid;
        border-left: .5em solid transparent
    }

    .picker__day--today.picker__day--highlighted:before, .picker__day--today.picker__day--selected:before {
        border-top-color: #fff
    }

.picker__day--selected {
    background: #f7761f
}

.picker__day--highlighted {
    background: #fcd0b3
}

.picker__day--disabled:before {
    border-top-color: #aaa
}

.picker__day--outfocus {
    color: #ddd
}

    .picker__day--infocus:hover, .picker__day--outfocus:hover {
        cursor: pointer;
        background: #fcd0b3;
        color: inherit
    }

.picker--focused .picker__day--highlighted, .picker__day--highlighted:hover {
    background: #f7761f;
    color: #fff
}

.picker__day--disabled, .picker__day--disabled:hover {
    background: #f5f5f5;
    border-color: #f5f5f5;
    color: #ddd;
    cursor: default
}

.picker__day--highlighted.picker__day--disabled, .picker__day--highlighted.picker__day--disabled:hover {
    background: #bbb
}

.picker__footer {
    text-align: center;
    margin: 0 -.5em .5em
}

.picker__button--clear, .picker__button--today {
    border-radius: 3px;
    color: inherit;
    border: 0;
    background: transparent;
    padding: .66em 0;
    width: 50%;
    display: inline-block;
    vertical-align: bottom
}

    .picker__button--clear:hover, .picker__button--today:hover {
        cursor: pointer;
        background: #fcd0b3
    }

    .picker__button--clear:active, .picker__button--clear:focus, .picker__button--today:active, .picker__button--today:focus {
        background: #f7761f;
        color: #fff;
        outline: none
    }

    .picker__button--clear:before, .picker__button--today:before {
        position: relative;
        display: inline-block;
        height: 0
    }

    .picker__button--today:before {
        content: " ";
        margin-right: .7em;
        top: -.05em;
        width: 0;
        border-top: .66em solid;
        border-left: .66em solid transparent
    }

    .picker__button--clear:before {
        content: "\D7";
        margin-right: .35em;
        top: -.25em;
        vertical-align: top;
        font-size: 1.4em
    }

.picker__list {
    list-style: none;
    margin: 0
}

.picker__list-item {
    margin-bottom: -1px;
    position: relative;
    background: #fff;
    padding: .5em 1em
}

    .picker__list-item:hover {
        cursor: pointer;
        color: inherit;
        background: #fcd0b3;
        z-index: 10
    }

.picker__list-item--selected, .picker__list-item--selected:hover {
    border-color: #f7761f;
    z-index: 10
}

.picker__list-item--highlighted {
    background: #fcd0b3
}

    .picker--focused .picker__list-item--highlighted, .picker__list-item--highlighted:hover {
        background: #f7761f;
        color: #fff
    }

.picker--focused .picker__list-item--disabled, .picker__list-item--disabled, .picker__list-item--disabled:hover {
    background: #f5f5f5;
    color: #ddd;
    cursor: default;
    z-index: auto
}

.picker--time .picker__button--clear {
    border-radius: 0;
    display: block;
    width: 100%
}

.picker--time .picker__holder {
    background: #f2f2f2
}

.picker--time .picker__box {
    padding: 0;
    position: relative
}

.picker--time .picker__holder {
    overflow: auto;
    -webkit-overflow-scrolling: touch
}





.app, body, html {
    margin: 0;
    padding: 0;
    height: calc(100vh - 54px);
    width: 100%
}

.app {
    overflow-y: auto
}

.app-full-screen-editor {
    overflow-y: auto !important;
    height: auto !important
}

.LayoutFullPage {
    display: flex;
    min-width: 800px
}

.LayoutFullPage-inner {
    overflow-y: hidden;
    height: 100%
}

.LayoutFullPage-fixed-height {
    height: calc(100vh - 54px)
}

.LayoutFullPage-clip {
    max-width: 100vw
}

.LayoutFullPage-overlay {
    height: 0;
    bottom: 0;
    left: 0;
    right: 0;
    position: relative;
    overflow: visible
}

    .LayoutFullPage-overlay > * {
        position: absolute
    }

.LayoutFullPage .background-color-gypsum {
    background-color: #f5f8fa
}

#hs-nav-v4 ~ html.chrome .LayoutFullPage {
    height: calc(100vh - 54px)
}

@keyframes simpleFadeIn {
    0% {
        opacity: 0
    }

    to {
        opacity: 1
    }
}

.private-sticky-footer.over-zorse {
    z-index: 1201
}

.onboarding-media-image {
    box-shadow: 0 1px 10px 0 rgba(45,62,80,.25)
}

.onboarding-overlay {
    background-color: rgba(45,62,80,.79)
}

.onboarding-overlay, .onboarding-overlay-transparent {
    position: absolute;
    top: 0;
    left: 0;
    width: 100vw;
    height: 100vh
}

.onboarding-overlay-transparent {
    z-index: 3
}

.onboarding-tour-footer {
    background-color: #fff
}

.onboarding-fade-in {
    animation-name: simpleFadeIn;
    animation-duration: .3s;
    animation-timing-function: ease-in-out
}

.profile-onboarding-tour {
    width: 100%
}

    .profile-onboarding-tour.highlight-communicator .onboarding-peek-communicator, .profile-onboarding-tour.highlight-sidebar .onboarding-peek-sidebar {
        z-index: 2;
        position: relative
    }

div.UniversalSaveBar {
    background-color: #f5f8fa;
    border-top: 1px solid #cbd6e2;
    padding: 1rem 140px 1rem 3.25rem
}

.country-select-input span.country-flag, span.country-flag {
    display: inline-block !important;
    width: 16px;
    height: 11px;
    border-radius: 0
}

.ad {
    background-position: -16px 0
}

.ae {
    background-position: -32px 0
}

.af {
    background-position: -48px 0
}

.ag {
    background-position: -64px 0
}

.ai {
    background-position: -80px 0
}

.al {
    background-position: -96px 0
}

.am {
    background-position: -112px 0
}

.ao {
    background-position: -128px 0
}

.ar {
    background-position: -144px 0
}

.as {
    background-position: -160px 0
}

.at {
    background-position: -176px 0
}

.au {
    background-position: -192px 0
}

.aw {
    background-position: -208px 0
}

.az {
    background-position: -224px 0
}

.ba {
    background-position: -240px 0
}

.bb {
    background-position: 0 -11px
}

.bd {
    background-position: -16px -11px
}

.be {
    background-position: -32px -11px
}

.bf {
    background-position: -48px -11px
}

.bg {
    background-position: -64px -11px
}

.bh {
    background-position: -80px -11px
}

.bi {
    background-position: -96px -11px
}

.bj {
    background-position: -112px -11px
}

.bm {
    background-position: -128px -11px
}

.bn {
    background-position: -144px -11px
}

.bo {
    background-position: -160px -11px
}

.br {
    background-position: -176px -11px
}

.bs {
    background-position: -192px -11px
}

.bt {
    background-position: -208px -11px
}

.bw {
    background-position: -224px -11px
}

.by {
    background-position: -240px -11px
}

.bz {
    background-position: 0 -22px
}

.ca {
    background-position: -16px -22px
}

.cd {
    background-position: -32px -22px
}

.cf {
    background-position: -48px -22px
}

.cg {
    background-position: -64px -22px
}

.ch {
    background-position: -80px -22px
}

.ci {
    background-position: -96px -22px
}

.ck {
    background-position: -112px -22px
}

.cl {
    background-position: -128px -22px
}

.cm {
    background-position: -144px -22px
}

.cn {
    background-position: -160px -22px
}

.co {
    background-position: -176px -22px
}

.cr {
    background-position: -192px -22px
}

.cu {
    background-position: -208px -22px
}

.cv {
    background-position: -224px -22px
}

.cw {
    background-position: -240px -22px
}

.cy {
    background-position: 0 -33px
}

.cz {
    background-position: -16px -33px
}

.de {
    background-position: -32px -33px
}

.dj {
    background-position: -48px -33px
}

.dk {
    background-position: -64px -33px
}

.dm {
    background-position: -80px -33px
}

.do {
    background-position: -96px -33px
}

.dz {
    background-position: -112px -33px
}

.ec {
    background-position: -128px -33px
}

.ee {
    background-position: -144px -33px
}

.eg {
    background-position: -160px -33px
}

.er {
    background-position: -176px -33px
}

.es {
    background-position: -192px -33px
}

.et {
    background-position: -208px -33px
}

.fi {
    background-position: -224px -33px
}

.fj {
    background-position: -240px -33px
}

.fk {
    background-position: 0 -44px
}

.fm {
    background-position: -16px -44px
}

.fo {
    background-position: -32px -44px
}

.bl, .fr, .mf {
    background-position: -48px -44px
}

.ga {
    background-position: -64px -44px
}

.gb {
    background-position: -80px -44px
}

.gd {
    background-position: -96px -44px
}

.ge {
    background-position: -112px -44px
}

.gf {
    background-position: -128px -44px
}

.gh {
    background-position: -144px -44px
}

.gi {
    background-position: -160px -44px
}

.gl {
    background-position: -176px -44px
}

.gm {
    background-position: -192px -44px
}

.gn {
    background-position: -208px -44px
}

.gp {
    background-position: -224px -44px
}

.gq {
    background-position: -240px -44px
}

.gr {
    background-position: 0 -55px
}

.gt {
    background-position: -16px -55px
}

.gu {
    background-position: -32px -55px
}

.gw {
    background-position: -48px -55px
}

.gy {
    background-position: -64px -55px
}

.hk {
    background-position: -80px -55px
}

.hn {
    background-position: -96px -55px
}

.hr {
    background-position: -112px -55px
}

.ht {
    background-position: -128px -55px
}

.hu {
    background-position: -144px -55px
}

.id {
    background-position: -160px -55px
}

.ie {
    background-position: -176px -55px
}

.il {
    background-position: -192px -55px
}

.in {
    background-position: -208px -55px
}

.io {
    background-position: -224px -55px
}

.iq {
    background-position: -240px -55px
}

.ir {
    background-position: 0 -66px
}

.is {
    background-position: -16px -66px
}

.it {
    background-position: -32px -66px
}

.jm {
    background-position: -48px -66px
}

.jo {
    background-position: -64px -66px
}

.jp {
    background-position: -80px -66px
}

.ke {
    background-position: -96px -66px
}

.kg {
    background-position: -112px -66px
}

.kh {
    background-position: -128px -66px
}

.ki {
    background-position: -144px -66px
}

.km {
    background-position: -160px -66px
}

.kn {
    background-position: -176px -66px
}

.kp {
    background-position: -192px -66px
}

.kr {
    background-position: -208px -66px
}

.kw {
    background-position: -224px -66px
}

.ky {
    background-position: -240px -66px
}

.kz {
    background-position: 0 -77px
}

.la {
    background-position: -16px -77px
}

.lb {
    background-position: -32px -77px
}

.lc {
    background-position: -48px -77px
}

.li {
    background-position: -64px -77px
}

.lk {
    background-position: -80px -77px
}

.lr {
    background-position: -96px -77px
}

.ls {
    background-position: -112px -77px
}

.lt {
    background-position: -128px -77px
}

.lu {
    background-position: -144px -77px
}

.lv {
    background-position: -160px -77px
}

.ly {
    background-position: -176px -77px
}

.ma {
    background-position: -192px -77px
}

.mc {
    background-position: -208px -77px
}

.md {
    background-position: -224px -77px
}

.me {
    background-position: -112px -154px;
    height: 12px
}

.mg {
    background-position: 0 -88px
}

.mh {
    background-position: -16px -88px
}

.mk {
    background-position: -32px -88px
}

.ml {
    background-position: -48px -88px
}

.mm {
    background-position: -64px -88px
}

.mn {
    background-position: -80px -88px
}

.mo {
    background-position: -96px -88px
}

.mp {
    background-position: -112px -88px
}

.mq {
    background-position: -128px -88px
}

.mr {
    background-position: -144px -88px
}

.ms {
    background-position: -160px -88px
}

.mt {
    background-position: -176px -88px
}

.mu {
    background-position: -192px -88px
}

.mv {
    background-position: -208px -88px
}

.mw {
    background-position: -224px -88px
}

.mx {
    background-position: -240px -88px
}

.my {
    background-position: 0 -99px
}

.mz {
    background-position: -16px -99px
}

.na {
    background-position: -32px -99px
}

.nc {
    background-position: -48px -99px
}

.ne {
    background-position: -64px -99px
}

.nf {
    background-position: -80px -99px
}

.ng {
    background-position: -96px -99px
}

.ni {
    background-position: -112px -99px
}

.bq, .nl {
    background-position: -128px -99px
}

.no {
    background-position: -144px -99px
}

.np {
    background-position: -160px -99px
}

.nr {
    background-position: -176px -99px
}

.nu {
    background-position: -192px -99px
}

.nz {
    background-position: -208px -99px
}

.om {
    background-position: -224px -99px
}

.pa {
    background-position: -240px -99px
}

.pe {
    background-position: 0 -110px
}

.pf {
    background-position: -16px -110px
}

.pg {
    background-position: -32px -110px
}

.ph {
    background-position: -48px -110px
}

.pk {
    background-position: -64px -110px
}

.pl {
    background-position: -80px -110px
}

.pm {
    background-position: -96px -110px
}

.pr {
    background-position: -112px -110px
}

.ps {
    background-position: -128px -110px
}

.pt {
    background-position: -144px -110px
}

.pw {
    background-position: -160px -110px
}

.py {
    background-position: -176px -110px
}

.qa {
    background-position: -192px -110px
}

.re {
    background-position: -208px -110px
}

.ro {
    background-position: -224px -110px
}

.rs {
    background-position: -240px -110px
}

.ru {
    background-position: 0 -121px
}

.rw {
    background-position: -16px -121px
}

.sa {
    background-position: -32px -121px
}

.sb {
    background-position: -48px -121px
}

.sc {
    background-position: -64px -121px
}

.sd {
    background-position: -80px -121px
}

.se {
    background-position: -96px -121px
}

.sg {
    background-position: -112px -121px
}

.sh {
    background-position: -128px -121px
}

.si {
    background-position: -144px -121px
}

.sk {
    background-position: -160px -121px
}

.sl {
    background-position: -176px -121px
}

.sm {
    background-position: -192px -121px
}

.sn {
    background-position: -208px -121px
}

.so {
    background-position: -224px -121px
}

.sr {
    background-position: -240px -121px
}

.ss {
    background-position: 0 -132px
}

.st {
    background-position: -16px -132px
}

.sv {
    background-position: -32px -132px
}

.sx {
    background-position: -48px -132px
}

.sy {
    background-position: -64px -132px
}

.sz {
    background-position: -80px -132px
}

.tc {
    background-position: -96px -132px
}

.td {
    background-position: -112px -132px
}

.tg {
    background-position: -128px -132px
}

.th {
    background-position: -144px -132px
}

.tj {
    background-position: -160px -132px
}

.tk {
    background-position: -176px -132px
}

.tl {
    background-position: -192px -132px
}

.tm {
    background-position: -208px -132px
}

.tn {
    background-position: -224px -132px
}

.to {
    background-position: -240px -132px
}

.tr {
    background-position: 0 -143px
}

.tt {
    background-position: -16px -143px
}

.tv {
    background-position: -32px -143px
}

.tw {
    background-position: -48px -143px
}

.tz {
    background-position: -64px -143px
}

.ua {
    background-position: -80px -143px
}

.ug {
    background-position: -96px -143px
}

.us {
    background-position: -112px -143px
}

.uy {
    background-position: -128px -143px
}

.uz {
    background-position: -144px -143px
}

.va {
    background-position: -160px -143px
}

.vc {
    background-position: -176px -143px
}

.ve {
    background-position: -192px -143px
}

.vg {
    background-position: -208px -143px
}

.vi {
    background-position: -224px -143px
}

.vn {
    background-position: -240px -143px
}

.vu {
    background-position: 0 -154px
}

.wf {
    background-position: -16px -154px
}

.ws {
    background-position: -32px -154px
}

.ye {
    background-position: -48px -154px
}

.za {
    background-position: -64px -154px
}

.zm {
    background-position: -80px -154px
}

.zw {
    background-position: -96px -154px
}

.phone-number-input {
    width: 100%;
    display: inline-flex
}

    .phone-number-input .phone-number-input-inner {
        display: inline-flex
    }

    .phone-number-input .extension-input {
        display: inline-block;
        max-width: 100px;
        margin-left: 8px
    }

    .phone-number-input .country-select {
        display: inline-block;
        border-bottom-right-radius: 0;
        border-top-right-radius: 0;
        position: relative;
        width: auto
    }

    .phone-number-input .phone-text-input {
        display: inline-block;
        width: auto;
        margin-left: 2px
    }

.country-dropdown {
    min-width: 300px
}

.ad {
    background-position: -16px 0
}

.ae {
    background-position: -32px 0
}

.af {
    background-position: -48px 0
}

.ag {
    background-position: -64px 0
}

.ai {
    background-position: -80px 0
}

.al {
    background-position: -96px 0
}

.am {
    background-position: -112px 0
}

.ao {
    background-position: -128px 0
}

.ar {
    background-position: -144px 0
}

.as {
    background-position: -160px 0
}

.at {
    background-position: -176px 0
}

.au {
    background-position: -192px 0
}

.aw {
    background-position: -208px 0
}

.az {
    background-position: -224px 0
}

.ba {
    background-position: -240px 0
}

.bb {
    background-position: 0 -11px
}

.bd {
    background-position: -16px -11px
}

.be {
    background-position: -32px -11px
}

.bf {
    background-position: -48px -11px
}

.bg {
    background-position: -64px -11px
}

.bh {
    background-position: -80px -11px
}

.bi {
    background-position: -96px -11px
}

.bj {
    background-position: -112px -11px
}

.bm {
    background-position: -128px -11px
}

.bn {
    background-position: -144px -11px
}

.bo {
    background-position: -160px -11px
}

.br {
    background-position: -176px -11px
}

.bs {
    background-position: -192px -11px
}

.bt {
    background-position: -208px -11px
}

.bw {
    background-position: -224px -11px
}

.by {
    background-position: -240px -11px
}

.bz {
    background-position: 0 -22px
}

.ca {
    background-position: -16px -22px
}

.cd {
    background-position: -32px -22px
}

.cf {
    background-position: -48px -22px
}

.cg {
    background-position: -64px -22px
}

.ch {
    background-position: -80px -22px
}

.ci {
    background-position: -96px -22px
}

.ck {
    background-position: -112px -22px
}

.cl {
    background-position: -128px -22px
}

.cm {
    background-position: -144px -22px
}

.cn {
    background-position: -160px -22px
}

.co {
    background-position: -176px -22px
}

.cr {
    background-position: -192px -22px
}

.cu {
    background-position: -208px -22px
}

.cv {
    background-position: -224px -22px
}

.cw {
    background-position: -240px -22px
}

.cy {
    background-position: 0 -33px
}

.cz {
    background-position: -16px -33px
}

.de {
    background-position: -32px -33px
}

.dj {
    background-position: -48px -33px
}

.dk {
    background-position: -64px -33px
}

.dm {
    background-position: -80px -33px
}

.do {
    background-position: -96px -33px
}

.dz {
    background-position: -112px -33px
}

.ec {
    background-position: -128px -33px
}

.ee {
    background-position: -144px -33px
}

.eg {
    background-position: -160px -33px
}

.er {
    background-position: -176px -33px
}

.es {
    background-position: -192px -33px
}

.et {
    background-position: -208px -33px
}

.fi {
    background-position: -224px -33px
}

.fj {
    background-position: -240px -33px
}

.fk {
    background-position: 0 -44px
}

.fm {
    background-position: -16px -44px
}

.fo {
    background-position: -32px -44px
}

.bl, .fr, .mf {
    background-position: -48px -44px
}

.ga {
    background-position: -64px -44px
}

.gb {
    background-position: -80px -44px
}

.gd {
    background-position: -96px -44px
}

.ge {
    background-position: -112px -44px
}

.gf {
    background-position: -128px -44px
}

.gh {
    background-position: -144px -44px
}

.gi {
    background-position: -160px -44px
}

.gl {
    background-position: -176px -44px
}

.gm {
    background-position: -192px -44px
}

.gn {
    background-position: -208px -44px
}

.gp {
    background-position: -224px -44px
}

.gq {
    background-position: -240px -44px
}

.gr {
    background-position: 0 -55px
}

.gt {
    background-position: -16px -55px
}

.gu {
    background-position: -32px -55px
}

.gw {
    background-position: -48px -55px
}

.gy {
    background-position: -64px -55px
}

.hk {
    background-position: -80px -55px
}

.hn {
    background-position: -96px -55px
}

.hr {
    background-position: -112px -55px
}

.ht {
    background-position: -128px -55px
}

.hu {
    background-position: -144px -55px
}

.id {
    background-position: -160px -55px
}

.ie {
    background-position: -176px -55px
}

.il {
    background-position: -192px -55px
}

.in {
    background-position: -208px -55px
}

.io {
    background-position: -224px -55px
}

.iq {
    background-position: -240px -55px
}

.ir {
    background-position: 0 -66px
}

.is {
    background-position: -16px -66px
}

.it {
    background-position: -32px -66px
}

.jm {
    background-position: -48px -66px
}

.jo {
    background-position: -64px -66px
}

.jp {
    background-position: -80px -66px
}

.ke {
    background-position: -96px -66px
}

.kg {
    background-position: -112px -66px
}

.kh {
    background-position: -128px -66px
}

.ki {
    background-position: -144px -66px
}

.km {
    background-position: -160px -66px
}

.kn {
    background-position: -176px -66px
}

.kp {
    background-position: -192px -66px
}

.kr {
    background-position: -208px -66px
}

.kw {
    background-position: -224px -66px
}

.ky {
    background-position: -240px -66px
}

.kz {
    background-position: 0 -77px
}

.la {
    background-position: -16px -77px
}

.lb {
    background-position: -32px -77px
}

.lc {
    background-position: -48px -77px
}

.li {
    background-position: -64px -77px
}

.lk {
    background-position: -80px -77px
}

.lr {
    background-position: -96px -77px
}

.ls {
    background-position: -112px -77px
}

.lt {
    background-position: -128px -77px
}

.lu {
    background-position: -144px -77px
}

.lv {
    background-position: -160px -77px
}

.ly {
    background-position: -176px -77px
}

.ma {
    background-position: -192px -77px
}

.mc {
    background-position: -208px -77px
}

.md {
    background-position: -224px -77px
}

.me {
    background-position: -112px -154px;
    height: 12px
}

.mg {
    background-position: 0 -88px
}

.mh {
    background-position: -16px -88px
}

.mk {
    background-position: -32px -88px
}

.ml {
    background-position: -48px -88px
}

.mm {
    background-position: -64px -88px
}

.mn {
    background-position: -80px -88px
}

.mo {
    background-position: -96px -88px
}

.mp {
    background-position: -112px -88px
}

.mq {
    background-position: -128px -88px
}

.mr {
    background-position: -144px -88px
}

.ms {
    background-position: -160px -88px
}

.mt {
    background-position: -176px -88px
}

.mu {
    background-position: -192px -88px
}

.mv {
    background-position: -208px -88px
}

.mw {
    background-position: -224px -88px
}

.mx {
    background-position: -240px -88px
}

.my {
    background-position: 0 -99px
}

.mz {
    background-position: -16px -99px
}

.na {
    background-position: -32px -99px
}

.nc {
    background-position: -48px -99px
}

.ne {
    background-position: -64px -99px
}

.nf {
    background-position: -80px -99px
}

.ng {
    background-position: -96px -99px
}

.ni {
    background-position: -112px -99px
}

.bq, .nl {
    background-position: -128px -99px
}

.no {
    background-position: -144px -99px
}

.np {
    background-position: -160px -99px
}

.nr {
    background-position: -176px -99px
}

.nu {
    background-position: -192px -99px
}

.nz {
    background-position: -208px -99px
}

.om {
    background-position: -224px -99px
}

.pa {
    background-position: -240px -99px
}

.pe {
    background-position: 0 -110px
}

.pf {
    background-position: -16px -110px
}

.pg {
    background-position: -32px -110px
}

.ph {
    background-position: -48px -110px
}

.pk {
    background-position: -64px -110px
}

.pl {
    background-position: -80px -110px
}

.pm {
    background-position: -96px -110px
}

.pr {
    background-position: -112px -110px
}

.ps {
    background-position: -128px -110px
}

.pt {
    background-position: -144px -110px
}

.pw {
    background-position: -160px -110px
}

.py {
    background-position: -176px -110px
}

.qa {
    background-position: -192px -110px
}

.re {
    background-position: -208px -110px
}

.ro {
    background-position: -224px -110px
}

.rs {
    background-position: -240px -110px
}

.ru {
    background-position: 0 -121px
}

.rw {
    background-position: -16px -121px
}

.sa {
    background-position: -32px -121px
}

.sb {
    background-position: -48px -121px
}

.sc {
    background-position: -64px -121px
}

.sd {
    background-position: -80px -121px
}

.se {
    background-position: -96px -121px
}

.sg {
    background-position: -112px -121px
}

.sh {
    background-position: -128px -121px
}

.si {
    background-position: -144px -121px
}

.sk {
    background-position: -160px -121px
}

.sl {
    background-position: -176px -121px
}

.sm {
    background-position: -192px -121px
}

.sn {
    background-position: -208px -121px
}

.so {
    background-position: -224px -121px
}

.sr {
    background-position: -240px -121px
}

.ss {
    background-position: 0 -132px
}

.st {
    background-position: -16px -132px
}

.sv {
    background-position: -32px -132px
}

.sx {
    background-position: -48px -132px
}

.sy {
    background-position: -64px -132px
}

.sz {
    background-position: -80px -132px
}

.tc {
    background-position: -96px -132px
}

.td {
    background-position: -112px -132px
}

.tg {
    background-position: -128px -132px
}

.th {
    background-position: -144px -132px
}

.tj {
    background-position: -160px -132px
}

.tk {
    background-position: -176px -132px
}

.tl {
    background-position: -192px -132px
}

.tm {
    background-position: -208px -132px
}

.tn {
    background-position: -224px -132px
}

.to {
    background-position: -240px -132px
}

.tr {
    background-position: 0 -143px
}

.tt {
    background-position: -16px -143px
}

.tv {
    background-position: -32px -143px
}

.tw {
    background-position: -48px -143px
}

.tz {
    background-position: -64px -143px
}

.ua {
    background-position: -80px -143px
}

.ug {
    background-position: -96px -143px
}

.us {
    background-position: -112px -143px
}

.uy {
    background-position: -128px -143px
}

.uz {
    background-position: -144px -143px
}

.va {
    background-position: -160px -143px
}

.vc {
    background-position: -176px -143px
}

.ve {
    background-position: -192px -143px
}

.vg {
    background-position: -208px -143px
}

.vi {
    background-position: -224px -143px
}

.vn {
    background-position: -240px -143px
}

.vu {
    background-position: 0 -154px
}

.wf {
    background-position: -16px -154px
}

.ws {
    background-position: -32px -154px
}

.ye {
    background-position: -48px -154px
}

.za {
    background-position: -64px -154px
}

.zm {
    background-position: -80px -154px
}

.zw {
    background-position: -96px -154px
}



.untruncate button {
    white-space: normal !important
}



.merge-modal .merge-modal-arrow path {
    fill: #cbd6e2
}

.merge-modal .merge-modal-description {
    background-color: #f5f8fa
}

.ContactAssociationDialog .border-right {
    border-right: 1px solid #cbd6e2
}

.ContactAssociationDialog .results-container {
    height: 300px;
    overflow-x: auto
}

.ContactAssociationDialog .selected-container {
    height: 350px;
    overflow-x: auto
}

.CompanyAddChildDialog .border-right {
    border-right: 1px solid #cbd6e2
}

.CompanyAddChildDialog .results-container {
    height: 300px;
    overflow-x: auto
}

.CompanyAddChildDialog .selected-container {
    height: 350px;
    overflow-x: auto
}

.CompanyAddChildDialog .disabled {
    cursor: not-allowed;
    color: #99acc2
}

.table.table-more-condensed.table-more-condensed tbody td {
    height: 2.5rem;
    padding-bottom: .15rem;
    padding-top: .15rem
}

.data-grid {
    border-color: #dfe3eb;
    border-style: solid;
    position: relative;
    border-width: 0 1px 1px;
    max-height: calc(100vh - 58px)
}

    .data-grid .table-responsive {
        overflow-y: auto
    }

    .data-grid .table td, .data-grid .table th {
        border-color: #dfe3eb;
        border-style: solid
    }

        .data-grid .table th .drag-handle {
            margin-right: -5px;
            transform: translate(-12px)
        }

    .data-grid .table td, .data-grid .table th {
        max-width: 300px;
        white-space: nowrap;
        text-overflow: ellipsis
    }

        .data-grid .table td.column-dealstage, .data-grid .table td.name-cell, .data-grid .table th.column-dealstage, .data-grid .table th.name-cell {
            max-width: none
        }

        .data-grid .table td.task-name-cell, .data-grid .table th.task-name-cell {
            min-width: 250px
        }

        .data-grid .table td.column-metadata_taskType, .data-grid .table th.column-metadata_taskType {
            width: 90px
        }

        .data-grid .table td.number-cell, .data-grid .table th.number-cell {
            text-align: right
        }

        .data-grid .table td.empty-cell, .data-grid .table th.empty-cell {
            color: #7c98b6
        }

        .data-grid .table td.full-height-cell, .data-grid .table th.full-height-cell {
            height: calc(100vh - 58px) !important
        }

        .data-grid .table td.checkbox-cell, .data-grid .table th.checkbox-cell {
            min-width: 45px;
            max-width: 45px;
            width: 45px
        }

        .data-grid .table td.drag-handle-cell-wrapper, .data-grid .table th.drag-handle-cell-wrapper {
            position: relative
        }

            .data-grid .table td.drag-handle-cell-wrapper .drag-handle-cell, .data-grid .table th.drag-handle-cell-wrapper .drag-handle-cell {
                position: absolute;
                left: 5px;
                top: 8px;
                padding-left: 6px;
                padding-right: 6px
            }

        .data-grid .table td:nth-child(n+2), .data-grid .table th:nth-child(n+2) {
            border-left: 2px solid transparent
        }

            .data-grid .table td:nth-child(n+2).highlighted-right, .data-grid .table th:nth-child(n+2).highlighted-right {
                border-right: 2px solid #00a4bd
            }

            .data-grid .table td:nth-child(n+2).highlighted-left, .data-grid .table th:nth-child(n+2).highlighted-left {
                border-left: 2px solid #00a4bd
            }

    .data-grid .table .select-all, .data-grid .table .select-all:hover {
        background-color: #e5f5f8
    }

.list-preview-contact-grid .data-grid th {
    border-top: none
}

.shepherd-global-cancel-button {
    position: fixed;
    bottom: 0;
    left: 0;
    right: 0;
    width: 100%;
    display: block;
    background: #fff;
    text-align: center;
    padding-top: 16px;
    padding-bottom: 16px
}

    .shepherd-global-cancel-button:hover {
        cursor: pointer
    }

/*!
 * Cropper.js v1.4.1
 * https://fengyuanchen.github.io/cropperjs
 *
 * Copyright 2015-present Chen Fengyuan
 * Released under the MIT license
 *
 * Date: 2018-07-15T09:54:43.167Z
 */ .cropper-container {
    direction: ltr;
    font-size: 0;
    line-height: 0;
    position: relative;
    -ms-touch-action: none;
    touch-action: none;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none
}

    .cropper-container img {
        display: block;
        height: 100%;
        image-orientation: 0deg;
        max-height: none !important;
        max-width: none !important;
        min-height: 0 !important;
        min-width: 0 !important;
        width: 100%
    }

.cropper-canvas, .cropper-crop-box, .cropper-drag-box, .cropper-modal, .cropper-wrap-box {
    bottom: 0;
    left: 0;
    position: absolute;
    right: 0;
    top: 0
}

.cropper-canvas, .cropper-wrap-box {
    overflow: hidden
}

.cropper-drag-box {
    background-color: #fff;
    opacity: 0
}

.cropper-modal {
    background-color: #000;
    opacity: .5
}

.cropper-view-box {
    display: block;
    height: 100%;
    outline-color: rgba(51,153,255,.75);
    outline: 1px solid #39f;
    overflow: hidden;
    width: 100%
}

.cropper-dashed {
    border: 0 dashed #eee;
    display: block;
    opacity: .5;
    position: absolute
}

    .cropper-dashed.dashed-h {
        border-bottom-width: 1px;
        border-top-width: 1px;
        height: 33.33333%;
        left: 0;
        top: 33.33333%;
        width: 100%
    }

    .cropper-dashed.dashed-v {
        border-left-width: 1px;
        border-right-width: 1px;
        height: 100%;
        left: 33.33333%;
        top: 0;
        width: 33.33333%
    }

.cropper-center {
    display: block;
    height: 0;
    left: 50%;
    opacity: .75;
    position: absolute;
    top: 50%;
    width: 0
}

    .cropper-center:after, .cropper-center:before {
        background-color: #eee;
        content: " ";
        display: block;
        position: absolute
    }

    .cropper-center:before {
        height: 1px;
        left: -3px;
        top: 0;
        width: 7px
    }

    .cropper-center:after {
        height: 7px;
        left: 0;
        top: -3px;
        width: 1px
    }

.cropper-face, .cropper-line, .cropper-point {
    display: block;
    height: 100%;
    opacity: .1;
    position: absolute;
    width: 100%
}

.cropper-face {
    background-color: #fff;
    left: 0;
    top: 0
}

.cropper-line {
    background-color: #39f
}

    .cropper-line.line-e {
        cursor: ew-resize;
        right: -3px;
        top: 0;
        width: 5px
    }

    .cropper-line.line-n {
        cursor: ns-resize;
        height: 5px;
        left: 0;
        top: -3px
    }

    .cropper-line.line-w {
        cursor: ew-resize;
        left: -3px;
        top: 0;
        width: 5px
    }

    .cropper-line.line-s {
        bottom: -3px;
        cursor: ns-resize;
        height: 5px;
        left: 0
    }

.cropper-point {
    background-color: #39f;
    height: 5px;
    opacity: .75;
    width: 5px
}

    .cropper-point.point-e {
        cursor: ew-resize;
        margin-top: -3px;
        right: -3px;
        top: 50%
    }

    .cropper-point.point-n {
        cursor: ns-resize;
        left: 50%;
        margin-left: -3px;
        top: -3px
    }

    .cropper-point.point-w {
        cursor: ew-resize;
        left: -3px;
        margin-top: -3px;
        top: 50%
    }

    .cropper-point.point-s {
        bottom: -3px;
        cursor: s-resize;
        left: 50%;
        margin-left: -3px
    }

    .cropper-point.point-ne {
        cursor: nesw-resize;
        right: -3px;
        top: -3px
    }

    .cropper-point.point-nw {
        cursor: nwse-resize;
        left: -3px;
        top: -3px
    }

    .cropper-point.point-sw {
        bottom: -3px;
        cursor: nesw-resize;
        left: -3px
    }

    .cropper-point.point-se {
        bottom: -3px;
        cursor: nwse-resize;
        height: 20px;
        opacity: 1;
        right: -3px;
        width: 20px
    }

@media (min-width:768px) {
    .cropper-point.point-se {
        height: 15px;
        width: 15px
    }
}

@media (min-width:992px) {
    .cropper-point.point-se {
        height: 10px;
        width: 10px
    }
}

@media (min-width:1200px) {
    .cropper-point.point-se {
        height: 5px;
        opacity: .75;
        width: 5px
    }
}

.cropper-point.point-se:before {
    background-color: #39f;
    bottom: -50%;
    content: " ";
    display: block;
    height: 200%;
    opacity: 0;
    position: absolute;
    right: -50%;
    width: 200%
}

.cropper-invisible {
    opacity: 0
}

.cropper-bg {
    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQAQMAAAAlPW0iAAAAA3NCSVQICAjb4U/gAAAABlBMVEXMzMz////TjRV2AAAACXBIWXMAAArrAAAK6wGCiw1aAAAAHHRFWHRTb2Z0d2FyZQBBZG9iZSBGaXJld29ya3MgQ1M26LyyjAAAABFJREFUCJlj+M/AgBVhF/0PAH6/D/HkDxOGAAAAAElFTkSuQmCC)
}

.cropper-hide {
    display: block;
    height: 0;
    position: absolute;
    width: 0
}

.cropper-hidden {
    display: none !important
}

.cropper-move {
    cursor: move
}

.cropper-crop {
    cursor: crosshair
}

.cropper-disabled .cropper-drag-box, .cropper-disabled .cropper-face, .cropper-disabled .cropper-line, .cropper-disabled .cropper-point {
    cursor: not-allowed
}

.file-type-icon {
    fill: #7c98b6 !important;
    position: relative;
    top: 2px
}

.image-editor-modal.cropper-dialog-light {
    background-color: rgba(45,62,80,.6)
}

.image-editor-modal .cropper-container {
    margin-left: auto;
    margin-right: auto
}

.image-editor-modal .reset-button {
    text-decoration: underline
}

.image-editor-modal .crop-size-label {
    padding-top: 12px;
    padding-bottom: 13px
}

.image-editor-modal .cropper-point {
    background-color: #fff;
    opacity: 1
}

.image-editor-modal .point-e, .image-editor-modal .point-n, .image-editor-modal .point-s, .image-editor-modal .point-w {
    border-radius: 4px
}

.image-editor-modal .point-n, .image-editor-modal .point-s {
    height: 8px;
    width: 25px
}

.image-editor-modal .point-e, .image-editor-modal .point-w {
    height: 25px;
    width: 8px
}

.image-editor-modal .point-ne, .image-editor-modal .point-nw, .image-editor-modal .point-se, .image-editor-modal .point-sw {
    border-radius: 50%;
    height: 15px;
    width: 15px
}

.image-editor-modal .point-se {
    bottom: -6px;
    right: -6px
}

.image-editor-modal .point-ne {
    top: -6px;
    right: -6px
}

.image-editor-modal .point-sw {
    bottom: -6px;
    left: -6px
}

.image-editor-modal .point-nw {
    top: -6px;
    left: -6px
}

.image-editor-modal .cropper-view-box {
    outline: 0
}

.image-upload-zone:hover .image-upload-zone-remove-button {
    opacity: .7
}

    .image-upload-zone:hover .image-upload-zone-remove-button:active, .image-upload-zone:hover .image-upload-zone-remove-button:hover {
        opacity: .95
    }

.image-upload-zone-image {
    min-width: 180px;
    position: relative
}

    .image-upload-zone-image .image-upload-zone-remove-button {
        position: absolute;
        right: 20px;
        top: 20px;
        opacity: 0
    }

        .image-upload-zone-image .image-upload-zone-remove-button .image-upload-zone-close-button-icon {
            line-height: 16px
        }

.image-upload-zone__uploading-mask {
    position: absolute;
    left: 0;
    right: 0;
    top: 0;
    bottom: 0;
    opacity: .5;
    background-color: #fff
}

.image-not-found {
    margin-top: 25px
}

    .image-not-found .image-not-found-illustation {
        margin: 0 auto;
        display: block
    }

.thumbnail-overlay {
    transition: all .15s ease-out;
    position: absolute;
    top: 0;
    bottom: 0;
    left: 0;
    right: 0;
    background-image: linear-gradient(rgba(45,62,80,0),rgba(45,62,80,.6));
    opacity: 0
}

    .thumbnail-overlay:hover {
        opacity: 1
    }

.file-thumbnail-wrapper {
    position: relative
}

.video-icon-overlay {
    position: absolute;
    z-index: 2;
    width: 100%;
    height: 100%
}

.thumbnail-slider {
    display: flex;
    flex-direction: row;
    height: 1.5rem
}

    .thumbnail-slider.thumbnail-slider--dragging, .thumbnail-slider.thumbnail-slider--dragging .thumbnail-slider__control {
        cursor: move;
        cursor: grabbing
    }

    .thumbnail-slider .thumbnail-slider__slider {
        flex-grow: 1
    }

    .thumbnail-slider .thumbnail-slider__slider-track {
        position: absolute;
        top: 0;
        right: 0;
        bottom: 0;
        left: 0;
        width: 100%;
        cursor: pointer;
        background-color: #99acc2;
        opacity: .7;
        border-radius: .3rem
    }

    .thumbnail-slider .thumbnail-slider__control {
        position: relative;
        top: -.5rem;
        height: 2.5rem;
        width: .75rem;
        background-color: #fff;
        border-radius: .625rem;
        box-shadow: 0 0 0 1px rgba(81,111,144,.3),0 1px 24px 0 rgba(0,0,0,.08);
        cursor: move;
        cursor: grab;
        transform: translateX(-.375rem)
    }

.video-player {
    background-color: #f5f8fa;
    width: 100%
}

.image__transparency-checkboard {
    background-color: #fff;
    background-image: -webkit-linear-gradient(45deg,#efefef 25%,transparent 0,transparent 75%,#efefef 0,#efefef),-webkit-linear-gradient(45deg,#efefef 25%,transparent 0,transparent 75%,#efefef 0,#efefef);
    background-image: -moz-linear-gradient(45deg,#efefef 25%,transparent 25%,transparent 75%,#efefef 75%,#efefef),-moz-linear-gradient(45deg,#efefef 25%,transparent 25%,transparent 75%,#efefef 75%,#efefef);
    background-image: -o-linear-gradient(45deg,#efefef 25%,transparent 25%,transparent 75%,#efefef 75%,#efefef),-o-linear-gradient(45deg,#efefef 25%,transparent 25%,transparent 75%,#efefef 75%,#efefef);
    background-image: -ms-linear-gradient(45deg,#efefef 25%,transparent 25%,transparent 75%,#efefef 75%,#efefef),-ms-linear-gradient(45deg,#efefef 25%,transparent 25%,transparent 75%,#efefef 75%,#efefef);
    background-image: linear-gradient(45deg,#efefef 25%,transparent 0,transparent 75%,#efefef 0,#efefef),linear-gradient(45deg,#efefef 25%,transparent 0,transparent 75%,#efefef 0,#efefef);
    background-size: 21px 21px;
    background-position: 0 0,10px 10px
}

.browse-folders__folder-tree {
    max-height: 400px;
    overflow: auto;
    border: 1px solid #cbd6e2
}

button.canva-loading-button {
    background-color: #eaf0f6 !important;
    padding-bottom: 0;
    padding-top: 0;
    width: 201px
}

.canva-button-text {
    font-size: 14px;
    font-weight: 500;
    vertical-align: middle
}

.file-detail {
    background-color: #fff;
    padding-top: 10px;
    padding-bottom: 10px
}

    .file-detail .filename-input.is-read-only span[data-icon-name=edit] {
        color: #cbd6e2
    }

.file-detail__wrapper {
    position: relative;
    border-top: 2px solid #eaf0f6;
    border-bottom: 2px solid #eaf0f6;
    padding-top: 16px;
    padding-bottom: 16px
}

.file-detail.with-panel-navigator {
    padding-top: 0;
    padding-bottom: 0
}

    .file-detail.with-panel-navigator .file-detail__wrapper {
        padding-top: 0;
        padding-bottom: 0;
        border: 0 none
    }

.file-detail__arrow {
    transform: rotate(-135deg);
    position: absolute;
    width: 16px;
    height: 16px;
    top: 2px;
    background-color: #fff;
    pointer-events: none;
    border-top-left-radius: 100%;
    border-right: 2px solid #eaf0f6;
    border-bottom: 2px solid #eaf0f6;
    z-index: 1
}

.file-detail__meta {
    line-height: 1.25
}

.file-detail__image-wrapper {
    position: relative;
    line-height: 1
}

    .file-detail__image-wrapper.square-wrapper-fix {
        display: flex;
        align-items: center;
        height: 380px;
        width: 380px
    }

    .file-detail__image-wrapper .file-detail__image {
        max-height: 380px
    }

.file-detail__image-overlay {
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0;
    background-color: transparent
}

.file-detail__image {
    display: block;
    margin-left: auto;
    margin-right: auto;
    height: auto
}

.folder-panel .folder-panel__toolbar {
    width: 100% !important;
    flex-grow: 0;
    line-height: 1
}

.from-url-panel__preview, .from-url-panel__url-field {
    width: 100%
}

.from-url-panel__preview-heading {
    font-weight: 500;
    font-size: 14px
}

.from-url-panel__preview-image {
    margin: 8px auto;
    max-height: 500px
}

.move-button__folder-tree {
    height: 320px;
    width: 300px;
    overflow-y: auto;
    overflow-x: hidden;
    border: 1px solid #cbd6e2
}

.search-panel__back-button {
    line-height: 1
}

.search-panel__tab-growth-fix {
    display: flex;
    flex: 1;
    flex-direction: column
}



@font-face {
    font-family: spacesword;
    src: url(//static.hsappstatic.net/icons/static-2.453/fonts/spacesword-low.woff2) format("woff2"),url(//static.hsappstatic.net/icons/static-2.453/fonts/spacesword-low.woff) format("woff")
}

@font-face {
    font-family: spacesword;
    src: url(//static.hsappstatic.net/icons/static-2.453/fonts/spacesword-high.woff2) format("woff2"),url(//static.hsappstatic.net/icons/static-2.453/fonts/spacesword-high.woff) format("woff");
    font-weight: 700
}

[class*=private-icon__] {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-family: spacesword !important;
    font-feature-settings: "liga";
    font-variant: normal;
    font-weight: 400;
    letter-spacing: 0;
    text-transform: none
}

    [class*=private-icon__][class*=high] {
        font-weight: 700
    }





/*! normalize.css v3.0.3 | MIT License | github.com/necolas/normalize.css */ html {
    font-family: sans-serif;
    -ms-text-size-adjust: 100%;
    -webkit-text-size-adjust: 100%
}

body {
    margin: 0
}

article, aside, details, figcaption, figure, footer, header, main, menu, nav, section, summary {
    display: block
}

audio, canvas, progress, video {
    display: inline-block;
    vertical-align: baseline
}

    audio:not([controls]) {
        display: none;
        height: 0
    }

[hidden], template {
    display: none
}

a {
    background-color: transparent
}

    a:active, a:hover {
        outline: 0
    }

abbr[title] {
    border-bottom: none;
    text-decoration: underline;
    text-decoration: underline dotted
}

dfn {
    font-style: italic
}

h1 {
    font-size: 2em;
    margin: .67em 0
}

mark {
    background-color: #ff0;
    color: #000
}

small {
    font-size: 80%
}

sub, sup {
    font-size: 75%;
    line-height: 0;
    position: relative;
    vertical-align: baseline
}

sup {
    top: -.5em
}

sub {
    bottom: -.25em
}

img {
    border: 0
}

svg:not(:root) {
    overflow: hidden
}

figure {
    margin: 1em 40px
}

hr {
    box-sizing: content-box;
    height: 0;
    overflow: visible
}

pre {
    overflow: auto
}

code, kbd, pre, samp {
    font-family: monospace,monospace;
    font-size: 1em
}

button, input, optgroup, select, textarea {
    font: inherit;
    margin: 0
}

button {
    overflow: visible
}

button, select {
    text-transform: none
}

button, input[type=button], input[type=reset], input[type=submit] {
    cursor: pointer
}

    button[disabled], input[disabled] {
        cursor: default
    }

    button::-moz-focus-inner, input::-moz-focus-inner {
        border: 0;
        padding: 0
    }

    button:-moz-focusring, input:-moz-focusring {
        outline: 1px dotted ButtonText
    }

input {
    line-height: normal
}

    input[type=checkbox], input[type=radio] {
        box-sizing: border-box;
        padding: 0
    }

    input[type=number]::-webkit-inner-spin-button, input[type=number]::-webkit-outer-spin-button {
        height: auto
    }

    input[type=search]::-webkit-search-cancel-button, input[type=search]::-webkit-search-decoration {
        -webkit-appearance: none
    }

fieldset {
    border: 1px solid silver;
    margin: 0 2px;
    padding: .35em .625em .75em
}

legend {
    border: 0;
    padding: 0
}

textarea {
    overflow: auto
}

optgroup {
    font-weight: 700
}

.container {
    margin-left: auto;
    margin-right: auto;
    padding-left: 16px;
    padding-right: 16px
}

@media (min-width:544px) {
    .container {
        max-width: 576px
    }
}

@media (min-width:768px) {
    .container {
        max-width: 720px
    }
}

@media (min-width:992px) {
    .container {
        max-width: 940px
    }
}

@media (min-width:1200px) {
    .container {
        max-width: 1140px
    }
}

.container-fluid {
    margin-left: auto;
    margin-right: auto;
    padding-left: 16px;
    padding-right: 16px
}

.row {
    display: flex;
    flex-wrap: wrap;
    margin-left: -16px;
    margin-right: -16px
}

.col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12, .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12, .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-xl-1, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-10, .col-xl-11, .col-xl-12, .col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
    position: relative;
    padding-left: 16px;
    padding-right: 16px
}

    .col-lg-1:empty, .col-lg-2:empty, .col-lg-3:empty, .col-lg-4:empty, .col-lg-5:empty, .col-lg-6:empty, .col-lg-7:empty, .col-lg-8:empty, .col-lg-9:empty, .col-lg-10:empty, .col-lg-11:empty, .col-lg-12:empty, .col-md-1:empty, .col-md-2:empty, .col-md-3:empty, .col-md-4:empty, .col-md-5:empty, .col-md-6:empty, .col-md-7:empty, .col-md-8:empty, .col-md-9:empty, .col-md-10:empty, .col-md-11:empty, .col-md-12:empty, .col-sm-1:empty, .col-sm-2:empty, .col-sm-3:empty, .col-sm-4:empty, .col-sm-5:empty, .col-sm-6:empty, .col-sm-7:empty, .col-sm-8:empty, .col-sm-9:empty, .col-sm-10:empty, .col-sm-11:empty, .col-sm-12:empty, .col-xl-1:empty, .col-xl-2:empty, .col-xl-3:empty, .col-xl-4:empty, .col-xl-5:empty, .col-xl-6:empty, .col-xl-7:empty, .col-xl-8:empty, .col-xl-9:empty, .col-xl-10:empty, .col-xl-11:empty, .col-xl-12:empty, .col-xs-1:empty, .col-xs-2:empty, .col-xs-3:empty, .col-xs-4:empty, .col-xs-5:empty, .col-xs-6:empty, .col-xs-7:empty, .col-xs-8:empty, .col-xs-9:empty, .col-xs-10:empty, .col-xs-11:empty, .col-xs-12:empty {
        min-height: 1px
    }

.col-xs-1 {
    flex: 0 0 8.33333%;
    max-width: 8.33333%
}

.col-xs-2 {
    flex: 0 0 16.66667%;
    max-width: 16.66667%
}

.col-xs-3 {
    flex: 0 0 25%;
    max-width: 25%
}

.col-xs-4 {
    flex: 0 0 33.33333%;
    max-width: 33.33333%
}

.col-xs-5 {
    flex: 0 0 41.66667%;
    max-width: 41.66667%
}

.col-xs-6 {
    flex: 0 0 50%;
    max-width: 50%
}

.col-xs-7 {
    flex: 0 0 58.33333%;
    max-width: 58.33333%
}

.col-xs-8 {
    flex: 0 0 66.66667%;
    max-width: 66.66667%
}

.col-xs-9 {
    flex: 0 0 75%;
    max-width: 75%
}

.col-xs-10 {
    flex: 0 0 83.33333%;
    max-width: 83.33333%
}

.col-xs-11 {
    flex: 0 0 91.66667%;
    max-width: 91.66667%
}

.col-xs-12 {
    flex: 0 0 100%;
    max-width: 100%
}

.col-xs-pull-0 {
    right: auto
}

.col-xs-pull-1 {
    right: 8.33333%
}

.col-xs-pull-2 {
    right: 16.66667%
}

.col-xs-pull-3 {
    right: 25%
}

.col-xs-pull-4 {
    right: 33.33333%
}

.col-xs-pull-5 {
    right: 41.66667%
}

.col-xs-pull-6 {
    right: 50%
}

.col-xs-pull-7 {
    right: 58.33333%
}

.col-xs-pull-8 {
    right: 66.66667%
}

.col-xs-pull-9 {
    right: 75%
}

.col-xs-pull-10 {
    right: 83.33333%
}

.col-xs-pull-11 {
    right: 91.66667%
}

.col-xs-pull-12 {
    right: 100%
}

.col-xs-push-0 {
    left: auto
}

.col-xs-push-1 {
    left: 8.33333%
}

.col-xs-push-2 {
    left: 16.66667%
}

.col-xs-push-3 {
    left: 25%
}

.col-xs-push-4 {
    left: 33.33333%
}

.col-xs-push-5 {
    left: 41.66667%
}

.col-xs-push-6 {
    left: 50%
}

.col-xs-push-7 {
    left: 58.33333%
}

.col-xs-push-8 {
    left: 66.66667%
}

.col-xs-push-9 {
    left: 75%
}

.col-xs-push-10 {
    left: 83.33333%
}

.col-xs-push-11 {
    left: 91.66667%
}

.col-xs-push-12 {
    left: 100%
}

.col-xs-offset-0 {
    margin-left: 0
}

.col-xs-offset-1 {
    margin-left: 8.33333%
}

.col-xs-offset-2 {
    margin-left: 16.66667%
}

.col-xs-offset-3 {
    margin-left: 25%
}

.col-xs-offset-4 {
    margin-left: 33.33333%
}

.col-xs-offset-5 {
    margin-left: 41.66667%
}

.col-xs-offset-6 {
    margin-left: 50%
}

.col-xs-offset-7 {
    margin-left: 58.33333%
}

.col-xs-offset-8 {
    margin-left: 66.66667%
}

.col-xs-offset-9 {
    margin-left: 75%
}

.col-xs-offset-10 {
    margin-left: 83.33333%
}

.col-xs-offset-11 {
    margin-left: 91.66667%
}

.col-xs-offset-12 {
    margin-left: 100%
}

@media (min-width:544px) {
    .col-sm-1 {
        flex: 0 0 8.33333%;
        max-width: 8.33333%
    }

    .col-sm-2 {
        flex: 0 0 16.66667%;
        max-width: 16.66667%
    }

    .col-sm-3 {
        flex: 0 0 25%;
        max-width: 25%
    }

    .col-sm-4 {
        flex: 0 0 33.33333%;
        max-width: 33.33333%
    }

    .col-sm-5 {
        flex: 0 0 41.66667%;
        max-width: 41.66667%
    }

    .col-sm-6 {
        flex: 0 0 50%;
        max-width: 50%
    }

    .col-sm-7 {
        flex: 0 0 58.33333%;
        max-width: 58.33333%
    }

    .col-sm-8 {
        flex: 0 0 66.66667%;
        max-width: 66.66667%
    }

    .col-sm-9 {
        flex: 0 0 75%;
        max-width: 75%
    }

    .col-sm-10 {
        flex: 0 0 83.33333%;
        max-width: 83.33333%
    }

    .col-sm-11 {
        flex: 0 0 91.66667%;
        max-width: 91.66667%
    }

    .col-sm-12 {
        flex: 0 0 100%;
        max-width: 100%
    }

    .col-sm-pull-0 {
        right: auto
    }

    .col-sm-pull-1 {
        right: 8.33333%
    }

    .col-sm-pull-2 {
        right: 16.66667%
    }

    .col-sm-pull-3 {
        right: 25%
    }

    .col-sm-pull-4 {
        right: 33.33333%
    }

    .col-sm-pull-5 {
        right: 41.66667%
    }

    .col-sm-pull-6 {
        right: 50%
    }

    .col-sm-pull-7 {
        right: 58.33333%
    }

    .col-sm-pull-8 {
        right: 66.66667%
    }

    .col-sm-pull-9 {
        right: 75%
    }

    .col-sm-pull-10 {
        right: 83.33333%
    }

    .col-sm-pull-11 {
        right: 91.66667%
    }

    .col-sm-pull-12 {
        right: 100%
    }

    .col-sm-push-0 {
        left: auto
    }

    .col-sm-push-1 {
        left: 8.33333%
    }

    .col-sm-push-2 {
        left: 16.66667%
    }

    .col-sm-push-3 {
        left: 25%
    }

    .col-sm-push-4 {
        left: 33.33333%
    }

    .col-sm-push-5 {
        left: 41.66667%
    }

    .col-sm-push-6 {
        left: 50%
    }

    .col-sm-push-7 {
        left: 58.33333%
    }

    .col-sm-push-8 {
        left: 66.66667%
    }

    .col-sm-push-9 {
        left: 75%
    }

    .col-sm-push-10 {
        left: 83.33333%
    }

    .col-sm-push-11 {
        left: 91.66667%
    }

    .col-sm-push-12 {
        left: 100%
    }

    .col-sm-offset-0 {
        margin-left: 0
    }

    .col-sm-offset-1 {
        margin-left: 8.33333%
    }

    .col-sm-offset-2 {
        margin-left: 16.66667%
    }

    .col-sm-offset-3 {
        margin-left: 25%
    }

    .col-sm-offset-4 {
        margin-left: 33.33333%
    }

    .col-sm-offset-5 {
        margin-left: 41.66667%
    }

    .col-sm-offset-6 {
        margin-left: 50%
    }

    .col-sm-offset-7 {
        margin-left: 58.33333%
    }

    .col-sm-offset-8 {
        margin-left: 66.66667%
    }

    .col-sm-offset-9 {
        margin-left: 75%
    }

    .col-sm-offset-10 {
        margin-left: 83.33333%
    }

    .col-sm-offset-11 {
        margin-left: 91.66667%
    }

    .col-sm-offset-12 {
        margin-left: 100%
    }
}

@media (min-width:768px) {
    .col-md-1 {
        flex: 0 0 8.33333%;
        max-width: 8.33333%
    }

    .col-md-2 {
        flex: 0 0 16.66667%;
        max-width: 16.66667%
    }

    .col-md-3 {
        flex: 0 0 25%;
        max-width: 25%
    }

    .col-md-4 {
        flex: 0 0 33.33333%;
        max-width: 33.33333%
    }

    .col-md-5 {
        flex: 0 0 41.66667%;
        max-width: 41.66667%
    }

    .col-md-6 {
        flex: 0 0 50%;
        max-width: 50%
    }

    .col-md-7 {
        flex: 0 0 58.33333%;
        max-width: 58.33333%
    }

    .col-md-8 {
        flex: 0 0 66.66667%;
        max-width: 66.66667%
    }

    .col-md-9 {
        flex: 0 0 75%;
        max-width: 75%
    }

    .col-md-10 {
        flex: 0 0 83.33333%;
        max-width: 83.33333%
    }

    .col-md-11 {
        flex: 0 0 91.66667%;
        max-width: 91.66667%
    }

    .col-md-12 {
        flex: 0 0 100%;
        max-width: 100%
    }

    .col-md-pull-0 {
        right: auto
    }

    .col-md-pull-1 {
        right: 8.33333%
    }

    .col-md-pull-2 {
        right: 16.66667%
    }

    .col-md-pull-3 {
        right: 25%
    }

    .col-md-pull-4 {
        right: 33.33333%
    }

    .col-md-pull-5 {
        right: 41.66667%
    }

    .col-md-pull-6 {
        right: 50%
    }

    .col-md-pull-7 {
        right: 58.33333%
    }

    .col-md-pull-8 {
        right: 66.66667%
    }

    .col-md-pull-9 {
        right: 75%
    }

    .col-md-pull-10 {
        right: 83.33333%
    }

    .col-md-pull-11 {
        right: 91.66667%
    }

    .col-md-pull-12 {
        right: 100%
    }

    .col-md-push-0 {
        left: auto
    }

    .col-md-push-1 {
        left: 8.33333%
    }

    .col-md-push-2 {
        left: 16.66667%
    }

    .col-md-push-3 {
        left: 25%
    }

    .col-md-push-4 {
        left: 33.33333%
    }

    .col-md-push-5 {
        left: 41.66667%
    }

    .col-md-push-6 {
        left: 50%
    }

    .col-md-push-7 {
        left: 58.33333%
    }

    .col-md-push-8 {
        left: 66.66667%
    }

    .col-md-push-9 {
        left: 75%
    }

    .col-md-push-10 {
        left: 83.33333%
    }

    .col-md-push-11 {
        left: 91.66667%
    }

    .col-md-push-12 {
        left: 100%
    }

    .col-md-offset-0 {
        margin-left: 0
    }

    .col-md-offset-1 {
        margin-left: 8.33333%
    }

    .col-md-offset-2 {
        margin-left: 16.66667%
    }

    .col-md-offset-3 {
        margin-left: 25%
    }

    .col-md-offset-4 {
        margin-left: 33.33333%
    }

    .col-md-offset-5 {
        margin-left: 41.66667%
    }

    .col-md-offset-6 {
        margin-left: 50%
    }

    .col-md-offset-7 {
        margin-left: 58.33333%
    }

    .col-md-offset-8 {
        margin-left: 66.66667%
    }

    .col-md-offset-9 {
        margin-left: 75%
    }

    .col-md-offset-10 {
        margin-left: 83.33333%
    }

    .col-md-offset-11 {
        margin-left: 91.66667%
    }

    .col-md-offset-12 {
        margin-left: 100%
    }
}

@media (min-width:992px) {
    .col-lg-1 {
        flex: 0 0 8.33333%;
        max-width: 8.33333%
    }

    .col-lg-2 {
        flex: 0 0 16.66667%;
        max-width: 16.66667%
    }

    .col-lg-3 {
        flex: 0 0 25%;
        max-width: 25%
    }

    .col-lg-4 {
        flex: 0 0 33.33333%;
        max-width: 33.33333%
    }

    .col-lg-5 {
        flex: 0 0 41.66667%;
        max-width: 41.66667%
    }

    .col-lg-6 {
        flex: 0 0 50%;
        max-width: 50%
    }

    .col-lg-7 {
        flex: 0 0 58.33333%;
        max-width: 58.33333%
    }

    .col-lg-8 {
        flex: 0 0 66.66667%;
        max-width: 66.66667%
    }

    .col-lg-9 {
        flex: 0 0 75%;
        max-width: 75%
    }

    .col-lg-10 {
        flex: 0 0 83.33333%;
        max-width: 83.33333%
    }

    .col-lg-11 {
        flex: 0 0 91.66667%;
        max-width: 91.66667%
    }

    .col-lg-12 {
        flex: 0 0 100%;
        max-width: 100%
    }

    .col-lg-pull-0 {
        right: auto
    }

    .col-lg-pull-1 {
        right: 8.33333%
    }

    .col-lg-pull-2 {
        right: 16.66667%
    }

    .col-lg-pull-3 {
        right: 25%
    }

    .col-lg-pull-4 {
        right: 33.33333%
    }

    .col-lg-pull-5 {
        right: 41.66667%
    }

    .col-lg-pull-6 {
        right: 50%
    }

    .col-lg-pull-7 {
        right: 58.33333%
    }

    .col-lg-pull-8 {
        right: 66.66667%
    }

    .col-lg-pull-9 {
        right: 75%
    }

    .col-lg-pull-10 {
        right: 83.33333%
    }

    .col-lg-pull-11 {
        right: 91.66667%
    }

    .col-lg-pull-12 {
        right: 100%
    }

    .col-lg-push-0 {
        left: auto
    }

    .col-lg-push-1 {
        left: 8.33333%
    }

    .col-lg-push-2 {
        left: 16.66667%
    }

    .col-lg-push-3 {
        left: 25%
    }

    .col-lg-push-4 {
        left: 33.33333%
    }

    .col-lg-push-5 {
        left: 41.66667%
    }

    .col-lg-push-6 {
        left: 50%
    }

    .col-lg-push-7 {
        left: 58.33333%
    }

    .col-lg-push-8 {
        left: 66.66667%
    }

    .col-lg-push-9 {
        left: 75%
    }

    .col-lg-push-10 {
        left: 83.33333%
    }

    .col-lg-push-11 {
        left: 91.66667%
    }

    .col-lg-push-12 {
        left: 100%
    }

    .col-lg-offset-0 {
        margin-left: 0
    }

    .col-lg-offset-1 {
        margin-left: 8.33333%
    }

    .col-lg-offset-2 {
        margin-left: 16.66667%
    }

    .col-lg-offset-3 {
        margin-left: 25%
    }

    .col-lg-offset-4 {
        margin-left: 33.33333%
    }

    .col-lg-offset-5 {
        margin-left: 41.66667%
    }

    .col-lg-offset-6 {
        margin-left: 50%
    }

    .col-lg-offset-7 {
        margin-left: 58.33333%
    }

    .col-lg-offset-8 {
        margin-left: 66.66667%
    }

    .col-lg-offset-9 {
        margin-left: 75%
    }

    .col-lg-offset-10 {
        margin-left: 83.33333%
    }

    .col-lg-offset-11 {
        margin-left: 91.66667%
    }

    .col-lg-offset-12 {
        margin-left: 100%
    }
}

@media (min-width:1200px) {
    .col-xl-1 {
        flex: 0 0 8.33333%;
        max-width: 8.33333%
    }

    .col-xl-2 {
        flex: 0 0 16.66667%;
        max-width: 16.66667%
    }

    .col-xl-3 {
        flex: 0 0 25%;
        max-width: 25%
    }

    .col-xl-4 {
        flex: 0 0 33.33333%;
        max-width: 33.33333%
    }

    .col-xl-5 {
        flex: 0 0 41.66667%;
        max-width: 41.66667%
    }

    .col-xl-6 {
        flex: 0 0 50%;
        max-width: 50%
    }

    .col-xl-7 {
        flex: 0 0 58.33333%;
        max-width: 58.33333%
    }

    .col-xl-8 {
        flex: 0 0 66.66667%;
        max-width: 66.66667%
    }

    .col-xl-9 {
        flex: 0 0 75%;
        max-width: 75%
    }

    .col-xl-10 {
        flex: 0 0 83.33333%;
        max-width: 83.33333%
    }

    .col-xl-11 {
        flex: 0 0 91.66667%;
        max-width: 91.66667%
    }

    .col-xl-12 {
        flex: 0 0 100%;
        max-width: 100%
    }

    .col-xl-pull-0 {
        right: auto
    }

    .col-xl-pull-1 {
        right: 8.33333%
    }

    .col-xl-pull-2 {
        right: 16.66667%
    }

    .col-xl-pull-3 {
        right: 25%
    }

    .col-xl-pull-4 {
        right: 33.33333%
    }

    .col-xl-pull-5 {
        right: 41.66667%
    }

    .col-xl-pull-6 {
        right: 50%
    }

    .col-xl-pull-7 {
        right: 58.33333%
    }

    .col-xl-pull-8 {
        right: 66.66667%
    }

    .col-xl-pull-9 {
        right: 75%
    }

    .col-xl-pull-10 {
        right: 83.33333%
    }

    .col-xl-pull-11 {
        right: 91.66667%
    }

    .col-xl-pull-12 {
        right: 100%
    }

    .col-xl-push-0 {
        left: auto
    }

    .col-xl-push-1 {
        left: 8.33333%
    }

    .col-xl-push-2 {
        left: 16.66667%
    }

    .col-xl-push-3 {
        left: 25%
    }

    .col-xl-push-4 {
        left: 33.33333%
    }

    .col-xl-push-5 {
        left: 41.66667%
    }

    .col-xl-push-6 {
        left: 50%
    }

    .col-xl-push-7 {
        left: 58.33333%
    }

    .col-xl-push-8 {
        left: 66.66667%
    }

    .col-xl-push-9 {
        left: 75%
    }

    .col-xl-push-10 {
        left: 83.33333%
    }

    .col-xl-push-11 {
        left: 91.66667%
    }

    .col-xl-push-12 {
        left: 100%
    }

    .col-xl-offset-0 {
        margin-left: 0
    }

    .col-xl-offset-1 {
        margin-left: 8.33333%
    }

    .col-xl-offset-2 {
        margin-left: 16.66667%
    }

    .col-xl-offset-3 {
        margin-left: 25%
    }

    .col-xl-offset-4 {
        margin-left: 33.33333%
    }

    .col-xl-offset-5 {
        margin-left: 41.66667%
    }

    .col-xl-offset-6 {
        margin-left: 50%
    }

    .col-xl-offset-7 {
        margin-left: 58.33333%
    }

    .col-xl-offset-8 {
        margin-left: 66.66667%
    }

    .col-xl-offset-9 {
        margin-left: 75%
    }

    .col-xl-offset-10 {
        margin-left: 83.33333%
    }

    .col-xl-offset-11 {
        margin-left: 91.66667%
    }

    .col-xl-offset-12 {
        margin-left: 100%
    }
}

.col-xs-first {
    order: -1
}

.col-xs-last {
    order: 1
}

@media (min-width:544px) {
    .col-sm-first {
        order: -1
    }

    .col-sm-last {
        order: 1
    }
}

@media (min-width:768px) {
    .col-md-first {
        order: -1
    }

    .col-md-last {
        order: 1
    }
}

@media (min-width:992px) {
    .col-lg-first {
        order: -1
    }

    .col-lg-last {
        order: 1
    }
}

@media (min-width:1200px) {
    .col-xl-first {
        order: -1
    }

    .col-xl-last {
        order: 1
    }
}

.row-xs-top {
    align-items: flex-start
}

.row-xs-center {
    align-items: center
}

.row-xs-bottom {
    align-items: flex-end
}

@media (min-width:544px) {
    .row-sm-top {
        align-items: flex-start
    }

    .row-sm-center {
        align-items: center
    }

    .row-sm-bottom {
        align-items: flex-end
    }
}

@media (min-width:768px) {
    .row-md-top {
        align-items: flex-start
    }

    .row-md-center {
        align-items: center
    }

    .row-md-bottom {
        align-items: flex-end
    }
}

@media (min-width:992px) {
    .row-lg-top {
        align-items: flex-start
    }

    .row-lg-center {
        align-items: center
    }

    .row-lg-bottom {
        align-items: flex-end
    }
}

@media (min-width:1200px) {
    .row-xl-top {
        align-items: flex-start
    }

    .row-xl-center {
        align-items: center
    }

    .row-xl-bottom {
        align-items: flex-end
    }
}

.col-xs-top {
    align-self: flex-start
}

.col-xs-center {
    align-self: center
}

.col-xs-bottom {
    align-self: flex-end
}

@media (min-width:544px) {
    .col-sm-top {
        align-self: flex-start
    }

    .col-sm-center {
        align-self: center
    }

    .col-sm-bottom {
        align-self: flex-end
    }
}

@media (min-width:768px) {
    .col-md-top {
        align-self: flex-start
    }

    .col-md-center {
        align-self: center
    }

    .col-md-bottom {
        align-self: flex-end
    }
}

@media (min-width:992px) {
    .col-lg-top {
        align-self: flex-start
    }

    .col-lg-center {
        align-self: center
    }

    .col-lg-bottom {
        align-self: flex-end
    }
}

@media (min-width:1200px) {
    .col-xl-top {
        align-self: flex-start
    }

    .col-xl-center {
        align-self: center
    }

    .col-xl-bottom {
        align-self: flex-end
    }
}

.flex-shrink-0, .no-shrink {
    display: flex;
    flex-shrink: 0 !important
}

.flex-grow-1 {
    display: flex;
    flex-grow: 1 !important
}

.flex-no-wrap {
    display: flex;
    flex-wrap: nowrap !important
}

.flex-wrap {
    display: flex;
    flex-wrap: wrap !important
}

.flex-wrap-reverse {
    display: flex;
    flex-wrap: wrap-reverse !important
}

.flex-column {
    display: flex;
    flex-direction: column !important
}

.flex-row {
    display: flex;
    flex-direction: row !important
}

.justify-start {
    display: flex;
    justify-content: flex-start !important
}

.justify-end {
    display: flex;
    justify-content: flex-end !important
}

.justify-between {
    display: flex;
    justify-content: space-between !important
}

.justify-around {
    display: flex;
    justify-content: space-around !important
}

.justify-center {
    display: flex;
    justify-content: center !important
}

.align-start {
    display: flex;
    align-items: flex-start !important
}

.align-end {
    display: flex;
    align-items: flex-end !important
}

.align-center {
    display: flex;
    align-items: center !important
}

.align-stretch {
    display: flex;
    align-items: stretch !important
}

.align-baseline {
    display: flex;
    align-items: baseline !important
}

.align-self-start {
    display: flex;
    align-self: flex-start !important
}

.align-self-end {
    display: flex;
    align-self: flex-end !important
}

.align-self-center {
    display: flex;
    align-self: center !important
}

.align-self-stretch {
    display: flex;
    align-self: stretch !important
}

.align-self-baseline {
    display: flex;
    align-self: baseline !important
}

.hs-custom-select {
    position: relative;
    display: block
}

    .hs-custom-select select {
        width: 100%;
        margin: 0;
        outline: none;
        padding: .6em .8em .5em;
        box-sizing: border-box;
        font-size: 16px
    }

    .hs-custom-select:after {
        content: " ";
        position: absolute;
        top: 50%;
        right: 1em;
        z-index: 2;
        pointer-events: none;
        display: none
    }

@supports (-webkit-appearance:none) or (appearance:none) or ((-moz-appearance:none) and (mask-type:alpha)) {
    .hs-custom-select:after {
        display: block
    }

    .hs-custom-select select {
        padding-right: 2em;
        background: none;
        border: 1px solid transparent;
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none
    }

        .hs-custom-select select:focus {
            border-color: #aaa
        }
}

.hs-custom-select select:-moz-focusring {
    color: transparent;
    text-shadow: 0 0 0 #000
}

@media (-ms-high-contrast:none),screen and (-ms-high-contrast:active) {
    .hs-custom-select select::-ms-expand {
        display: none
    }

    .hs-custom-select select:focus {
        border-color: #aaa
    }

        .hs-custom-select select:focus::-ms-value {
            background: transparent;
            color: #222
        }

    .hs-custom-select select {
        padding-right: 2em;
        background: none;
        border: 1px solid transparent
    }

    .hs-custom-select:after {
        display: block
    }
}

.private-hide-overflow {
    overflow: hidden !important
}

    .private-hide-overflow:after, .private-hide-overflow:before {
        content: none !important
    }

*, :after, :before {
    box-sizing: border-box
}

html {
    font-size: 16px
}

a {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    color: #0091ae;
    text-decoration: none;
    cursor: pointer
}

    a:hover {
        color: #007a8c;
        text-decoration: underline
    }

    a:active {
        color: #7fd1de
    }

    a .is--code, a code, b, strong {
        font-weight: 600
    }

dd, fieldset, figcaption, figure, hr, ol, p, pre, table, ul {
    margin-bottom: 16px;
    margin-top: 0
}

li > ol, li > ul {
    margin-bottom: 0
}

figure {
    margin: 0
}

:-moz-ui-invalid {
    box-shadow: none
}

[aria-disabled=true] {
    cursor: inherit
}

.hubspot-disable-focus-styles :focus:not(input):not(textarea):not(.keep-default-focus-styles) {
    outline: 0
}

input[type=button], input[type=search], input[type=submit], input[type=text] {
    -webkit-appearance: none
}

input, textarea {
    -webkit-hyphens: none;
    hyphens: none
}

body {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    font-size: 14px;
    color: #33475b;
    line-height: 24px
}

h1 {
    font-weight: 700;
    font-size: 32px
}

h1, h2 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    line-height: normal;
    text-transform: none
}

h2 {
    font-weight: 400;
    font-size: 24px
}

h3 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 500;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    font-size: 22px;
    line-height: normal;
    text-transform: none
}

h4 {
    font-size: 20px
}

h4, h5 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    line-height: normal;
    text-transform: none
}

h5 {
    font-size: 16px
}

h6 {
    margin-bottom: 16px;
    margin-top: 0;
    font-size: 14px;
    text-transform: uppercase
}

.private-page__title h1, h6 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    display: block;
    line-height: normal
}

.private-page__title h1 {
    margin-bottom: 16px;
    margin-top: 0;
    font-size: 20px;
    margin: 0
}

.is--code, .private-code, .private-pre--code, code {
    color: #33475b;
    font-family: Source Code Pro,Consolas,Monaco,Courier New,monospace;
    font-weight: 500
}

code {
    -webkit-font-smoothing: auto;
    -moz-osx-font-smoothing: auto;
    border-radius: 3px;
    background-color: #eaf0f6;
    padding: 2px 4px
}

.private-pre--code, pre.is--code {
    background-color: #f5f8fa;
    border: 0
}

.private-microcopy, small {
    font-size: 12px;
    line-height: 18px
}

.private-big, big {
    font-size: 16px
}

.private-break-string {
    -ms-word-break: break-all;
    display: block;
    word-break: break-word;
    word-wrap: break-word
}

.private-break-string--hyphenate {
    -ms-hyphens: auto;
    -webkit-hyphens: auto;
    hyphens: auto
}

.private-break-string--no-hyphenate {
    -ms-hyphens: none !important;
    -webkit-hyphens: none !important;
    hyphens: none !important
}

@supports (-ms-ime-align:auto) {
    .private-table .private-break-string {
        word-break: break-all
    }
}

@font-face {
    font-family: Avenir Next W02;
    src: url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Regular.woff2) format("woff2"),url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Regular.woff) format("woff")
}

@font-face {
    font-family: Avenir Next W02;
    font-style: italic;
    src: url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Regular-Italic.woff2) format("woff2"),url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Regular-Italic.woff) format("woff")
}

@font-face {
    font-family: Avenir Next W02;
    src: url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Medium.woff2) format("woff2"),url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Medium.woff) format("woff");
    font-weight: 500
}

@font-face {
    font-family: Avenir Next W02;
    src: url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Demi.woff2) format("woff2"),url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Demi.woff) format("woff");
    font-weight: 600
}

@font-face {
    font-family: Avenir Next W02;
    font-style: italic;
    src: url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Demi-Italic.woff2) format("woff2"),url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Demi-Italic.woff) format("woff");
    font-weight: 600
}

@font-face {
    font-family: Avenir Next W02;
    src: url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Bold.woff2) format("woff2"),url(//static.hsappstatic.net/ui-fonts/static-1.228/fonts/AvenirNext-Bold.woff) format("woff");
    font-weight: 700
}

@font-face {
    font-family: Source Code Pro;
    src: local("Source Code Pro"),local("SourceCodePro-Regular"),url(https://fonts.gstatic.com/s/sourcecodepro/v7/mrl8jkM18OlOQN8JLgasD4a1YDtoarzwSXxTHggEXMw.woff2) format("woff2");
    unicode-range: u+0100-024f,u+1e??,u+20a0-20ab,u+20ad-20cf,u+2c60-2c7f,u+a720-a7ff
}

@font-face {
    font-family: Source Code Pro;
    src: local("Source Code Pro"),local("SourceCodePro-Regular"),url(https://fonts.gstatic.com/s/sourcecodepro/v7/mrl8jkM18OlOQN8JLgasD5bPFduIYtoLzwST68uhz_Y.woff2) format("woff2");
    unicode-range: u+00??,u+0131,u+0152-0153,u+02c6,u+02da,u+02dc,u+2000-206f,u+2074,u+20ac,u+2212,u+2215
}

@font-face {
    font-family: Source Code Pro;
    font-weight: 500;
    src: local("Source Code Pro Medium"),local("SourceCodePro-Medium"),url(https://fonts.gstatic.com/s/sourcecodepro/v7/leqv3v-yTsJNC7nFznSMqYiWhBA8PULXA-6K3RG7rOb3rGVtsTkPsbDajuO5ueQw.woff2) format("woff2");
    unicode-range: u+0100-024f,u+1e??,u+20a0-20ab,u+20ad-20cf,u+2c60-2c7f,u+a720-a7ff
}

@font-face {
    font-family: Source Code Pro;
    font-weight: 500;
    src: local("Source Code Pro Medium"),local("SourceCodePro-Medium"),url(https://fonts.gstatic.com/s/sourcecodepro/v7/leqv3v-yTsJNC7nFznSMqQkmYxw_9-DA-DdfP1SWvz8.woff2) format("woff2");
    unicode-range: u+00??,u+0131,u+0152-0153,u+02c6,u+02da,u+02dc,u+2000-206f,u+2074,u+20ac,u+2212,u+2215
}

.list-unstyled {
    padding-left: 0 !important
}

.list-inline > li {
    padding-right: 4px !important;
    padding-left: 4px !important
}

.list-unstyled {
    list-style: none !important
}

.list-inline, .list-inline > li {
    display: inline-block !important
}

.private-avatar-add {
    background-color: #eaf0f6;
    border: 1px solid #cbd6e2;
    color: #516f90;
    cursor: pointer
}

    .private-avatar-add:hover {
        background-color: #f5f8fa
    }

    .private-avatar-add:active {
        background-color: #cbd6e2
    }

.private-back-button.private-back-button.private-back-button {
    flex-shrink: 0;
    display: inline-block;
    margin: 0;
    padding: 0
}

    .private-back-button.private-back-button.private-back-button > * {
        font-size: inherit;
        vertical-align: inherit
    }

.private-tool-bar--dark .private-back-button.private-back-button.private-back-button {
    vertical-align: bottom
}

.private-tool-bar--dark .private-back-button.private-back-button > * {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    color: #fff;
    text-decoration: underline;
    text-decoration: none;
    vertical-align: inherit
}

.private-tool-bar--dark .private-back-button.private-back-button > :hover {
    color: #7fd1de;
    text-decoration: underline
}

.private-tool-bar--dark .private-back-button.private-back-button > :active {
    color: #eaf0f6
}

.private-tool-bar--dark .private-breadcrumbs__arrow--back.private-breadcrumbs__arrow--back.private-breadcrumbs__arrow--back.private-breadcrumbs__arrow--back {
    font-size: 22px;
    margin-right: 0
}

.private-breadcrumbs {
    color: #516f90;
    margin-top: 16px;
    overflow: hidden;
    padding: 0 48px;
    position: relative;
    text-overflow: ellipsis;
    z-index: 1
}

    .private-breadcrumbs .private-breadcrumbs__arrow {
        font-size: 10px;
        color: #7c98b6;
        line-height: 0;
        margin-left: .5em;
        margin-right: .5em;
        vertical-align: middle
    }

        .private-breadcrumbs .private-breadcrumbs__arrow.private-breadcrumbs__arrow--back.private-breadcrumbs__arrow--back {
            color: inherit
        }

    .private-breadcrumbs > :first-child .private-breadcrumbs__arrow {
        margin: 0;
        margin-right: .5em
    }

    .private-breadcrumbs .private-breadcrumbs__item {
        font-size: 12px;
        position: relative;
        vertical-align: middle
    }

        .private-breadcrumbs .private-breadcrumbs__item + .private-breadcrumbs__item {
            margin-left: 0
        }

    .private-breadcrumbs + .private-header {
        padding-top: 0
    }

.private-header .private-breadcrumbs {
    padding-left: 0;
    padding-right: 0;
    margin-top: 0
}

.private-breadcrumbs--flush {
    padding-left: 0;
    padding-right: 0
}

.private-breadcrumbs--no-wrap {
    white-space: nowrap
}

.private-image {
    vertical-align: middle
}

.private-image--responsive {
    display: block;
    height: auto;
    max-width: 100%
}

.private-image--circle {
    border-radius: 100%
}

.private-image--rounded, .private-image--thumbnail {
    border-radius: 3px
}

.private-illustration {
    max-width: 100%
}

    .private-illustration.private-illustration--disabled {
        opacity: .5
    }

.private-image--bordered {
    border: 1px solid currentColor
}

.private-image--object-fit-contain {
    object-fit: contain
}

.private-image--object-fit-cover {
    object-fit: cover
}

.private-image--fitted {
    height: 100%;
    width: 100%
}

.private-link--on-dark {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    color: #fff;
    text-decoration: none;
    text-decoration: underline
}

    .private-link--on-dark:hover {
        color: #7fd1de;
        text-decoration: underline
    }

    .private-link--on-dark:active {
        color: #eaf0f6
    }

.private-link--on-bright {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    text-decoration: none;
    -webkit-font-smoothing: auto;
    -moz-osx-font-smoothing: auto
}

    .private-link--on-bright, .private-link--on-bright:hover {
        color: #33475b;
        text-decoration: underline
    }

        .private-link--on-bright:active {
            color: #33475b
        }

.private-link--underlined {
    text-decoration: underline
}

.private-link--danger {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    color: #f2545b;
    text-decoration: none
}

    .private-link--danger:hover {
        color: #d94c53;
        text-decoration: underline
    }

    .private-link--danger:active {
        color: #d94c53
    }

.private-link--mention {
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    color: #425b76;
    text-decoration: none;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 700
}

    .private-link--mention:hover {
        color: #33475b;
        text-decoration: underline
    }

    .private-link--mention:active {
        color: #33475b
    }

.private-link--disabled {
    color: #b0c1d4 !important;
    cursor: not-allowed;
    text-decoration: none !important
}

.private-link--unstyled, .private-link--unstyled:hover {
    -webkit-font-smoothing: auto;
    -moz-osx-font-smoothing: auto;
    color: inherit;
    font: inherit;
    line-height: inherit;
    text-decoration: inherit
}

.private-link .private-icon:not(.private-icon-circle__inner) {
    color: #7c98b6;
    margin-right: .5em
}

.private-link--on-dark .private-icon:not(.private-icon-circle__inner) {
    color: #fff
}

.private-link--on-bright .private-icon:not(.private-icon-circle__inner) {
    color: #425b76
}

.private-link--disabled .private-icon:not(.private-icon-circle__inner) {
    color: inherit
}

.private-link--external__icon.private-link--external__icon.private-link--external__icon {
    margin-left: .25em;
    margin-right: .25em
}

.private-list--unstyled {
    list-style: none;
    margin-bottom: 0;
    padding-left: 0
}

.private-list--inline, .private-list--inline > li {
    display: inline-block;
    max-width: 100%
}

    .private-list--inline > li {
        padding-left: 4px;
        padding-right: 4px
    }

.private-list--inline-divided.private-list--inline li:first-child {
    padding-left: 0
}

.private-list--inline-divided.private-list--inline li:last-child {
    padding-right: 0
}

.private-list--inline-divided.private-list--inline > li {
    padding-right: 7px
}

    .private-list--inline-divided.private-list--inline > li + li {
        background-image: linear-gradient(180deg,#cbd6e2,#cbd6e2);
        background-position: 0 50%;
        background-repeat: no-repeat;
        background-size: 1px 60%;
        padding-left: 8px
    }

.private-lock-badge {
    font-size: 14px;
    margin-left: .5em
}

.private-button__dropdown-opener .private-lock-badge {
    margin-left: 0;
    margin-right: .5em
}

.private-button {
    border-radius: 3px;
    border-style: solid;
    border-width: 1px;
    -webkit-font-smoothing: auto;
    -moz-osx-font-smoothing: auto;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    text-align: center;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    transition: all .15s ease-out;
    display: inline-block;
    max-width: 100%;
    overflow: hidden;
    text-overflow: ellipsis;
    vertical-align: middle;
    white-space: nowrap
}

    .private-button:hover {
        text-decoration: none
    }

@media only screen and (min-width:545px) {
    .private-button + .private-button {
        margin-left: 12px
    }
}

@media only screen and (max-width:544px) {
    .private-button + .private-button {
        margin-top: 6px
    }
}

.private-button.private-form__control {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400
}

    .private-button.private-form__control.private-button--active:not(.private-button--readonly) {
        border-color: rgba(0,208,228,.5) !important;
        box-shadow: 0 0 4px 1px rgba(0,208,228,.3),0 0 0 1px #00d0e4 !important;
        outline: 0
    }

.private-button.private-button--disabled, .private-button[aria-disabled=true] {
    background-color: #eaf0f6 !important;
    border-color: #eaf0f6 !important;
    color: #b0c1d4 !important;
    cursor: not-allowed
}

.private-button .private-truncated-string--is-flex {
    justify-content: center
}

.private-button.private-button--readonly:not(.private-form__control--inline) {
    background-color: #eaf0f6 !important;
    border-color: #eaf0f6 !important;
    color: #33475b !important;
    cursor: auto;
    -ms-user-select: auto;
    user-select: auto
}

    .private-button.private-button--readonly:not(.private-form__control--inline) .private-typeahead-result {
        -webkit-user-select: auto
    }

.private-button--block {
    width: 100%
}

.private-button--xs {
    font-size: 12px;
    line-height: 14px;
    padding: 5px 12px
}

@media only screen and (max-width:544px) {
    .private-button--xs {
        width: 100%
    }
}

.private-button--sm {
    font-size: 12px;
    line-height: 14px;
    padding: 8px 16px
}

@media only screen and (max-width:544px) {
    .private-button--sm {
        width: 100%
    }
}

.private-button--toolbar {
    padding-left: 6px;
    padding-right: 6px
}

.private-button--default {
    font-size: 14px;
    line-height: 16px;
    padding: 11px 24px;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 500
}

@media only screen and (max-width:544px) {
    .private-button--default {
        width: 100%
    }
}

.private-button--lg {
    font-size: 44px;
    line-height: 46px;
    padding: 16px 18px
}

@media only screen and (max-width:544px) {
    .private-button--lg {
        width: 100%
    }
}

.private-button--primary {
    background-color: #213364;
    border-color: #213364;
    color: #fff
}

    .private-button--primary:hover {
        background-color: #62C3FC;
        border-color: #62C3FC;
        color: #fff
    }

    .private-button--primary.private-button--active {
        background-color: #65E3E6;
        border-color: #65E3E6;
        color: #fff
    }

.private-button--primary--white {
    background-color: #fff;
    border-color: transparent;
    color: #33475b
}

    .private-button--primary--white:hover {
        background-color: hsla(0,0%,100%,.9);
        border-color: transparent;
        color: #33475b
    }

    .private-button--primary--white.private-button--active {
        background-color: hsla(0,0%,100%,.8);
        border-color: transparent;
        color: #33475b
    }

.private-button--secondary {
    background-color: #fff;
    border-color: #213364;
    color: #213364
}

    .private-button--secondary:hover {
        background-color: #fff8f6;
        color: #62C3FC
    }

    .private-button--secondary.private-button--active {
        background-color: #ffebe6;
        color: #65E3E6
    }

.private-button--secondary--ghost {
    background-color: transparent;
    border-color: #fff;
    color: #fff
}

    .private-button--secondary--ghost:hover {
        background-color: hsla(0,0%,100%,.05);
        border-color: #fff;
        color: #fff
    }

    .private-button--secondary--ghost.private-button--active {
        background-color: hsla(0,0%,100%,.1);
        border-color: #fff;
        color: #fff
    }

.private-button--tertiary {
    background-color: #425b76;
    border-color: #425b76;
    color: #fff
}

    .private-button--tertiary:hover {
        background-color: #516f90;
        border-color: #516f90;
        color: #fff
    }

    .private-button--tertiary.private-button--active {
        background-color: #33475b;
        border-color: #33475b;
        color: #fff
    }

.private-button--tertiary-light {
    background-color: #eaf0f6;
    border-color: #cbd6e2;
    color: #506e91
}

    .private-button--tertiary-light:hover {
        background-color: #f5f8fa;
        color: #506e91
    }

    .private-button--tertiary-light.private-button--active {
        background-color: #cbd6e2;
        border-color: #7c98b6;
        color: #506e91
    }

.private-button--tertiary-extra-light {
    background-color: #fff;
    border-color: #cbd6e2;
    color: #506e91
}

    .private-button--tertiary-extra-light:hover {
        background-color: #f5f8fa;
        color: #506e91
    }

    .private-button--tertiary-extra-light.private-button--active {
        background-color: #cbd6e2;
        border-color: #7c98b6;
        color: #506e91
    }

.private-button--destructive {
    background-color: #f2545b;
    border-color: #f2545b;
    color: #fff
}

    .private-button--destructive:hover {
        background-color: #ff5962;
        border-color: #ff5962;
        color: #fff
    }

    .private-button--destructive.private-button--active {
        background-color: #d94c53;
        border-color: #d94c53;
        color: #fff
    }

.private-button--transparent {
    background-color: transparent;
    border-color: transparent;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    color: #0091ae;
    text-decoration: none;
    -webkit-user-select: inherit;
    -moz-user-select: inherit;
    -ms-user-select: inherit;
    user-select: inherit
}

    .private-button--transparent:hover {
        color: #007a8c;
        text-decoration: underline
    }

    .private-button--transparent:active {
        color: #7fd1de
    }

    .private-button--transparent.private-button--xs {
        padding-left: 6px;
        padding-right: 6px
    }

    .private-button--transparent.private-button--sm {
        padding-left: 8px;
        padding-right: 8px
    }

    .private-button--transparent.private-button--default {
        padding-left: 12px;
        padding-right: 12px
    }

.private-button--form:hover {
    color: #33475b
}

.private-button--form.private-button--form--on-dark, .private-button--form.private-button--form--on-dark.private-button--form--on-dark:focus, .private-button--form.private-button--form--on-dark.private-button--form--on-dark:hover {
    background-color: #fff
}

.private-button__link {
    background-color: transparent;
    border-color: transparent;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    color: #0091ae;
    text-decoration: none;
    -webkit-user-select: inherit;
    -moz-user-select: inherit;
    -ms-user-select: inherit;
    user-select: inherit;
    border: 0;
    display: inline;
    font-size: inherit;
    line-height: inherit;
    overflow: visible;
    padding: 0;
    text-align: inherit;
    vertical-align: inherit;
    white-space: normal
}

    .private-button__link:hover {
        color: #007a8c;
        text-decoration: underline
    }

    .private-button__link:active {
        color: #7fd1de
    }

    .private-button__link .private-icon {
        margin-right: .5em
    }

    .private-button--transparent.private-button--disabled, .private-button--transparent.private-button--readonly.private-button--readonly, .private-button__link.private-button--disabled, .private-button__link.private-button--readonly.private-button--readonly {
        background-color: transparent !important;
        border-color: transparent !important;
        text-decoration: none !important
    }

    .private-button--transparent:not(.private-button--disabled) .private-icon, .private-button__link:not(.private-button--disabled) .private-icon {
        color: #7c98b6
    }

.private-button__link--danger {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    color: #f2545b;
    text-decoration: none
}

    .private-button__link--danger:hover {
        color: #d94c53;
        text-decoration: underline
    }

    .private-button__link--danger:active {
        color: #d94c53
    }

    .private-button__link--danger.private-button--active {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 600;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        transition: all .15s ease-out;
        color: #d94c53;
        text-decoration: none
    }

        .private-button__link--danger.private-button--active:hover {
            color: #d94c53;
            text-decoration: underline
        }

        .private-button__link--danger.private-button--active:active {
            color: #d94c53
        }

.private-button__link--on-dark {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    color: #fff;
    text-decoration: none;
    text-decoration: underline
}

    .private-button__link--on-dark:hover {
        color: #7fd1de;
        text-decoration: underline
    }

    .private-button__link--on-dark:active {
        color: #eaf0f6
    }

    .private-button__link--on-dark.private-button--active {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 600;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        transition: all .15s ease-out;
        color: #eaf0f6;
        text-decoration: none;
        text-decoration: underline
    }

        .private-button__link--on-dark.private-button--active:hover {
            color: #7fd1de;
            text-decoration: underline
        }

        .private-button__link--on-dark.private-button--active:active {
            color: #eaf0f6
        }

.private-button__link--on-bright {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    transition: all .15s ease-out;
    text-decoration: none;
    -webkit-font-smoothing: auto;
    -moz-osx-font-smoothing: auto
}

    .private-button__link--on-bright, .private-button__link--on-bright:hover {
        color: #33475b;
        text-decoration: underline
    }

        .private-button__link--on-bright:active {
            color: #33475b
        }

.private-tag .private-button__link {
    color: inherit
}

.private-button--unstyled {
    background: none;
    border: 0;
    color: inherit;
    padding: 0;
    text-align: inherit;
    text-transform: inherit
}

    .private-button--unstyled + .private-button--unstyled {
        margin-left: 12px
    }

button.private-button--unstyled::-moz-focus-inner, input.private-button--unstyled[type=button]::-moz-focus-inner, input.private-button--unstyled[type=submit]::-moz-focus-inner {
    border: 0;
    padding: 0
}

.private-button--internal-spacing > :not(.sr-only) + *, .private-button--non-link > :not(.sr-only) + * {
    margin-left: .5em
}

.private-button--internal-spacing .private-icon:not(.private-icon-circle__inner), .private-button--non-link .private-icon:not(.private-icon-circle__inner) {
    line-height: 0
}

.private-button--non-responsive {
    width: auto
}

    .private-button--non-responsive + .private-button--non-responsive {
        margin-left: 12px;
        margin-top: 0
    }

.private-button--icon-only.private-button--transparent .private-icon:not(.private-icon-circle__inner), .private-button--icon-only.private-button__link .private-icon:not(.private-icon-circle__inner) {
    color: inherit
}

.private-button--circle {
    border-radius: 100%
}

.private-loading-button {
    position: relative
}

    .private-loading-button .private-loading-button__spinner {
        left: 50%;
        margin: 0;
        opacity: 0;
        position: absolute;
        top: 50%;
        transform: translate(-50%,-50%) scale(.7);
        transition: opacity .2s ease-in-out
    }

    .private-loading-button .private-loading-button__content {
        opacity: 1;
        transition: opacity .2s ease-in-out
    }

    .private-loading-button.private-loading-button--loading:not(.private-button--secondary--ghost) {
        background-color: #fff
    }

    .private-loading-button.private-loading-button--loading .private-loading-button__spinner {
        opacity: 1
    }

    .private-loading-button.private-loading-button--loading .private-loading-button__content {
        opacity: 0
    }

.private-button__group.private-button__group--horizontal {
    display: inline-block
}

    .private-button__group.private-button__group--horizontal > * {
        display: inline-block !important;
        margin-top: 0;
        position: relative
    }

    .private-button__group.private-button__group--horizontal > :first-child {
        border-bottom-right-radius: 0;
        border-top-right-radius: 0
    }

    .private-button__group.private-button__group--horizontal > :last-child {
        border-bottom-left-radius: 0;
        border-top-left-radius: 0
    }

    .private-button__group.private-button__group--horizontal > :not(:first-child) {
        margin-left: -1px !important
    }

.private-button__group.private-button__group--vertical {
    display: inline-flex;
    flex-direction: column
}

    .private-button__group.private-button__group--vertical > * {
        display: block;
        margin-left: 0;
        position: relative
    }

    .private-button__group.private-button__group--vertical > :first-child {
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0
    }

    .private-button__group.private-button__group--vertical > :last-child {
        border-top-left-radius: 0;
        border-top-right-radius: 0
    }

    .private-button__group.private-button__group--vertical > :not(:first-child) {
        margin-top: -1px !important
    }

.private-button__group > :not(:first-child):not(:last-child) {
    border-radius: 0
}

.private-button__group > :only-child:only-child {
    border-radius: 3px;
    border-width: 1px
}

.private-button__group > .private-button--active:not([aria-disabled=true]) {
    z-index: 1
}

.private-button__group > .private-button--disabled, .private-button__group > [aria-disabled=true] {
    border-color: #cbd6e2 !important
}

.hubspot-enable-focus-styles .private-button__group > :focus {
    z-index: 2
}

.private-button-select-group__option {
    background-color: #f5f8fa;
    border-color: #cbd6e2 !important;
    color: #516f90
}

    .private-button-select-group__option:hover {
        background-color: #fff;
        color: #516f90
    }

    .private-button-select-group__option.private-button--active {
        background-color: #e5eaf0 !important;
        color: #516f90
    }

.private-floating-button__group {
    position: relative
}

.private-floating-button-group__buttons {
    margin-top: -16px;
    padding-top: 16px;
    position: absolute;
    right: 10px;
    top: -24px;
    z-index: 1
}

    .private-floating-button-group__buttons .private-file-button__input {
        display: none !important;
        visibility: hidden !important
    }

    .private-floating-button-group__buttons > * {
        font-size: 12px;
        line-height: 12px;
        padding: 9px 16px;
        background-color: #425b76 !important;
        border-color: #516f90 !important;
        color: #fff !important;
        width: auto
    }

    .private-floating-button-group__buttons > :not([aria-disabled=true]).private-button--hover, .private-floating-button-group__buttons > :not([aria-disabled=true]):hover {
        background-color: #516f90 !important;
        color: #fff !important
    }

    .private-floating-button-group__buttons > :not([aria-disabled=true]).private-button--active {
        background-color: #33475b !important;
        color: #fff !important
    }

.private-floating-button-group__buttons--standalone {
    left: 0;
    right: 0;
    top: 0
}

.private-editor__inner {
    align-items: stretch;
    display: flex;
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: 100%
}

.private-editor__sidebar {
    flex-shrink: 0;
    box-shadow: 1px 0 3px 0 rgba(81,111,144,.25);
    z-index: 1
}

.private-editor__canvas {
    flex: 1;
    padding: 20px;
    position: relative
}

.private-editor__main.private-editor__main {
    height: calc(100% - 40px);
    padding-bottom: 0;
    position: absolute;
    width: calc(100% - 40px)
}

.private-editor__canvas--flush {
    padding: 0
}

    .private-editor__canvas--flush .private-editor__main.private-editor__main {
        height: 100%;
        width: 100%
    }

.private-media {
    display: flex;
    flex-direction: row
}

    .private-media.private-media--align-start {
        align-items: flex-start
    }

    .private-media.private-media--align-baseline {
        align-items: baseline
    }

    .private-media.private-media--align-middle {
        align-items: center
    }

    .private-media.private-media--align-bottom {
        align-items: flex-end
    }

    .private-media.private-media--align-stretch {
        align-items: stretch
    }

    .private-media > * + * {
        margin-left: 12px
    }

    .private-media.private-media--spaced-xs > * + * {
        margin-left: 8px
    }

    .private-media.private-media--spaced-md > * + * {
        margin-left: 16px
    }

    .private-media.private-media--spaced-lg > * + * {
        margin-left: 20px
    }

    .private-media.private-media--spaced-xl > * + * {
        margin-left: 24px
    }

    .private-media.private-media--collapsed > * + * {
        margin-left: 0
    }

.private-media__body {
    flex: 1;
    order: 2;
    min-width: 0
}

.private-media__item--left {
    order: 1
}

.private-media__item--right {
    order: 3
}

.private-table--condensed .private-table-sort-toggle {
    margin-bottom: -8px;
    margin-top: -8px;
    padding-bottom: 8px;
    padding-top: 8px
}

.private-table-sort-toggle__inner {
    align-items: center;
    display: inline-flex;
    text-align: inherit
}

.private-table-sort-toggle__draghandle {
    left: 0;
    position: absolute;
    top: 0
}

.private-table-sort-toggle__icon {
    flex-shrink: 0;
    display: inline-block;
    fill: #cbd6e2;
    margin-left: 6px;
    margin-right: 0;
    width: 7.5px
}

@media (-ms-high-contrast:none),screen and (-ms-high-contrast:active) {
    .private-table-sort-toggle__icon {
        height: 16px
    }
}

@supports (-ms-ime-align:auto) {
    .private-table-sort-toggle__icon {
        height: auto
    }
}

.private-table-sort-toggle--sorted {
    background-color: #eaf0f6
}

.private-table-sort-toggle--ascending .private-table-sort-toggle__icon__upper, .private-table-sort-toggle--descending .private-table-sort-toggle__icon__lower {
    fill: #00a4bd
}

.private-table-sort-toggle--align-right .private-table-sort-toggle__content, .private-table-sort-toggle--align-right .private-table-sort-toggle__inner {
    margin-left: auto;
    margin-right: 6px
}

.private-form__set--legacy.private-form__set--with-details {
    display: flex
}

    .private-form__set--legacy.private-form__set--with-details .private-form__control-wrapper {
        flex-basis: 60%
    }

.private-form__set--legacy .private-form__desc {
    flex-basis: 40%;
    display: flex;
    margin: 36px auto 0
}

    .private-form__set--legacy .private-form__desc .private-microcopy {
        margin-left: 20px
    }

.private-form__set--legacy .private-form__help-tooltip {
    font-size: 14px;
    color: #cbd6e2;
    cursor: pointer;
    margin-left: .5em;
    padding: 8px 0 4px
}

.private-form__set--legacy .private-form__inlinehelp {
    margin-left: 0;
    font-size: 14px;
    font-weight: 400;
    padding: 8px 0 4px
}

.private-form__set--legacy .private-form__help-tooltip, .private-form__set--legacy .private-form__inlinehelp {
    float: right
}

.private-form__set--no-label .private-form__desc {
    margin-top: 0
}

.private-form__rating .private-form__rating__label {
    margin-bottom: 20px
}

.private-form__rating .private-form__rating__range-label {
    margin-top: 6px;
    max-width: 150px
}

    .private-form__rating .private-form__rating__range-label.private-form__rating__range-label__low {
        margin-right: 8px;
        text-align: left
    }

    .private-form__rating .private-form__rating__range-label.private-form__rating__range-label__high {
        margin-left: 8px;
        text-align: right
    }

.private-stepper-input {
    display: flex
}

    .private-stepper-input .private-stepper-input--input {
        padding-right: 40px
    }

        .private-stepper-input .private-stepper-input--input:focus + .private-stepper-input--buttons {
            z-index: 2
        }

    .private-stepper-input .private-stepper-input--buttons {
        margin-left: -31px;
        width: 30px
    }

        .private-stepper-input .private-stepper-input--buttons > * {
            padding: 0;
            flex-grow: 1;
            border-bottom-left-radius: 0;
            border-right: 0;
            border-top-left-radius: 0
        }

        .private-stepper-input .private-stepper-input--buttons > :first-child {
            border-top: 0;
            margin-top: 1px
        }

        .private-stepper-input .private-stepper-input--buttons > :last-child {
            border-bottom: 0;
            margin-bottom: 1px
        }

.private-form__control {
    padding: 9px 10px;
    border-radius: 3px;
    border: 1px solid #cbd6e2;
    font-size: 16px;
    transition: all .15s ease-out;
    background-color: #f5f8fa;
    color: #33475b;
    display: block;
    height: 40px;
    line-height: 22px;
    text-align: left;
    vertical-align: middle;
    width: 100%
}

@media only screen and (max-width:544px) {
    .private-form__control {
        width: 100%
    }
}

.private-form__control::-moz-placeholder {
    opacity: 1;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    color: #7c98b6
}

.private-form__control:-ms-input-placeholder {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    color: #7c98b6
}

.private-form__control::-webkit-input-placeholder {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    color: #7c98b6
}

.private-form__control:focus {
    border-color: rgba(0,208,228,.5);
    box-shadow: 0 0 4px 1px rgba(0,208,228,.3),0 0 0 1px #00d0e4;
    outline: 0
}

.private-form__control[readonly]:not([aria-expanded=true]):not(.private-form__control--inline) {
    background-color: #eaf0f6;
    border-color: #eaf0f6;
    box-shadow: none
}

.private-form__control--small.private-form__control--small.private-form__control--small {
    font-size: 14px;
    height: 32px;
    padding-bottom: 4px;
    padding-top: 4px
}

.private-form__control--error, .private-form__control[aria-invalid=true] {
    border-color: #f2545b !important;
    box-shadow: 0 0 0 1px #f2545b !important
}

    .private-form__control--error:focus, .private-form__control[aria-invalid=true]:focus {
        box-shadow: 0 0 1px 2px #f2545b !important
    }

.private-form__control-floating__static-input-wrapper {
    margin-bottom: 0;
    margin-top: 8px
}

.private-form__control--inline {
    font-size: 14px;
    background-color: transparent;
    border-color: transparent;
    border-left-width: 0;
    box-shadow: none;
    height: 32px;
    padding-bottom: 4px;
    padding-left: 0
}

    .private-form__control--inline.private-form__control--inline {
        border-radius: 0
    }

    .private-form__control--inline.private-button--readonly {
        cursor: auto;
        user-select: auto
    }

    .private-form__control--inline[readonly]:not([aria-expanded]) {
        border-color: transparent
    }

    .private-form__control--inline.private-form__control--error, .private-form__control--inline.private-form__control[aria-invalid=true] {
        border-left-color: transparent !important;
        border-right-color: transparent !important;
        border-top-color: transparent !important;
        box-shadow: none !important
    }

        .private-form__control--inline.private-form__control--error:focus, .private-form__control--inline.private-form__control[aria-invalid=true]:focus {
            box-shadow: none !important
        }

.private-form__set--floating--focused .private-form__control--inline {
    border-bottom-color: #00a4bd;
    border-left-color: transparent;
    border-radius: 0;
    border-right-color: transparent;
    border-top-color: transparent;
    box-shadow: none
}

    .private-form__set--floating--focused .private-form__control--inline.private-button--readonly {
        border-bottom: 0
    }

.private-form__control--unstyled {
    background-color: transparent !important;
    border-color: transparent !important;
    box-shadow: none !important
}

.private-form__control--disabled, .private-form__control:disabled {
    background-color: #eaf0f6;
    border-color: #eaf0f6;
    box-shadow: none !important;
    color: #cbd6e2;
    cursor: not-allowed
}

.private-form__control--on-dark {
    background-color: #fff
}

.private-button.private-form__control {
    padding-bottom: 8px;
    padding-right: 16px;
    padding-top: 8px
}

    .private-button.private-form__control:focus, .private-button.private-form__control:hover {
        background-color: #f5f8fa
    }

    .private-button.private-form__control.private-button--disabled .private-dropdown__caret {
        border-top-color: #cbd6e2
    }

.private-form__select.private-form__select.private-form__select {
    padding: 0
}

.private-form__select > select {
    border-radius: 3px;
    padding: 8px 32px 6px 10px;
    color: inherit;
    cursor: inherit;
    height: 100%
}

@media only screen and (max-width:544px) {
    .private-form__select > select {
        width: 100%
    }
}

.private-form__select > select:focus {
    border-color: rgba(0,208,228,.5);
    box-shadow: 0 0 4px 1px rgba(0,208,228,.3)
}

.private-form__select > select::-moz-focusring {
    color: transparent;
    text-shadow: 0 0 0 #000
}

.private-form__select:after {
    border: .375em solid transparent;
    display: inline-block;
    vertical-align: middle;
    border-top-color: #00a4bd;
    margin-top: .375em;
    margin-top: -3px;
    right: 16px
}

.private-form__select.private-form__control--disabled:after {
    border-top-color: #cbd6e2 !important
}

.private-form__select.private-form__control--small > select {
    font-size: 14px;
    height: 32px;
    padding-bottom: 4px;
    padding-top: 4px
}

.private-date-range-inputs__datepicker-wrapper {
    display: inline-block;
    vertical-align: middle
}

.private-date-range-inputs__datepicker.private-datepicker .baldric.picker .picker__footer {
    display: none
}

.private-date-range-inputs__arrow {
    color: #425b76;
    margin: 0 12px;
    vertical-align: middle
}

.private-date-range-inputs__arrow--small {
    margin: 0 8px
}

.private-date-range-inputs__error {
    display: block;
    margin-top: 4px
}

.private-date-range-picker--inline {
    display: inline-block
}

.private-date-range-picker__dropdown--inline {
    min-height: 34px;
    vertical-align: middle
}

.private-date-range-picker__custom-inputs {
    margin-top: 12px
}

.private-date-range-picker__custom-inputs--inline {
    display: inline-block;
    line-height: 1;
    margin-left: 12px;
    margin-top: 0
}

.private-editable-control {
    margin-top: 8px;
    padding: 8px 16px;
    background-color: #f5f8fa
}

    .private-editable-control.private-editable-control--flush {
        padding: 0;
        background-color: transparent;
        margin: 12px 0
    }

        .private-editable-control.private-editable-control--flush .private-editable-control__controls {
            padding-bottom: 0
        }

.private-form__label {
    padding: 8px 12px 4px 0;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 500;
    font-size: 14px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    display: inline-block;
    vertical-align: middle
}

    .private-form__label[for] {
        cursor: pointer
    }

.private-form__label--readonly[for] {
    cursor: default
}

.private-form__label--required:after {
    content: "\0000a0*"
}

.private-form__label--small {
    font-size: 12px
}

.private-form__label--with-tooltip {
    padding-right: 0
}

.private-form__inlinehelp {
    display: flex;
    cursor: inherit;
    font-weight: 500
}

.private-form__description, .private-form__validation {
    display: block;
    font-weight: 500;
    margin-top: 4px;
    padding-bottom: 1px
}

.private-form__set--floating .private-form__validation {
    margin-left: 12px
}

.private-form__label--floating {
    font-size: 12px;
    transition: all .15s ease-out;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    color: #516f90;
    font-weight: 400;
    max-width: 100%;
    position: absolute;
    top: -6px;
    z-index: 1
}

    .private-form__label--floating.private-form__label--required:after {
        content: none
    }

.private-form__label--floating-as-placeholder {
    font-size: 14px;
    top: 9px
}

    .private-form__label--floating-as-placeholder + .private-button__dropdown-opener, .private-form__label--floating-as-placeholder + .private-date-picker .private-dropdown__button__contents {
        opacity: 0
    }

.private-form__selectplus {
    border-radius: 3px;
    cursor: pointer;
    width: 100%
}

    .private-form__selectplus .Select-control {
        border-radius: 3px;
        border: 1px solid #cbd6e2;
        font-size: 16px;
        transition: all .15s ease-out;
        background-color: #f5f8fa;
        color: #33475b;
        display: block;
        height: 40px;
        line-height: 22px;
        text-align: left;
        vertical-align: middle;
        width: 100%;
        display: flex;
        align-items: center;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        cursor: inherit;
        height: auto;
        min-height: 40px
    }

    .private-form__selectplus:not(.private-form__selectplus--fixed-height) .Select-control {
        height: auto
    }

    .private-form__selectplus.is-open {
        cursor: text
    }

    .private-form__selectplus .Select-placeholder, .private-form__selectplus:not(.Select--multi) > .Select-control .Select-value {
        padding: 9px 10px;
        color: inherit;
        line-height: inherit;
        right: 32px
    }

@media only screen and (max-width:544px) {
    .private-form__selectplus .Select-placeholder, .private-form__selectplus:not(.Select--multi) > .Select-control .Select-value {
        width: 100%
    }
}

.private-form__selectplus .Select-placeholder .private-dropdown__item__decoration, .private-form__selectplus:not(.Select--multi) > .Select-control .Select-value .private-dropdown__item__decoration {
    margin-left: 4px;
    margin-right: 4px;
    left: 0
}

.private-form__selectplus.Select--single .Select-value {
    position: relative
}

.private-form__selectplus.Select--single .private-tag {
    cursor: inherit;
    margin-bottom: -1px;
    margin-top: -1px
}

.private-form__selectplus.Select--single .Select-value + .Select-input {
    left: 0;
    opacity: 0;
    position: absolute;
    top: 0
}

.private-form__selectplus.Select--single .uiTypeaheadResults__item {
    cursor: inherit
}

.private-form__selectplus.Select--multi .private-tag {
    display: inline-flex;
    flex-shrink: 0;
    margin-left: 8px;
    margin-top: 8px;
    max-width: calc(100% - 16px);
    vertical-align: top
}

    .private-form__selectplus.Select--multi .private-tag:last-of-type {
        margin-bottom: 8px
    }

.private-form__selectplus.Select--multi .Select-arrow-zone, .private-form__selectplus.Select--multi .Select-clear-zone {
    display: table-cell;
    margin-left: 5px;
    width: 28px
}

.private-form__selectplus .Select-multi-value-wrapper {
    margin-bottom: -1px;
    margin-top: -1px;
    min-height: 40px;
    width: calc(100% - 32px)
}

.private-form__selectplus .Select-input {
    flex: 1;
    height: auto
}

    .private-form__selectplus .Select-input > input {
        padding-left: 10px;
        cursor: text;
        height: auto;
        line-height: 22px;
        padding: 9px 10px 9px 0
    }

@media only screen and (max-width:544px) {
    .private-form__selectplus .Select-input > input {
        width: 100%
    }
}

.private-form__selectplus .Select-input > input:-moz-focusring {
    outline: 0
}

.private-form__selectplus .Select-clear-zone:hover {
    color: inherit
}

.private-form__selectplus .Select-clear {
    line-height: inherit
}

.private-form__selectplus .Select-arrow-zone, .private-form__selectplus .Select-clear-zone {
    padding-right: 16px;
    width: auto
}

    .private-form__selectplus .Select-arrow-zone > .Select-arrow {
        border: .375em solid transparent;
        display: inline-block;
        vertical-align: middle;
        border-top-color: #00a4bd;
        margin-top: .375em;
        top: 0
    }

.private-form__selectplus .Select:not(.is-open) .Select-input {
    cursor: pointer;
    pointer-events: none
}

.private-form__selectplus.is-focused:not(.is-open) > .Select-control {
    border-color: rgba(0,208,228,.5);
    box-shadow: 0 0 4px 1px rgba(0,208,228,.3),0 0 0 1px #00d0e4;
    outline: 0
}

.private-form__selectplus.has-value.is-pseudo-focused:not(.Select--multi) > .Select-control .Select-value .Select-value-label, .private-form__selectplus.has-value:not(.Select--multi) > .Select-control .Select-value .Select-value-label {
    color: #33475b
}

.private-form__selectplus.is-disabled:not(.is-readonly) > .Select-control {
    background-color: #eaf0f6 !important;
    border-color: #eaf0f6 !important;
    color: #b0c1d4 !important;
    cursor: not-allowed
}

    .private-form__selectplus.is-disabled:not(.is-readonly) > .Select-control .Select-arrow-zone > .Select-arrow {
        border-top-color: #cbd6e2
    }

    .private-form__selectplus.is-disabled:not(.is-readonly) > .Select-control .Select-value-label {
        color: #b0c1d4 !important
    }

.private-form__selectplus.is-readonly > .Select-control {
    background-color: #eaf0f6 !important;
    border-color: #eaf0f6 !important;
    color: #33475b !important;
    cursor: auto
}

    .private-form__selectplus.is-readonly > .Select-control .Select-arrow-zone > .Select-arrow {
        display: none
    }

.private-dropdown .Select, .private-dropdown__results .Select {
    border-radius: inherit
}

.private-dropdown .Select-menu, .private-dropdown__results .Select-menu {
    border-bottom-left-radius: inherit;
    border-bottom-right-radius: inherit;
    max-height: 228px;
    padding-bottom: 8px;
    padding-top: 8px
}

.private-dropdown .Select-menu-outer, .private-dropdown__results .Select-menu-outer {
    border: 0;
    border-radius: inherit;
    box-shadow: none;
    margin-top: 0;
    max-height: none;
    position: relative
}

.private-dropdown .Select-option, .private-dropdown__results .Select-option {
    padding: 0
}

    .private-dropdown .Select-option button, .private-dropdown__results .Select-option button {
        -webkit-font-smoothing: auto;
        -moz-osx-font-smoothing: auto;
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 400;
        font-size: 14px;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        border: 0;
        border-radius: 0;
        color: #33475b;
        display: block;
        min-height: 40px;
        padding: 8px 20px;
        text-align: left;
        width: 100%
    }

    .private-dropdown .Select-option .private-checkbox, .private-dropdown__results .Select-option .private-checkbox {
        min-height: 40px
    }

    .private-dropdown .Select-option:last-child, .private-dropdown__results .Select-option:last-child {
        border-radius: 0
    }

    .private-dropdown .Select-option.is-selected, .private-dropdown__results .Select-option.is-selected {
        background-color: inherit;
        color: inherit
    }

    .private-dropdown .Select-option.is-focused, .private-dropdown__results .Select-option.is-focused {
        background: #e5f5f8;
        color: #33475b;
        color: inherit
    }

    .private-dropdown .Select-option.is-disabled button, .private-dropdown__results .Select-option.is-disabled button {
        background-color: #eaf0f6 !important;
        border-color: #eaf0f6 !important;
        color: #b0c1d4 !important;
        cursor: not-allowed;
        background-color: #fff !important
    }

.private-dropdown .Select-option-group-label, .private-dropdown__results .Select-option-group-label {
    font-weight: 500;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    font-size: 14px;
    line-height: normal;
    text-transform: none;
    margin: 0;
    min-height: 40px;
    padding: 12px 20px 8px;
    color: inherit;
    padding: 4px 0 0
}

.private-dropdown .Select-noresults, .private-dropdown__results .Select-noresults {
    background-color: #eaf0f6 !important;
    border-color: #eaf0f6 !important;
    color: #b0c1d4 !important;
    cursor: not-allowed;
    background-color: #fff !important;
    padding: 8px 20px
}

.private-dropdown .private-tag, .private-dropdown__results .private-tag {
    cursor: inherit
}

.private-dropdown .Select-option-group-label ~ .Select-option-group, .private-dropdown__results .Select-option-group-label ~ .Select-option-group {
    padding-left: 0
}

.private-dropdown .Select-option-group .Select-option, .private-dropdown .Select-option-group .Select-option-group .Select-option-group-label, .private-dropdown__results .Select-option-group .Select-option, .private-dropdown__results .Select-option-group .Select-option-group .Select-option-group-label {
    padding-left: 20px
}

.private-dropdown .Select-option-group .Select-option-group .Select-option, .private-dropdown .Select-option-group .Select-option-group .Select-option-group .Select-option-group-label, .private-dropdown__results .Select-option-group .Select-option-group .Select-option, .private-dropdown__results .Select-option-group .Select-option-group .Select-option-group .Select-option-group-label {
    padding-left: 40px
}

.private-dropdown .Select-option-group .Select-option-group .Select-option-group .Select-option, .private-dropdown .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group-label, .private-dropdown__results .Select-option-group .Select-option-group .Select-option-group .Select-option, .private-dropdown__results .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group-label {
    padding-left: 60px
}

.private-dropdown .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option, .private-dropdown .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group-label, .private-dropdown__results .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option, .private-dropdown__results .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group-label {
    padding-left: 80px
}

.private-dropdown .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option, .private-dropdown .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group-label, .private-dropdown__results .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option, .private-dropdown__results .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group .Select-option-group-label {
    padding-left: 100px
}

.private-form__control--inline.Select {
    height: auto
}

.private-form__control--inline.Select--multi .Select-arrow-zone {
    display: none
}

.private-form__control--inline.Select--multi.has-value .Select-multi-value-wrapper {
    max-width: calc(100% - 32px);
    width: auto
}

.private-form__control--inline:not(.Select--multi) .Select-input, .private-form__control--inline:not(.Select--multi) > .Select-control .Select-value {
    padding-left: 0
}

.private-form__control--inline.is-focused:not(.is-open) > .Select-control {
    border-color: transparent;
    box-shadow: none
}

.private-form__control--inline.has-value .Select-arrow-zone, .private-form__control--inline.is-open .Select-arrow-zone {
    display: table-cell
}

.private-form__control--inline.is-open .Select-placeholder {
    display: block
}

.private-form__control--inline .Select-control {
    background: transparent;
    border-color: transparent;
    border-radius: 0
}

    .private-form__control--inline .Select-control:hover {
        background: transparent;
        border-bottom-color: #00a4bd;
        border-radius: 0
    }

.private-form__control--inline .Select-multi-value-wrapper {
    margin-left: -5px
}

    .private-form__control--inline .Select-multi-value-wrapper .Select-input {
        margin-left: 5px
    }

.private-form__control--inline .Select-placeholder {
    font-size: 14px;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    color: #7c98b6;
    padding-left: 0
}

.private-form__control--inline:not(.private-form__control--inline--show-placeholder) .Select-placeholder {
    display: none
}

.private-form__selectplus--multi-values {
    display: flex;
    flex-wrap: wrap
}

    .private-form__selectplus--multi-values.has-value-tags {
        margin-top: -9px
    }

    .private-form__selectplus--multi-values .private-tag {
        margin-top: 7px
    }

        .private-form__selectplus--multi-values .private-tag:not(:last-child) {
            margin-right: 5px
        }

        .private-form__selectplus--multi-values .private-tag + .private-tag {
            margin-left: 0
        }

        .private-form__selectplus--multi-values .private-tag .private-icon {
            line-height: normal
        }

    .private-form__selectplus--multi-values .private-dropdown__item__decoration, .Select-multi-value-wrapper .private-dropdown__item__decoration {
        margin-right: 4px;
        height: 16px;
        left: 0;
        width: 16px
    }

.private-dropdown--virtualized .Select-menu, .private-search-control__wrapper:not(.sr-only) + .private-typeahead-results .Select-menu {
    max-height: 220px;
    padding-bottom: 0;
    padding-top: 0
}

.private-form__selectplus--load-more-count {
    color: #99acc2;
    margin-right: 4px
}

.private-form__selectplus--small.private-form__selectplus--small {
    font-size: 14px;
    height: 32px;
    padding-bottom: 4px;
    padding-top: 4px
}

.private-search-control {
    display: inline-block;
    position: relative;
    vertical-align: middle;
    width: 100%
}

.private-search-control__input {
    padding-right: 44px
}

    .private-search-control__input::-ms-clear {
        display: none
    }

    .private-search-control__input:focus + .private-search-control__foreground {
        z-index: 2
    }

.private-search-control__foreground {
    bottom: 1px;
    pointer-events: none;
    position: absolute;
    right: 0;
    top: 1px
}

.private-search-control__help-text {
    color: #7c98b6;
    white-space: nowrap
}

.private-search-control__help-text--hidden {
    visibility: hidden
}

.private-search-control__icon {
    color: #0091ae;
    font-size: 16px;
    line-height: 16px;
    margin-left: 16px;
    margin-right: 16px;
    margin-top: 12px;
    pointer-events: none
}

.private-search-control__icon--small {
    color: #0091ae;
    font-size: 14px;
    line-height: 14px;
    margin-left: 14px;
    margin-right: 14px;
    margin-top: 10.5px;
    pointer-events: none
}

.private-search-control__icon--hidden {
    visibility: hidden
}

.private-search-control__clear-button {
    font-size: 16px;
    line-height: 16px;
    padding: 12px 16px 16px;
    color: #7c98b6;
    position: absolute;
    right: 1px;
    top: 1px
}

.private-search-control__clear-button--small {
    font-size: 14px;
    line-height: 14px;
    padding: 10.5px 14px 14px
}

.private-search-control--xl .private-search-control__input {
    font-size: 20px;
    padding: 20px 88px 20px 20px;
    padding-right: 72px;
    height: 60px;
    line-height: normal
}

@media only screen and (max-width:544px) {
    .private-search-control--xl .private-search-control__input {
        width: 100%
    }
}

.private-search-control--xl .private-search-control__icon {
    font-size: 20px;
    line-height: 20px;
    margin-left: 20px;
    margin-right: 20px;
    margin-top: 17px
}

.private-search-control--xl .private-search-control__clear-button {
    font-size: 20px;
    padding-right: 20px;
    padding-top: 20px
}

.private-search-control__input[disabled] + .private-search-control__foreground .private-search-control__icon, .private-search-control__input[disabled] + .private-search-control__foreground .private-search-control__icon--small, .private-search-control__input[readonly] + .private-search-control__foreground .private-search-control__icon, .private-search-control__input[readonly] + .private-search-control__foreground .private-search-control__icon--small {
    color: #99acc2
}

.private-selectable-box {
    border-radius: 3px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    background-color: #fff;
    border: 1px solid #7fd1de;
    cursor: pointer;
    display: inline-block;
    position: relative;
    width: auto
}

    .private-selectable-box.private-selectable-box--padded {
        padding: 20px
    }

    .private-selectable-box.private-selectable-box--hovered {
        box-shadow: 0 0 0 1px #7fd1de,0 0 12px 0 rgba(0,163,189,.3)
    }

    .private-selectable-box.private-button--active, .private-selectable-box.private-selectable-box--selected {
        background-color: #e5f5f8
    }

    .private-selectable-box.private-selectable-box--selected {
        border-color: #00a4bd;
        box-shadow: 0 0 0 1px #00a4bd
    }

        .private-selectable-box.private-selectable-box--selected.private-selectable-box--hovered {
            box-shadow: 0 0 0 1px #00a4bd,0 0 12px 0 rgba(0,163,189,.3)
        }

    .private-selectable-box.private-selectable-box--readonly {
        background-color: #eaf0f6 !important;
        border-color: #eaf0f6 !important;
        color: #33475b !important;
        cursor: auto
    }

    .private-selectable-box .private-selectable-box__selection-mark {
        position: absolute
    }

        .private-selectable-box .private-selectable-box__selection-mark .private-form__checkbox {
            outline: 0
        }

        .private-selectable-box .private-selectable-box__selection-mark .private-checkbox__input[readonly] + .private-checkbox__indicator {
            border-color: #cbd6e2 !important
        }

            .private-selectable-box .private-selectable-box__selection-mark .private-checkbox__input[readonly] + .private-checkbox__indicator .private-radio__circle {
                stroke: #cbd6e2
            }

        .private-selectable-box .private-selectable-box__selection-mark .private-checkbox__input[readonly]:focus + .private-checkbox__indicator {
            outline: auto !important
        }

        .private-selectable-box .private-selectable-box__selection-mark.private-selectable-box__selection-mark--top-right {
            right: 12px;
            top: 16px
        }

        .private-selectable-box .private-selectable-box__selection-mark.private-selectable-box__selection-mark--left {
            left: 20px;
            margin-top: -10px;
            top: 50%
        }

            .private-selectable-box .private-selectable-box__selection-mark.private-selectable-box__selection-mark--left + .private-selectable-box__inner {
                padding-left: 22px
            }

    .private-selectable-box .private-selectable-box__inner {
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        font-size: 16px;
        margin-left: 0;
        white-space: normal
    }

        .private-selectable-box .private-selectable-box__inner .private-icon {
            line-height: normal
        }

    .private-selectable-box.private-button--block {
        width: 100%
    }

    .private-selectable-box.private-selectable-box--flush {
        padding: 0 !important
    }

    .private-selectable-box img {
        transform: translateZ(0)
    }

.private-selectable-button {
    display: flex;
    max-width: 200px;
    text-align: center;
    width: 100%
}

    .private-selectable-button .private-selectable-button__inner {
        align-items: center;
        display: flex;
        justify-content: center;
        width: 100%
    }

        .private-selectable-button .private-selectable-button__inner .private-selectable-button__label {
            margin-left: 28px;
            margin-right: 24px;
            width: 100%
        }

        .private-selectable-button .private-selectable-button__inner .private-icon {
            line-height: normal
        }

        .private-selectable-button .private-selectable-button__inner img + .private-selectable-button__label {
            margin-bottom: 8px
        }

    .private-selectable-button.private-selectable-button--auto {
        display: inline-block;
        max-width: none;
        width: auto
    }

        .private-selectable-button.private-selectable-button--auto .private-selectable-button__inner {
            padding: 16px
        }

        .private-selectable-button.private-selectable-button--auto.private-button--block {
            width: 100%
        }

    .private-selectable-button.private-selectable-button--large .private-selectable-button__inner {
        flex-direction: column;
        justify-content: center;
        min-height: 180px;
        padding: 12px
    }

        .private-selectable-button.private-selectable-button--large .private-selectable-button__inner .private-selectable-button__label {
            padding-top: 16px
        }

        .private-selectable-button.private-selectable-button--large .private-selectable-button__inner .private-icon {
            width: 100%
        }

    .private-selectable-button.private-selectable-button--small .private-selectable-button__label--truncatable {
        overflow: hidden;
        text-overflow: ellipsis;
        white-space: nowrap
    }

    .private-selectable-button.private-selectable-button--small .private-selectable-button__label--not-truncatable {
        margin-bottom: 16px;
        margin-top: 16px
    }

    .private-selectable-button.private-selectable-button--small .private-selectable-button__inner {
        min-height: 56px
    }

    .private-selectable-button.private-selectable-button--small .private-selectable-button__checkbox {
        padding-left: 16px
    }

    .private-selectable-button.private-selectable-button--small .private-selectable-button__label--no-selection-mark {
        margin-left: 0;
        margin-right: 0;
        padding-left: 16px;
        padding-right: 16px
    }

    .private-selectable-button.private-selectable-button--small .private-icon {
        padding-left: 16px
    }

    .private-selectable-button.private-selectable-button--small img {
        margin-left: 16px
    }

        .private-selectable-button.private-selectable-button--small img + .private-selectable-button__label {
            margin: 0 16px 0 8px
        }

.private-button--block {
    max-width: none
}

.private-selectable-button__label {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-size: 16px;
    display: block;
    white-space: normal;
    width: 100%
}

.private-slider {
    display: flex;
    flex-direction: row;
    cursor: pointer;
    height: 20px
}

.private-slider__number-input {
    width: 25%
}

.private-slider__slider {
    flex-grow: 1
}

.private-slider__slider-track {
    position: relative
}

.private-slider__control {
    cursor: move;
    cursor: grab;
    background-color: #fff;
    border-radius: 50%;
    box-shadow: 0 0 0 1px rgba(81,111,144,.3),0 1px 24px 0 rgba(0,0,0,.08);
    height: 20px;
    position: relative;
    top: -4px;
    transform: translateX(-10px);
    width: 20px
}

.private-slider--dragging, .private-slider--dragging .private-slider__control {
    cursor: move;
    cursor: grabbing
}

.private-slider__input > .uiNumberInput {
    margin-bottom: 20px
}

.private-slider__label {
    flex-shrink: 0;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    position: relative;
    top: -2px
}

.private-slider__label--min {
    padding-right: 15px
}

.private-slider__label--max {
    padding-left: 15px
}

.private-slider__tickmarks {
    display: flex;
    flex-direction: row;
    justify-content: space-between;
    position: absolute;
    width: 100%
}

.private-slider__tickmark {
    background-color: #cbd6e2;
    height: 14px;
    width: 2px
}

    .private-slider__tickmark.private-slider__tickmark--filled {
        background-color: #00a4bd
    }

.private-slider--large .private-slider__control, .private-slider--large .private-slider__label--max, .private-slider--large .private-slider__label--min {
    top: 0
}

.private-slider--large .private-slider__tickmark {
    height: 20px;
    width: 3px
}

.private-slider--disabled, .private-slider--disabled .private-slider__control {
    cursor: not-allowed
}

    .private-slider--disabled .private-slider__control .private-slider__tickmark--left, .private-slider--disabled .private-slider__tickmark--left {
        background-color: #eaf0f6;
        border-color: #eaf0f6
    }

.private-slider--readonly, .private-slider--readonly .private-slider__control {
    cursor: initial
}

    .private-slider--readonly .private-slider__control {
        background: #eaf0f6;
        box-shadow: 0 0 0 1px rgba(153,172,194,.3),0 1px 24px 0 rgba(0,0,0,.08)
    }

    .private-slider--readonly .private-slider__tickmark.private-slider__tickmark--filled {
        background-color: #eaf0f6
    }

.hubspot-drag-cursor {
    cursor: move;
    cursor: grabbing
}

.private-input-static-label__label {
    padding: 9px 0;
    font-size: 16px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    cursor: default;
    height: 40px
}

@media only screen and (max-width:544px) {
    .private-input-static-label__label {
        width: 100%
    }
}

.private-input-static-label--small .private-input-static-label__label {
    padding: 4px 0;
    font-size: 14px;
    height: 32px
}

@media only screen and (max-width:544px) {
    .private-input-static-label--small .private-input-static-label__label {
        width: 100%
    }
}

.private-form__group--start, .private-form__group--start > * {
    border-bottom-right-radius: 0 !important;
    border-top-right-radius: 0 !important
}

.private-form__group--end, .private-form__group--end > * {
    border-bottom-left-radius: 0 !important;
    border-left-width: 0 !important;
    border-top-left-radius: 0 !important
}

    .private-form__group--end:focus, .private-form__group--start:focus {
        position: relative;
        z-index: 1
    }

    .private-form__group--end > .private-form__control:focus, .private-form__group--start > .private-form__control:focus {
        position: relative;
        z-index: 2
    }

.private-text-area {
    height: auto;
    min-height: 40px
}

.private-text-area--no-resize {
    display: inline-block;
    resize: none
}

.private-text-area--non-responsive {
    width: auto
}

.private-text-area--vertical-resize {
    resize: vertical
}

.private-text-area--horizontal-resize {
    resize: horizontal
}

.private-form__control.private-form__control.private-text-area--code, .private-form__control.private-form__control.private-text-area--code[readonly] {
    border-color: #cbd6e2;
    min-height: 155px
}

    .private-form__control.private-form__control.private-text-area--code.private-text-area--no-min-height, .private-form__control.private-form__control.private-text-area--code[readonly].private-text-area--no-min-height {
        min-height: 0
    }

.private-text-area__counter-wrapper {
    display: flex;
    flex-direction: column
}

.private-char-count__label, .private-form__counter, .private-text-area__counter {
    align-self: flex-end;
    font-size: 14px;
    color: #7c98b6;
    margin-left: 8px;
    padding: 8px 0 4px
}

.private-char-count {
    display: flex;
    flex-direction: column
}

.private-char-count--negative .private-char-count__label {
    color: #f2545b
}

.private-text-area--copyable {
    background-color: #fff
}

.private-form__set + .private-form__set {
    margin-top: 12px
}

.private-form__set + .private-form-actions {
    margin-top: 44px
}

.private-form__set.private-form__set--no-label + .private-form-actions {
    margin-top: 12px
}

.private-form__set.private-form__set--flush {
    margin-top: 0 !important
}

.private-form__set.private-form__set--separated {
    margin-top: 12px !important
}

.private-form__label-wrapper {
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    flex-direction: column
}

    .private-form__label-wrapper .private-form__label--with-tooltip {
        width: auto
    }

    .private-form__label-wrapper .private-form__label {
        flex: 1 0 auto;
        max-width: 100%;
        padding-bottom: 0
    }

.private-form__meta {
    display: flex;
    flex-wrap: nowrap;
    justify-content: space-between
}

    .private-form__meta .private-form__counter {
        align-self: flex-start;
        flex-shrink: 0;
        font-size: 12px;
        font-weight: 500;
        padding-top: 4px
    }

.private-form__messages {
    display: flex;
    flex-direction: column
}

.private-form__set--floating {
    padding-bottom: 5px;
    padding-top: 18px;
    position: relative
}

    .private-form__set--floating:hover .private-form__control__overlay {
        opacity: 1;
        pointer-events: inherit
    }

    .private-form__set--floating:hover .private-form__control__overlay--hidden {
        opacity: 0;
        pointer-events: none
    }

    .private-form__set--floating:hover .private-form__control--inline {
        border-bottom-color: #00a4bd;
        border-radius: 0
    }

        .private-form__set--floating:hover .private-form__control--inline.private-button--readonly, .private-form__set--floating:hover .private-form__control--inline[readonly]:not([aria-expanded]) {
            border-color: transparent
        }

    .private-form__set--floating.private-form__set--floating--focused .private-button.private-form__control, .private-form__set--floating:hover .private-button.private-form__control {
        background-color: transparent
    }

    .private-form__set--floating + .private-form__set--floating {
        margin-top: 0
    }

    .private-form__set--floating .private-form__control__overlay {
        align-items: center;
        background: #fff;
        box-shadow: -8px 0 6px -4px #fff;
        display: flex;
        height: 48px;
        opacity: 0;
        padding-left: 5px;
        pointer-events: none;
        position: absolute;
        right: 0;
        top: 0;
        z-index: 1
    }

    .private-form__set--floating .private-form__control__overlay--visible {
        opacity: 1;
        pointer-events: inherit
    }

    .private-form__set--floating .private-form__control-floating__edit-icon {
        margin-right: 8px;
        cursor: pointer
    }

    .private-form__set--floating .private-form__validation-wrapper {
        margin-top: 1px;
        overflow: auto
    }

        .private-form__set--floating .private-form__validation-wrapper .private-form__validation {
            float: right
        }

.private-floating-form .private-form__set--floating {
    border-bottom: 1px solid transparent;
    border-top: 1px solid transparent
}

    .private-floating-form .private-form__set--floating + .private-form__set--floating {
        margin-top: -1px
    }

.private-modal--default .private-modal__control.private-modal__close, .private-modal--default .private-modal__control:not(.private-close__button) {
    top: 26px
}

.private-modal__header--with-toolbar .private-modal__control.private-modal__close, .private-modal__header--with-toolbar .private-modal__control:not(.private-close__button) {
    margin-left: 24px;
    position: relative;
    right: 0;
    top: 22px
}

.private-modal {
    display: flex;
    flex-direction: column;
    background-color: #fff;
    word-wrap: break-word
}

.private-modal__header {
    display: flex;
    flex-direction: column;
    flex-grow: 0;
    flex-shrink: 0;
    background-color: #00bda5;
    background-image: linear-gradient(-303deg,#00a4bd,#00afb2 56%,#00bda5);
    color: #fff
}

    .private-modal__header h1, .private-modal__header h2, .private-modal__header h3, .private-modal__header h4, .private-modal__header h5, .private-modal__header h6 {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 600;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        margin-bottom: 16px;
        margin-top: 0;
        display: block;
        font-size: 20px;
        line-height: normal;
        text-transform: none;
        margin: 0;
        width: 100%
    }

.private-modal__header__inner {
    align-items: center;
    display: flex;
    min-height: 68px;
    padding: 4px 56px 4px 40px
}

.private-modal__header--with-toolbar .private-modal__header__inner {
    align-items: flex-start;
    justify-content: space-between;
    padding-right: 24px
}

    .private-modal__header--with-toolbar .private-modal__header__inner h2 {
        align-self: center;
        margin-right: auto
    }

.private-modal__header-image {
    margin-bottom: 40px;
    margin-left: auto;
    margin-right: auto;
    text-align: center
}

@media only screen and (max-width:544px) {
    .private-modal__header-image {
        margin-top: auto !important
    }
}

.private-modal__body {
    font-size: 14px;
    flex-grow: 1;
    padding: 40px
}

    .private-modal__body h1, .private-modal__body h2, .private-modal__body h3, .private-modal__body h4, .private-modal__body h5, .private-modal__body h6 {
        color: inherit
    }

.private-modal__footer {
    flex-grow: 0;
    flex-shrink: 0;
    background-color: #fff;
    color: #33475b;
    padding: 24px 40px;
    text-align: left
}

@media only screen and (min-width:545px) {
    .private-modal__footer > * + * {
        margin-left: 12px
    }
}

.private-modal > .private-form {
    display: flex;
    flex-direction: column;
    flex-grow: 1
}

.private-modal--short .private-modal__body {
    min-height: 250px
}

.private-modal--medium .private-modal__body {
    min-height: 408px
}

.private-modal--medium.private-modal--default .private-modal__body {
    min-height: 0
}

.private-modal--tall .private-modal__body {
    min-height: 700px
}

.private-modal--default {
    background-color: #fff;
    text-align: left
}

    .private-modal--default .private-modal__body {
        padding: 40px;
        padding-bottom: 1px;
        padding-top: 24px
    }

.private-modal--conversational .private-modal__header {
    background: none;
    color: #33475b;
    padding-top: 40px
}

    .private-modal--conversational .private-modal__header h2 {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 700;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        margin-bottom: 16px;
        margin-top: 0;
        display: block;
        font-size: 32px;
        line-height: normal;
        text-transform: none
    }

.private-modal--conversational .private-modal__header__inner {
    min-height: 0;
    padding-bottom: 0;
    padding-top: 0
}

.private-modal--conversational .private-modal__header + .private-modal__body {
    padding-top: 0
}

.private-modal--conversational .private-modal__close {
    color: #99acc2
}

.private-modal--conversational .private-modal__body, .private-modal--conversational .private-modal__footer, .private-modal--conversational .private-modal__header {
    text-align: center
}

.private-modal--conversational .private-modal__footer {
    padding-top: 0
}

.private-modal--info, .private-modal--success {
    background-color: #00bda5;
    background-image: linear-gradient(-303deg,#00a4bd,#00afb2 56%,#00bda5);
    color: #fff
}

.private-modal--info {
    text-align: center
}

.private-modal--upgrades {
    background-image: linear-gradient(-180deg,#ff7a59 20%,#ff8f59 71%);
    background-color: #ff7a59;
    color: #fff;
    text-align: center
}

.private-modal--danger {
    background-image: repeating-linear-gradient(135deg,#f04b51,#f04b51 24px,#f2545b 0,#f2545b 48px);
    color: #fff
}

    .private-modal--danger .private-modal__body h1, .private-modal--danger .private-modal__body h2, .private-modal--danger .private-modal__body h3, .private-modal--danger .private-modal__body h4, .private-modal--danger .private-modal__body h5, .private-modal--danger .private-modal__body h6, .private-modal--info .private-modal__body h1, .private-modal--info .private-modal__body h2, .private-modal--info .private-modal__body h3, .private-modal--info .private-modal__body h4, .private-modal--info .private-modal__body h5, .private-modal--info .private-modal__body h6, .private-modal--success .private-modal__body h1, .private-modal--success .private-modal__body h2, .private-modal--success .private-modal__body h3, .private-modal--success .private-modal__body h4, .private-modal--success .private-modal__body h5, .private-modal--success .private-modal__body h6, .private-modal--upgrades .private-modal__body h1, .private-modal--upgrades .private-modal__body h2, .private-modal--upgrades .private-modal__body h3, .private-modal--upgrades .private-modal__body h4, .private-modal--upgrades .private-modal__body h5, .private-modal--upgrades .private-modal__body h6 {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 700;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        margin-bottom: 16px;
        margin-top: 0;
        display: block;
        font-size: 32px;
        line-height: normal;
        text-transform: none;
        color: #fff
    }

    .private-modal--danger .private-modal__body .private-alert__title, .private-modal--info .private-modal__body .private-alert__title, .private-modal--success .private-modal__body .private-alert__title, .private-modal--upgrades .private-modal__body .private-alert__title {
        margin-bottom: 4px
    }

    .private-modal--danger .private-modal__header, .private-modal--info .private-modal__header, .private-modal--success .private-modal__header, .private-modal--upgrades .private-modal__header {
        background: transparent;
        padding-bottom: 36px;
        padding-top: 36px
    }

        .private-modal--danger .private-modal__header .private-modal__header__inner, .private-modal--info .private-modal__header .private-modal__header__inner, .private-modal--success .private-modal__header .private-modal__header__inner, .private-modal--upgrades .private-modal__header .private-modal__header__inner {
            padding-right: 40px
        }

        .private-modal--danger .private-modal__header h2, .private-modal--info .private-modal__header h2, .private-modal--success .private-modal__header h2, .private-modal--upgrades .private-modal__header h2 {
            font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
            font-weight: 700;
            -webkit-font-smoothing: antialiased;
            -moz-osx-font-smoothing: grayscale;
            margin-bottom: 16px;
            margin-top: 0;
            display: block;
            font-size: 32px;
            line-height: normal;
            text-transform: none;
            color: #fff;
            margin-bottom: 0
        }

        .private-modal--danger .private-modal__header + .private-modal__body, .private-modal--info .private-modal__header + .private-modal__body, .private-modal--success .private-modal__header + .private-modal__body, .private-modal--upgrades .private-modal__header + .private-modal__body {
            background-color: #fff;
            color: #33475b;
            margin-bottom: -1px;
            padding-bottom: 1px;
            padding-top: 24px
        }

            .private-modal--danger .private-modal__header + .private-modal__body h1, .private-modal--danger .private-modal__header + .private-modal__body h2, .private-modal--danger .private-modal__header + .private-modal__body h3, .private-modal--danger .private-modal__header + .private-modal__body h4, .private-modal--danger .private-modal__header + .private-modal__body h5, .private-modal--danger .private-modal__header + .private-modal__body h6, .private-modal--info .private-modal__header + .private-modal__body h1, .private-modal--info .private-modal__header + .private-modal__body h2, .private-modal--info .private-modal__header + .private-modal__body h3, .private-modal--info .private-modal__header + .private-modal__body h4, .private-modal--info .private-modal__header + .private-modal__body h5, .private-modal--info .private-modal__header + .private-modal__body h6, .private-modal--success .private-modal__header + .private-modal__body h1, .private-modal--success .private-modal__header + .private-modal__body h2, .private-modal--success .private-modal__header + .private-modal__body h3, .private-modal--success .private-modal__header + .private-modal__body h4, .private-modal--success .private-modal__header + .private-modal__body h5, .private-modal--success .private-modal__header + .private-modal__body h6, .private-modal--upgrades .private-modal__header + .private-modal__body h1, .private-modal--upgrades .private-modal__header + .private-modal__body h2, .private-modal--upgrades .private-modal__header + .private-modal__body h3, .private-modal--upgrades .private-modal__header + .private-modal__body h4, .private-modal--upgrades .private-modal__header + .private-modal__body h5, .private-modal--upgrades .private-modal__header + .private-modal__body h6 {
                color: #33475b
            }

.private-modal--centered {
    text-align: center !important
}

    .private-modal--centered .private-modal__header__inner {
        justify-content: center
    }

.private-wizard.private-modal__content-wrapper {
    display: flex;
    flex-direction: column;
    flex: 1 1 0%;
    max-height: 100%
}

.private-wizard .private-wizard__content-wrapper {
    flex: 1 1 0%;
    min-height: auto;
    overflow: auto
}

.private-wizard .private-wizard__footer.private-modal__footer {
    background-color: #f5f8fa;
    border-top: 1px solid #cbd6e2;
    padding: 16px 40px
}

.private-wizard__title {
    margin-right: 12px
}

.private-wizard__header-with-overview {
    background-color: #fff;
    background-image: none;
    color: inherit;
    min-height: 76px;
    padding: 4px 40px
}

    .private-wizard__header-with-overview .private-modal__header__inner {
        padding: 4px 0
    }

.private-wizard__header-step-count {
    margin-left: 12px
}

.private-wizard__body.private-modal__body {
    padding-bottom: 40px
}

.private-wizard__button--first {
    order: 0
}

.private-wizard__cancel-button.private-wizard__cancel-button:not(.private-wizard__button--first) {
    margin-left: 24px
}

.private-modal__container {
    margin: 0 auto;
    min-height: 100%
}

@media only screen and (max-width:800px) {
    .private-modal__container {
        position: relative
    }
}

.private-modal__matcher-outer {
    margin-top: 12px;
    width: 100%
}

    .private-modal__matcher-outer:empty {
        display: none
    }

.private-overlay .private-modal__container {
    height: 100%
}

.private-overlay .private-modal {
    border-radius: 3px
}

@media only screen and (max-width:544px) {
    .private-overlay .private-modal {
        border-radius: 0;
        min-height: 100%
    }
}

.private-overlay .private-modal__header {
    border-top-left-radius: 3px;
    border-top-right-radius: 3px
}

@media only screen and (max-width:544px) {
    .private-overlay .private-modal__header {
        border-top-left-radius: 0;
        border-top-right-radius: 0
    }
}

.private-overlay .private-modal__footer {
    border-bottom-left-radius: 3px;
    border-bottom-right-radius: 3px
}

@media only screen and (max-width:544px) {
    .private-overlay .private-modal__footer {
        border-bottom-left-radius: 0;
        border-bottom-right-radius: 0
    }
}

.private-modal--lightbox {
    background-color: transparent;
    color: #fff;
    display: block;
    height: 100%;
    overflow: hidden;
    width: 100%
}

.private-modal--lightbox, .private-modal.private-modal--fullscreen {
    bottom: 0;
    position: absolute;
    right: 0;
    top: 0
}

.private-modal--fullscreen {
    display: flex;
    flex-direction: column;
    overflow: hidden;
    width: 100%
}

    .private-modal--fullscreen .private-modal__footer, .private-modal--fullscreen .private-modal__header {
        flex: none;
        border-radius: 0
    }

    .private-modal--fullscreen .private-modal__body, .private-modal--fullscreen > .private-form {
        flex: 1 1 0%;
        min-height: auto;
        overflow: auto
    }

.private-overlay .private-modal--fullscreen {
    border-radius: 0
}

.private-modal.private-modal--sidebar {
    bottom: 0;
    position: absolute;
    right: 0;
    top: 0
}

.private-modal--sidebar {
    display: flex;
    flex-direction: column;
    overflow: hidden;
    max-width: 100%;
    min-width: 300px
}

    .private-modal--sidebar .private-modal__footer, .private-modal--sidebar .private-modal__header {
        flex: none;
        border-radius: 0
    }

    .private-modal--sidebar .private-modal__body, .private-modal--sidebar > .private-form {
        flex: 1 1 0%;
        min-height: auto;
        overflow: auto
    }

    .private-modal--sidebar .private-modal__body, .private-modal--sidebar .private-modal__footer {
        padding-left: 40px;
        padding-right: 40px
    }

    .private-modal--sidebar .private-modal__footer {
        background-color: #f5f8fa;
        border-top: 1px solid #cbd6e2;
        padding-bottom: 20px;
        padding-top: 20px
    }

.private-overlay .private-modal--sidebar {
    border-radius: 0
}

.is--heading-1 {
    font-weight: 700 !important;
    font-size: 32px !important
}

.is--heading-1, .is--heading-2 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif !important;
    -webkit-font-smoothing: antialiased !important;
    -moz-osx-font-smoothing: grayscale !important;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    line-height: normal !important;
    text-transform: none !important
}

.is--heading-2 {
    font-weight: 400 !important;
    font-size: 24px !important
}

.is--heading-3 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif !important;
    font-weight: 500 !important;
    -webkit-font-smoothing: antialiased !important;
    -moz-osx-font-smoothing: grayscale !important;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    font-size: 22px !important;
    line-height: normal !important;
    text-transform: none !important
}

.is--heading-4 {
    font-size: 20px !important
}

.is--heading-4, .is--heading-5 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif !important;
    font-weight: 600 !important;
    -webkit-font-smoothing: antialiased !important;
    -moz-osx-font-smoothing: grayscale !important;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    line-height: normal !important;
    text-transform: none !important
}

.is--heading-5 {
    font-size: 16px !important
}

.is--heading-6 {
    text-transform: uppercase !important
}

.is--heading-6, .is--heading-7 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif !important;
    font-weight: 600 !important;
    -webkit-font-smoothing: antialiased !important;
    -moz-osx-font-smoothing: grayscale !important;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    font-size: 14px !important;
    line-height: normal !important
}

.is--heading-7 {
    text-transform: none !important
}

.is--multiline__cell {
    overflow: visible;
    white-space: normal !important
}

.is--single-line {
    white-space: nowrap
}

.has--vertical-spacing > :last-child {
    margin-bottom: 0
}

.has--horizontal-spacing > * + * {
    margin-left: 12px
}

.has--horizontal-spacing--md > * + * {
    margin-left: 24px !important
}

.is--module {
    margin-bottom: 16px;
    margin-top: 0
}

.is--island.is--island {
    margin-bottom: 40px;
    margin-top: 0;
    margin-top: 40px
}

.has--draggable .is--draggable {
    background-size: 0 0
}

.has--draggable .is--draggable--sized:before {
    opacity: 0
}

.has--draggable:hover .is--draggable {
    background-size: auto
}

.has--draggable:hover .is--draggable--sized:before {
    opacity: 1
}

.has--draggable:hover .is--draggable-hover-container .is--draggable--standalone {
    opacity: 0
}

.has--draggable:hover .is--draggable-hover-container:hover .is--draggable--standalone {
    opacity: 1
}

.is--text--regular {
    font-weight: 400 !important
}

.is--text--medium, .is--text--regular {
    font-family: Avenir Next W02 !important
}

.is--text--medium {
    font-weight: 500 !important
}

.is--text--bold, .is--text--demibold {
    font-family: Avenir Next W02 !important;
    font-weight: 600 !important
}

.is--text--error {
    color: #f2545b !important
}

.is--text--help {
    color: #516f90 !important
}

.is--text--success {
    color: #00a38d !important
}

.is--text--disabled {
    color: #b0c1d4
}

.has--on-dark {
    color: #fff
}

.is--medium-contrast {
    background-color: #f5f8fa
}

.is--high-contrast {
    background-color: #33475b;
    color: #fff
}

.is--selected-item {
    background-color: #eaf0f6
}

.private-moveable-group {
    padding-right: 40px;
    position: relative
}

    .private-moveable-group + .private-moveable-group {
        margin-top: 12px
    }

    .private-moveable-group .private-form__set:first-of-type .private-form__control {
        padding-left: 26px
    }

    .private-moveable-group .private-form__set {
        width: 100%
    }

        .private-moveable-group .private-form__set + .private-form__set {
            margin-top: 0
        }

.private-movable-group__grippie {
    height: 40px;
    left: 0;
    position: absolute;
    top: 0;
    width: 26px
}

.private-moveable-group__inner {
    display: flex
}

.private-moveable-group__close {
    position: absolute;
    right: 0;
    top: 0;
    width: 40px
}

.private-moveable-area-container {
    padding: 1px;
    padding-left: 27px
}

.private-moveable-area-container--no-draggable {
    margin-left: 27px;
    padding-left: 0
}

.private-moveable-area-container--container-draggable {
    cursor: move;
    cursor: grab
}

.private-moveable-area-container--visible {
    padding: 0
}

    .private-moveable-area-container--visible .private-moveable-area {
        border-width: 1px
    }

    .private-moveable-area-container--visible .private-moveable-area__grippie {
        background-color: #00a4bd;
        width: 26px
    }

.private-moveable-area-container--visible--draggable .private-moveable-area__content {
    padding-left: 36px
}

.private-moveable-area-container--visible--no-draggable {
    margin-left: 26px
}

.private-moveable-area {
    border: 0 solid #00a4bd;
    position: relative
}

    .private-moveable-area .private-form__label {
        padding-top: 0
    }

.private-moveable-area--selected {
    background-color: #eaf0f6
}

.private-moveable-area__grippie {
    height: 100%;
    left: 0;
    position: absolute
}

.private-moveable-area__content {
    padding: 10px
}

.private-multicolumn {
    border: 1px solid #dfe3eb;
    background-color: #fff;
    width: 100%
}

.private-multicolumn__group {
    border-color: #dfe3eb;
    border-style: solid;
    border-width: 1px 0 0
}

.private-multicolumn__item {
    padding: 16px 24px
}

.private-multicolumn__item__title {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    font-size: 16px;
    line-height: normal;
    text-transform: none;
    margin-bottom: 4px
}

.private-multicolumn__section .private-multicolumn__group:not(:first-child), .private-multicolumn__section .private-multicolumn__group:not(:first-child) .private-multicolumn__item {
    border-color: transparent
}

    .private-multicolumn__section .private-multicolumn__group:not(:first-child) .private-multicolumn__item__title {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 600;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        margin-bottom: 16px;
        margin-top: 0;
        display: block;
        font-size: 14px;
        line-height: normal;
        text-transform: uppercase;
        margin-bottom: 4px
    }

.private-multicolumn--align-top {
    vertical-align: top
}

.private-multicolumn--align-middle {
    vertical-align: middle
}

.private-multicolumn--align-bottom {
    vertical-align: bottom
}

.private-multicolumn--flush {
    border-color: transparent
}

    .private-multicolumn--flush > .private-multicolumn__group:first-child .private-multicolumn__item, .private-multicolumn--flush > .private-multicolumn__section:first-child .private-multicolumn__item {
        padding-top: 0
    }

    .private-multicolumn--flush > .private-multicolumn__group:last-child .private-multicolumn__item, .private-multicolumn--flush > .private-multicolumn__section:last-child .private-multicolumn__item {
        padding-bottom: 0
    }

@media only screen and (min-width:576px) {
    .private-multicolumn {
        display: table
    }

        .private-multicolumn > .private-multicolumn__group:first-child .private-multicolumn__item, .private-multicolumn > .private-multicolumn__section:first-child .private-multicolumn__item {
            border-color: transparent
        }

    .private-multicolumn__section {
        display: table-row-group
    }

    .private-multicolumn__group {
        display: table-row
    }

    .private-multicolumn--flush .private-multicolumn__item:first-child {
        padding-left: 0
    }

    .private-multicolumn--flush .private-multicolumn__item:last-child {
        padding-right: 0
    }

    .private-multicolumn__item {
        border-color: #dfe3eb;
        border-style: solid;
        border-width: 1px 0 0;
        display: table-cell
    }

        .private-multicolumn__item:last-child:not(:first-child) {
            text-align: right
        }
}

@media only screen and (max-width:575px) {
    .private-multicolumn > .private-multicolumn__group:first-child {
        border-color: transparent
    }

    .private-multicolumn__item {
        border-color: transparent;
        width: 100% !important
    }

    .private-multicolumn--flush .private-multicolumn__item {
        padding-left: 0;
        padding-right: 0
    }
}

body.uiFullScreenBackground > .app, body.uiFullScreenBackground > .page {
    filter: blur(5px)
}

.private-hoverlay__overlay, .private-overlay {
    background-color: rgba(45,62,80,.79);
    bottom: 0;
    contain: content;
    left: 0;
    overflow: auto;
    position: fixed;
    right: 0;
    top: 0;
    z-index: 1111
}

    .private-hoverlay__overlay.private-overlay--contextual, .private-overlay.private-overlay--contextual {
        contain: none;
        position: absolute
    }

        .private-hoverlay__overlay.private-overlay--contextual .private-modal__container, .private-overlay.private-overlay--contextual .private-modal__container {
            height: 100%
        }

@media only screen and (min-width:800px) {
    .private-hoverlay__overlay, .private-overlay {
        overflow-x: hidden
    }
}

@media only screen and (min-width:545px) {
    .private-hoverlay__overlay, .private-overlay {
        padding-bottom: 60px;
        padding-top: 60px
    }
}

.private-overlay--light {
    background-color: hsla(0,0%,100%,.79)
}

.private-overlay--contextual {
    position: absolute
}

.private-overlay__overlay-content, .private-overlay__overlay-content > * {
    height: 100%;
    margin: 0;
    width: 100%
}

.private-hoverlay {
    overflow: hidden;
    position: relative
}

    .private-hoverlay.private-hoverlay--full-card .private-hoverlay__child {
        margin-bottom: 5px
    }

    .private-hoverlay.private-hoverlay--full-card .private-hoverlay__overlay {
        border-radius: 3px;
        bottom: 5px
    }

    .private-hoverlay.private-hoverlay--bottom-half-card .private-hoverlay__overlay {
        border-bottom-left-radius: 3px;
        border-bottom-right-radius: 3px
    }

    .private-hoverlay .private-hoverlay__overlay {
        transition: background-color .2s;
        background-color: rgba(81,111,144,0);
        z-index: 1
    }

        .private-hoverlay .private-hoverlay__overlay.private-overlay--contextual {
            padding: 0
        }

        .private-hoverlay .private-hoverlay__overlay.private-hoverlay__overlay--clickable {
            cursor: pointer;
            outline: none
        }

        .private-hoverlay .private-hoverlay__overlay + .private-hoverlay__children {
            filter: blur(0);
            transition: filter .2s steps(5)
        }

    .private-hoverlay .private-overlay__overlay-content {
        transition: opacity .2s;
        color: #fff;
        opacity: 0;
        outline: none
    }

    .private-hoverlay .private-hoverlay__button:focus > .private-hoverlay > .private-hoverlay__overlay, .private-hoverlay .private-hoverlay__overlay--focused, .private-hoverlay .private-hoverlay__overlay--hovered, .private-hoverlay .private-hoverlay__overlay:focus, .private-hoverlay a:focus > .private-hoverlay > .private-hoverlay__overlay {
        transition: background-color .2s;
        background-color: rgba(81,111,144,.85)
    }

        .private-hoverlay .private-hoverlay__button:focus > .private-hoverlay > .private-hoverlay__overlay .private-overlay__overlay-content, .private-hoverlay .private-hoverlay__overlay--focused .private-overlay__overlay-content, .private-hoverlay .private-hoverlay__overlay--hovered .private-overlay__overlay-content, .private-hoverlay .private-hoverlay__overlay:focus .private-overlay__overlay-content, .private-hoverlay a:focus > .private-hoverlay > .private-hoverlay__overlay .private-overlay__overlay-content {
            transition: opacity .2s;
            -webkit-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
            opacity: 1
        }

        .private-hoverlay .private-hoverlay__button:focus > .private-hoverlay > .private-hoverlay__overlay + .private-hoverlay__children--blur, .private-hoverlay .private-hoverlay__overlay--focused + .private-hoverlay__children--blur, .private-hoverlay .private-hoverlay__overlay--hovered + .private-hoverlay__children--blur, .private-hoverlay .private-hoverlay__overlay:focus + .private-hoverlay__children--blur, .private-hoverlay a:focus > .private-hoverlay > .private-hoverlay__overlay + .private-hoverlay__children--blur {
            filter: blur(5px);
            transition: filter .2s steps(5)
        }

.private-avatar-hoverlay, .private-avatar-hoverlay .private-hoverlay__overlay {
    border-radius: 100%
}

    .private-avatar-hoverlay .private-avatar-hoverlay__foreground-text {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 600;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        margin-bottom: 16px;
        margin-top: 0;
        display: block;
        font-size: 14px;
        line-height: normal;
        text-transform: none;
        margin-bottom: 0;
        text-align: center;
        text-decoration: underline
    }

.private-overlay-highlight {
    display: inline-block
}

    .private-overlay-highlight .private-overlay-highlight__content-shadow {
        border-radius: 40px;
        box-shadow: 0 0 100px 5253px rgba(45,62,80,.79);
        display: inline-block;
        position: relative;
        z-index: 1111
    }

    .private-overlay-highlight .private-overlay-highlight__content {
        position: relative;
        z-index: 1112
    }

.private-paginator {
    align-items: center;
    flex-flow: row nowrap
}

.private-paginator, .private-paginator__numbers {
    display: flex;
    justify-content: center
}

@media only screen and (max-width:480px) {
    .private-paginator__numbers {
        display: none
    }
}

.private-paginator__backward-controls .private-paginator__button, .private-paginator__forward-controls .private-paginator__button {
    margin-left: 0
}

.private-paginator__icon {
    font-size: 24px;
    color: currentColor !important;
    vertical-align: middle
}

.private-paginator__button {
    font-size: 14px;
    transition: all .15s ease-out;
    color: #0091ae;
    padding-left: 7px;
    padding-right: 7px
}

    .private-paginator__button:hover {
        background-color: #eaf0f6;
        text-decoration: none
    }

    .private-paginator__button:active {
        background-color: #cbd6e2;
        color: #0091ae
    }

.private-paginator__button--numeric {
    font-size: 14px
}

.private-paginator__button--active {
    background-color: #e5f5f8;
    border: 1px solid #7fd1de
}

.private-button__dropdown-opener .private-dropdown__item__decoration {
    margin-right: 4px
}

.private-button__dropdown-opener .private-dropdown__item__image {
    margin-left: 4px
}

.private-button__dropdown-opener.private-form__control--inline--show-placeholder .private-dropdown__item__label {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    color: #7c98b6
}

.private-button__dropdown-opener.private-button__dropdown-opener--multiline {
    height: auto
}

.private-dropdown {
    border-radius: inherit
}

.private-dropdown--list {
    padding-bottom: 8px;
    padding-top: 8px
}

    .private-dropdown--list .private-list__item > .private-file-button .private-button, .private-dropdown--list .private-list__item > a, .private-dropdown--list .private-list__item > button {
        -webkit-font-smoothing: auto;
        -moz-osx-font-smoothing: auto;
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 400;
        font-size: 14px;
        -webkit-user-select: none;
        -moz-user-select: none;
        -ms-user-select: none;
        user-select: none;
        border: 0;
        border-radius: 0;
        color: #33475b;
        display: block;
        min-height: 40px;
        padding: 8px 20px;
        text-align: left;
        width: 100%;
        background-color: #fff;
        line-height: 24px
    }

.hubspot-disable-focus-styles .private-dropdown--list .private-list__item > .private-file-button .private-button:hover, .hubspot-disable-focus-styles .private-dropdown--list .private-list__item > a:hover, .hubspot-disable-focus-styles .private-dropdown--list .private-list__item > button:hover, .hubspot-enable-focus-styles .private-dropdown--list .private-list__item > .private-file-button .private-button:focus, .hubspot-enable-focus-styles .private-dropdown--list .private-list__item > a:focus, .hubspot-enable-focus-styles .private-dropdown--list .private-list__item > button:focus {
    background: #e5f5f8;
    color: #33475b;
    text-decoration: none
}

.private-dropdown--list .private-list__item > .private-file-button .private-button.selected, .private-dropdown--list .private-list__item > a.selected, .private-dropdown--list .private-list__item > button.selected {
    background-color: #e5f5f8
}

.private-dropdown--list .private-button.private-button--disabled {
    background-color: transparent !important
}

.private-dropdown--list .private-button .private-truncated-string--is-flex {
    justify-content: initial
}

.private-dropdown--list .private-checkbox {
    min-height: 40px;
    padding-left: 24px;
    padding-right: 20px
}

    .private-dropdown--list .private-checkbox .private-checkbox__text {
        padding-left: 23px
    }

    .private-dropdown--list .private-checkbox:hover {
        background: #e5f5f8;
        color: #33475b
    }

.private-dropdown--list.private-searchable-select-input__dropdown {
    padding-top: 0
}

.private-dropdown__caret {
    border: .3125em solid transparent;
    display: inline-block;
    vertical-align: middle;
    border-top-color: currentColor;
    margin-top: .3125em;
    align-self: center;
    flex-shrink: 0
}

.private-button--transparent .private-dropdown__caret, .private-button__link .private-dropdown__caret {
    color: #7c98b6;
    margin-left: .125em
}

    .private-button--transparent .private-dropdown__caret.private-dropdown__caret--link-on-dark, .private-button__link .private-dropdown__caret.private-dropdown__caret--link-on-dark {
        color: inherit
    }

.private-button--sm .private-dropdown__caret {
    border-width: 4px;
    margin-top: 4px
}

.private-dropdown__caret--enclosed {
    margin-left: 4px
}

.private-dropdown__caret--form {
    border: .375em solid transparent;
    display: inline-block;
    vertical-align: middle;
    border-top-color: #00a4bd;
    margin-top: .375em
}

.private-dropdown__caret--hidden {
    visibility: hidden
}

.private-dropdown__icon {
    margin-right: 8px;
    line-height: 1
}

.private-dropdown__footer-container {
    padding: 16px 20px;
    border-top: 1px solid #cbd6e2
}

.private-dropdown__loading > .private-typeahead-result-label.private-typeahead-result-label.private-typeahead-result-label {
    background-color: #fff !important;
    padding-bottom: 4px;
    padding-top: 4px
}

.private-dropdown__loading .private-spinner {
    margin-left: auto;
    margin-right: auto
}

.private-typeahead.hide-search > .private-typeahead-results {
    max-height: 228px;
    padding-bottom: 8px;
    padding-top: 8px
}

.private-typeahead.layout-grouped > .private-typeahead-results {
    display: flex;
    overflow-y: hidden
}

    .private-typeahead.layout-grouped > .private-typeahead-results > .private-typeahead-results-group {
        flex-basis: 0;
        flex-grow: 1;
        max-height: 220px;
        overflow-x: hidden;
        overflow-y: auto
    }

.private-typeahead-results-group__list {
    margin-bottom: 0
}

.private-search-control__wrapper {
    background-color: #eaf0f6;
    border-top-left-radius: inherit;
    border-top-right-radius: inherit;
    padding: 12px;
    position: relative
}

    .private-search-control__wrapper .private-search-control__input {
        background-color: #fff;
        padding-right: 30px
    }

.private-search-control__wrapper--toolbar {
    padding: 8px
}

.private-dropdown__button__contents {
    align-items: center;
    display: flex
}

    .private-dropdown__button__contents .private-button__link {
        display: inline-flex
    }

.private-dropdown__button-label {
    flex-grow: 1;
    margin-right: 4px;
    -webkit-hyphens: none;
    -ms-hyphens: none;
    hyphens: none;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 100%;
    min-width: 0;
    text-align: left;
    padding-bottom: 2px;
    padding-top: 2px;
    margin-bottom: -2px;
    margin-top: -2px
}

.private-form__control--inline .private-dropdown__button-label {
    flex-grow: 0;
    margin-right: 8px;
    width: auto
}

.private-dropdown__button-label--no-icon {
    margin-right: 0
}

.private-button__link .private-dropdown__button__contents {
    display: inline-flex;
    text-decoration: inherit
}

.private-button__link .private-dropdown__button-label {
    white-space: normal
}

.private-dropdown__item__decoration {
    flex-shrink: 0;
    margin-right: 8px;
    width: 16px
}

.private-dropdown__item__image {
    border-radius: 100%;
    display: inline-block;
    height: 24px;
    left: -4px;
    position: relative;
    top: -2px;
    vertical-align: middle;
    width: 24px
}

.private-typeahead-results {
    -webkit-tap-highlight-color: rgba(0,0,0,0);
    border-radius: inherit;
    list-style: none;
    margin: 0;
    max-height: 220px;
    overflow-x: hidden;
    overflow-y: auto;
    padding: 0;
    position: relative
}

    .private-typeahead-results .private-typeahead-result-label {
        padding: 8px 20px
    }

    .private-typeahead-results .private-typeahead-result-heading {
        cursor: auto
    }

    .private-typeahead-results .private-typeahead-result--disabled .private-typeahead-result-label {
        background-color: #eaf0f6 !important;
        border-color: #eaf0f6 !important;
        color: #b0c1d4 !important;
        cursor: not-allowed;
        background-color: #fff !important
    }

    .private-typeahead-results .private-typeahead-result--highlighted {
        background: #e5f5f8;
        color: #33475b
    }

    .private-typeahead-results .private-dropdown__item--toggleable {
        align-items: center;
        display: flex;
        font-size: 15px;
        padding-right: 16px;
        white-space: nowrap
    }

        .private-typeahead-results .private-dropdown__item--toggleable .private-dropdown__item__decoration {
            margin-left: 8px
        }

    .private-typeahead-results .private-dropdown__item__label {
        overflow: hidden;
        text-overflow: ellipsis
    }

.private-typeahead-results--toolbar.private-typeahead-results--toolbar .private-typeahead-result-label {
    font-size: 13px;
    min-height: auto;
    padding: 3px 6px
}

.private-dropdown__badge {
    margin-left: 4px;
    margin-top: -2px;
    vertical-align: middle
}

.private-typeahead-results-item__help {
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    cursor: pointer;
    display: block;
    margin-top: -3px;
    padding: 0 20px 9px;
    white-space: normal;
    word-wrap: break-word
}

    .private-typeahead-results-item__help .private-tag {
        margin-bottom: -8px
    }

    .private-typeahead-results-item__help .private-tag--unenclosed__text {
        font-weight: 400
    }

.private-checkbox + .private-typeahead-results-item__help {
    margin-left: 34px;
    margin-top: 0;
    padding: 0 20px 8px
}

.private-typeahead-results-group__label {
    font-weight: 500;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    font-size: 14px;
    line-height: normal;
    text-transform: none;
    margin: 0;
    min-height: 40px;
    padding: 12px 20px 8px
}

    .private-typeahead-results-group__label ~ .private-typeahead-results-group {
        padding-left: 0
    }

.private-typeahead:not(.layout-grouped) .private-typeahead-results-group .private-typeahead-result, .private-typeahead:not(.layout-grouped) .private-typeahead-results-group .private-typeahead-results-group .private-typeahead-results-group__label {
    padding-left: 20px
}

.private-typeahead-option--virtualized .private-typeahead-results-item__help {
    white-space: nowrap
}

.private-typeahead-result__loading-indicator {
    margin: 0;
    margin-left: 4px;
    transform: scale(.75)
}

.space-sword--editor #hs-nav-v4, .space-sword--editor #trial-banner-block {
    display: none
}

.private-template--dark {
    background-color: #f5f8fa
}

.private-template__title-badge {
    margin-left: 8px;
    margin-right: 8px;
    vertical-align: middle
}

.private-template--centered .private-template__section {
    margin-left: auto;
    margin-right: auto;
    max-width: 1376px;
    width: 100%
}

.private-template--narrow .private-template__section {
    max-width: 1140px
}

.private-template__section {
    padding-left: 48px;
    padding-right: 48px
}

.private-template__section--header {
    flex-shrink: 0
}

.private-editor {
    height: 100vh
}

    .private-editor .private-template__section--header {
        padding-left: 0;
        padding-right: 0;
        z-index: 2
    }

    .private-editor .private-template__section--stretch {
        display: flex;
        flex-direction: column;
        flex-grow: 1;
        flex-shrink: 1;
        flex-basis: 0;
        height: auto
    }

    .private-editor .private-template__section--flush {
        flex-grow: 1;
        position: relative
    }

.private-template__section--stretch {
    flex: 1 0 auto
}

.private-template__section--dark {
    background-color: #f5f8fa
}

.private-template__section--divided {
    border-top: 1px solid #cbd6e2
}

.private-template__section--spaced-vertical {
    padding-top: 20px
}

.private-template__section--flush {
    height: 100%;
    padding-left: 0 !important;
    padding-right: 0 !important
}

@media only screen and (max-width:768px) {
    .private-template__section {
        padding-left: 24px;
        padding-right: 24px
    }
}

@media only screen and (max-width:544px) {
    .private-template__section {
        padding-left: 12px;
        padding-right: 12px
    }
}

.private-template--desktop .private-template__section {
    padding-left: 48px;
    padding-right: 48px
}

.private-template--mobile .private-template__section {
    padding-left: 12px;
    padding-right: 12px
}

.private-template--tablet .private-template__section {
    padding-left: 24px;
    padding-right: 24px
}

.private-tool-bar {
    padding: 0 20px
}

.private-tool-bar--dark {
    display: flex;
    background-color: #253342;
    color: #fff
}

    .private-tool-bar--dark .private-tool-bar__inner {
        min-height: 56px
    }

    .private-tool-bar--dark .private-tool-bar__group {
        padding: 8px 0
    }

        .private-tool-bar--dark .private-tool-bar__group:nth-child(2) {
            flex-basis: auto
        }

    .private-tool-bar--dark h1 {
        -webkit-font-smoothing: auto;
        -moz-osx-font-smoothing: auto;
        font-size: 20px;
        margin-bottom: 0;
        font-weight: 400;
        max-width: 100%;
        white-space: normal
    }

.private-tool-bar__inner {
    align-items: center;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-between;
    width: 100%
}

    .private-tool-bar__inner > * + * {
        margin-left: 12px
    }

.private-tool-bar__group > .private-button {
    flex-shrink: 0;
    margin-top: 0;
    width: auto
}

.private-tool-bar__group:nth-child(2) {
    flex-shrink: 1;
    flex-grow: 1;
    justify-content: center
}

    .private-tool-bar__group:nth-child(2):last-child {
        flex-grow: 2
    }

.private-tool-bar__group:nth-child(3):last-child {
    justify-content: flex-end
}

@media (-ms-high-contrast:none),screen and (-ms-high-contrast:active) {
    .private-tool-bar__group {
        flex-basis: auto
    }
}

@supports (-ms-ime-align:auto) {
    .private-tool-bar__group {
        flex-basis: 0%
    }
}

.private-tool-bar--with-filters {
    margin: 20px 0;
    padding-left: 0;
    padding-right: 0
}

    .private-tool-bar--with-filters .private-tool-bar__group {
        flex-basis: auto;
        flex-grow: 9999
    }

        .private-tool-bar--with-filters .private-tool-bar__group:last-child {
            flex-basis: 400px;
            flex-grow: 1;
            justify-content: flex-end;
            margin-left: 0
        }

.private-tool-bar--with-tabs {
    border-bottom: 1px solid #cbd6e2
}

    .private-tool-bar--with-tabs .private-tool-bar__inner {
        flex-wrap: nowrap
    }

    .private-tool-bar--with-tabs .private-tool-bar__group:not(:nth-child(2)) {
        flex-grow: 0;
        flex-shrink: 0
    }

    .private-tool-bar--with-tabs .private-tool-bar__group:nth-child(2) {
        flex-basis: auto;
        max-width: 100%;
        min-width: 50px
    }

.private-template__section--header .private-tool-bar--with-tabs {
    border-bottom: 0
}

@media only screen and (max-width:544px) {
    .private-tool-bar--with-tabs {
        margin-top: 20px
    }

        .private-tool-bar--with-tabs .private-tool-bar__inner {
            flex-wrap: wrap
        }

        .private-tool-bar--with-tabs .private-tool-bar__group.private-tool-bar__group {
            flex-grow: 1;
            margin-left: 12px;
            margin-right: 12px;
            margin-top: 6px
        }

        .private-tool-bar--with-tabs .private-tool-bar__group:nth-child(2) {
            order: 3
        }

        .private-tool-bar--with-tabs .private-tool-bar__group > .private-button {
            flex: 1 0 auto
        }
}

.private-panel {
    display: inline-flex;
    flex-direction: row;
    background: #fff;
    height: 100%;
    max-width: 100vw;
    min-width: 300px;
    overflow-x: hidden;
    overflow-y: auto;
    z-index: 1111
}

    .private-panel.private-panel--sandboxed {
        bottom: 0;
        position: absolute;
        top: 0
    }

    .private-panel.private-panel--right {
        box-shadow: -3px 0 8px 0 rgba(66,91,118,.21);
        right: 0
    }

    .private-panel.private-panel--left {
        box-shadow: 3px 0 8px 0 rgba(66,91,118,.21);
        left: 0
    }

.private-panel__container {
    display: flex;
    flex-direction: column;
    min-height: 100%;
    padding-top: 40px;
    width: 100%
}

    .private-panel__container:not(.private-panel__container--with-header) .private-close__button {
        color: #99acc2
    }

    .private-panel__container .private-panel__header .private-close__button {
        color: #fff
    }

    .private-panel__container > .private-form {
        display: flex;
        flex: 1 1 100%;
        flex-direction: column;
        max-height: 100%
    }

.private-panel__container--with-body {
    height: 0
}

.private-panel__header {
    display: flex;
    flex-direction: column;
    background-color: #00bda5;
    color: #fff;
    margin-top: -40px
}

    .private-panel__header + .private-panel__section {
        padding-top: 24px
    }

    .private-panel__header h1, .private-panel__header h2, .private-panel__header h3, .private-panel__header h4, .private-panel__header h5, .private-panel__header h6 {
        margin: 0
    }

.private-panel__section {
    padding-left: 40px;
    padding-right: 40px;
    padding-top: 0
}

    .private-panel__section:last-of-type {
        flex-grow: 1
    }

.private-panel__body {
    flex: 1 1 100%;
    min-height: auto;
    overflow: auto;
    padding: 0;
    position: relative
}

    .private-panel__body .private-panel__section {
        flex-grow: 0;
        padding-top: 24px
    }

.private-panel__footer {
    background-color: #f5f8fa;
    border-top: 1px solid #cbd6e2;
    z-index: 1
}

.private-panel__steps {
    margin-bottom: 0;
    padding-top: 20px
}

.private-panel-navigator--child.private-panel {
    box-shadow: none !important;
    flex-shrink: 0;
    position: relative
}

.private-scroll-columns {
    align-self: stretch;
    display: flex;
    height: 100%;
    margin-left: -20px;
    margin-top: -20px;
    width: calc(100% + 20px)
}

.private-scroll-columns--inset {
    margin-top: 20px;
    min-width: 0;
    padding-left: 20px
}

    .private-scroll-columns--inset.private-scroll-columns__column {
        height: auto
    }

    .private-scroll-columns--inset.private-scroll-columns--left {
        padding-right: 20px
    }

    .private-scroll-columns--inset.private-scroll-columns--right {
        border-left: 1px solid #dfe3eb
    }

    .private-scroll-columns--inset .private-scroll-columns__header {
        padding-bottom: 20px
    }

    .private-scroll-columns--inset .private-scroll-columns__footer {
        padding-top: 20px
    }

.private-scroll-columns__column {
    display: flex;
    flex-direction: column;
    height: 100%;
    position: relative
}

.private-scroll-columns__column--stretch {
    display: flex;
    flex: 1 1 auto;
    height: 100%
}

.private-scroll-columns__inner {
    display: flex;
    flex-direction: column;
    height: 100%;
    min-height: 0;
    width: 100%
}

@media only screen and (min-width:830px) {
    .private-modal--is-popup .private-scroll-columns {
        height: auto;
        max-height: 400px;
        min-height: 0
    }

    .private-modal--is-popup .private-scroll-columns__column {
        height: auto
    }

    .private-modal--is-popup .private-scroll-columns__inner {
        flex-basis: 400px
    }

    .private-modal--is-popup .private-scroll-columns--grow.private-scroll-columns--grow {
        max-height: calc(100% + 20px)
    }

    .private-modal--is-popup .private-scroll-columns--grow .private-scroll-columns__inner {
        flex-basis: auto
    }

    .private-modal--is-popup .private-scroll-columns--custom-height {
        max-height: 100%
    }

        .private-modal--is-popup .private-scroll-columns--custom-height .private-scroll-columns__inner {
            flex-basis: auto
        }

    .private-modal--is-popup .private-scroll-columns__column--overflows .private-scroll-columns__inner {
        height: 100%;
        position: absolute;
        width: calc(100% - 20px)
    }

    .private-modal--is-popup .private-scroll-columns__column--overflows.private-scroll-columns--inset.private-scroll-columns--left .private-scroll-columns__inner {
        width: calc(100% - 40px)
    }
}

@media only screen and (max-width:544px) {
    .private-modal--is-popup .private-scroll-columns {
        flex-wrap: wrap
    }

    .private-modal--is-popup .private-scroll-columns--inset.private-scroll-columns--left {
        padding-right: 0
    }

    .private-modal--is-popup .private-scroll-columns--right {
        border-left: 0
    }

    .private-modal--is-popup .private-scroll-columns--custom-height .private-scroll-columns__inner {
        max-height: 100% !important
    }
}

.private-panel__container--with-body .private-scroll-columns__column {
    height: 100%;
    min-height: 0;
    width: 100%
}

.private-panel__container--with-body .private-scroll-columns__inner {
    flex-basis: auto
}

.private-expandable-text {
    transition: all .15s ease-out;
    overflow: hidden;
    position: relative
}

.private-expandable-text__container {
    display: flex;
    flex-direction: column
}

.private-expandable-text__overhang-wrapper {
    position: relative
}

.private-expandable-text--scrollable {
    border: 1px solid #cbd6e2;
    overflow: scroll;
    padding: 16px 20px
}

.private-expandable-text__toggle-button {
    align-self: center;
    margin: 8px 0
}

    .private-expandable-text__toggle-button.align-left {
        align-self: flex-start
    }

    .private-expandable-text__toggle-button.align-right {
        align-self: flex-end
    }

.private-datepicker {
    height: 345px;
    width: 340px
}

    .private-datepicker .baldric.picker {
        font-size: 15px;
        position: relative;
        width: 340px
    }

        .private-datepicker .baldric.picker .picker--opened .picker__holder, .private-datepicker .baldric.picker .picker__button--clear, .private-datepicker .baldric.picker .picker__button--today, .private-datepicker .baldric.picker .picker__day, .private-datepicker .baldric.picker .picker__day--highlighted, .private-datepicker .baldric.picker .picker__day--selected, .private-datepicker .baldric.picker .picker__day--today, .private-datepicker .baldric.picker .picker__nav--next, .private-datepicker .baldric.picker .picker__nav--prev {
            border-radius: 0
        }

        .private-datepicker .baldric.picker .picker__holder {
            padding: 8px;
            border-radius: 3px;
            box-shadow: 0 1px 24px 0 rgba(0,0,0,.08);
            background-color: #fff;
            border: 1px solid #cbd6e2;
            min-width: 220px;
            position: relative
        }

        .private-datepicker .baldric.picker .picker__box {
            padding-left: 12px;
            padding-right: 12px
        }

        .private-datepicker .baldric.picker .picker__header {
            font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
            font-weight: 700;
            margin-top: 16px;
            font-size: 16px
        }

        .private-datepicker .baldric.picker .picker__table tr {
            height: 29px
        }

        .private-datepicker .baldric.picker .picker__nav--next, .private-datepicker .baldric.picker .picker__nav--prev {
            height: auto;
            padding-top: 6px;
            width: auto
        }

            .private-datepicker .baldric.picker .picker__nav--next:hover, .private-datepicker .baldric.picker .picker__nav--prev:hover {
                background: inherit
            }

            .private-datepicker .baldric.picker .picker__nav--next:before, .private-datepicker .baldric.picker .picker__nav--prev:before {
                -webkit-font-smoothing: antialiased;
                -moz-osx-font-smoothing: grayscale;
                border: 0;
                color: #00a4bd;
                font-family: spacesword;
                font-feature-settings: "liga" 1;
                font-size: 28px;
                line-height: 1;
                width: 100%
            }

            .private-datepicker .baldric.picker .picker__nav--next:hover:before, .private-datepicker .baldric.picker .picker__nav--prev:hover:before {
                color: #7fd1de
            }

            .private-datepicker .baldric.picker .picker__nav--prev:before {
                content: "left"
            }

            .private-datepicker .baldric.picker .picker__nav--next:before {
                content: "right";
                margin-left: 8px
            }

        .private-datepicker .baldric.picker .picker__weekday {
            font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
            font-weight: 400;
            color: #cbd6e2
        }

        .private-datepicker .baldric.picker .picker__day {
            font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
            font-weight: 400;
            color: inherit
        }

        .private-datepicker .baldric.picker .picker__day--selected {
            background: #00a4bd;
            color: #fff
        }

        .private-datepicker .baldric.picker .picker__day--highlighted:not(.picker__day--selected), .private-datepicker .baldric.picker .picker__day:hover:not(.picker__day--selected):not(.picker__day--disabled) {
            background: #e5f5f8
        }

        .private-datepicker .baldric.picker .picker__button--clear:before, .private-datepicker .baldric.picker .picker__button--today:before, .private-datepicker .baldric.picker .picker__day--today:before {
            display: none
        }

        .private-datepicker .baldric.picker .picker__day--today:not(.picker__day--selected):not(.picker__day--disabled) {
            font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
            font-weight: 500;
            background: none;
            color: #ff8f59
        }

        .private-datepicker .baldric.picker .picker__day--outfocus {
            display: none
        }

        .private-datepicker .baldric.picker .picker__day--disabled, .private-datepicker .baldric.picker .picker__day--disabled:hover {
            background: none;
            border: 0;
            color: #cbd6e2
        }

        .private-datepicker .baldric.picker .picker__footer {
            padding-top: 4px;
            padding-bottom: 4px;
            margin: 0 8px 8px;
            overflow: auto
        }

        .private-datepicker .baldric.picker .picker__button--clear, .private-datepicker .baldric.picker .picker__button--today {
            font-size: 12px;
            line-height: 12px;
            padding: 9px 16px;
            border-radius: 3px;
            transition: all .15s ease-out;
            background: #eaf0f6;
            border: 1px solid #cbd6e2;
            color: #506e91;
            width: 45%
        }

            .private-datepicker .baldric.picker .picker__button--clear:hover, .private-datepicker .baldric.picker .picker__button--today:hover {
                background: #f5f8fa
            }

        .private-datepicker .baldric.picker .picker__button--today {
            float: left
        }

        .private-datepicker .baldric.picker .picker__button--clear {
            float: right
        }

.private-datepicker--unclearable .baldric.picker .picker__button--today {
    width: 100%
}

.private-datepicker--unclearable .baldric.picker .picker__button--clear {
    display: none
}

.private-datepicker--disable-today .baldric.picker .picker__button--today {
    background-color: #eaf0f6 !important;
    border-color: #eaf0f6 !important;
    color: #b0c1d4 !important;
    cursor: not-allowed;
    pointer-events: none
}

.private-datepicker.private-date-range-inputs__datepicker {
    height: 297px
}

.private-date-picker__button.private-form__control--on-dark {
    color: #33475b
}

    .private-date-picker__button.private-form__control--on-dark:active {
        background-color: #eaf0f6;
        border-color: #cbd6e2
    }

    .private-date-picker__button.private-form__control--on-dark:hover {
        background-color: #fff
    }

.private-date-picker__button.private-button--sm .private-dropdown__button__contents {
    height: 12px
}

.private-datepicker__input {
    background: none;
    border: 0;
    color: inherit;
    cursor: inherit;
    display: inline-block;
    font-size: inherit;
    height: 1rem;
    padding: 0;
    vertical-align: baseline
}

    .private-datepicker__input::-moz-placeholder {
        opacity: 1;
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 400;
        color: #7c98b6
    }

    .private-datepicker__input:-ms-input-placeholder {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 400;
        color: #7c98b6
    }

    .private-datepicker__input::-webkit-input-placeholder {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 400;
        color: #7c98b6
    }

    .private-datepicker__input:disabled {
        -webkit-text-fill-color: unset
    }

.private-form__control--inline--show-placeholder .private-datepicker__input::-moz-placeholder {
    opacity: 1;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    color: #7c98b6
}

.private-form__control--inline--show-placeholder .private-datepicker__input:-ms-input-placeholder {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    color: #7c98b6
}

.private-form__control--inline--show-placeholder .private-datepicker__input::-webkit-input-placeholder {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    color: #7c98b6
}

.private-form__control--inline--show-placeholder .private-dropdown__icon {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    color: #7c98b6
}

.hubspot-disable-focus-styles .private-datepicker__input {
    outline: 0
}

.private-date-picker__button:hover .private-datepicker__input--as-link:not(.private-datepicker__input--readonly):not(:disabled) {
    text-decoration: underline
}

.private-truncated-string {
    display: table;
    min-width: 0;
    table-layout: fixed;
    width: 100%
}

    .private-truncated-string.private-truncated-string--is-flex {
        align-items: baseline;
        display: flex
    }

        .private-truncated-string.private-truncated-string--is-flex .private-truncated-string__inner {
            display: block;
            min-width: 0;
            width: auto
        }

    .private-truncated-string.private-truncated-string--has-tooltip {
        cursor: help
    }

        .private-truncated-string.private-truncated-string--has-tooltip:focus {
            outline: 1px dotted
        }

a .private-truncated-string.private-truncated-string--has-tooltip, button .private-truncated-string.private-truncated-string--has-tooltip {
    cursor: pointer
}

.private-truncated-string .private-truncated-string__inner {
    -webkit-hyphens: none;
    -ms-hyphens: none;
    hyphens: none;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    width: 100%;
    display: table-cell;
    vertical-align: middle
}

.private-truncated-string__reverse__tail {
    overflow: hidden
}

    .private-truncated-string__reverse__tail .private-truncated-string__reverse__content {
        display: block
    }

    .private-truncated-string__reverse__tail.is-truncated {
        float: right;
        width: calc(100% - 1em)
    }

        .private-truncated-string__reverse__tail.is-truncated .private-truncated-string__reverse__content {
            float: right
        }

.private-truncated-string__reverse__ellipse {
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    float: left
}

.private-header--width-constrained .private-header__title .private-truncated-string__inner {
    white-space: normal
}

.private-form__label--floating.private-form__label--required .private-truncated-string:after {
    content: "\00a0 *"
}

.private-popover {
    max-width: 100vw;
    position: relative
}

    .private-popover.private-popover--default, .private-popover.private-tooltip--longform {
        border-radius: 3px;
        box-shadow: 0 1px 24px 0 rgba(0,0,0,.08);
        background-color: #fff;
        border: 1px solid #cbd6e2
    }

    .private-popover.private-tooltip--longform {
        line-height: 1.5
    }

    .private-popover.private-popover--shepherd {
        border-radius: 3px;
        box-shadow: 0 1px 24px 0 rgba(0,0,0,.08);
        border: 1px solid #cbd6e2;
        background-color: #fff;
        border: 0;
        box-shadow: 0 0 0 1px rgba(81,111,144,.3),0 1px 24px 0 rgba(0,0,0,.08)
    }

    .private-popover.private-popover--tooltip {
        border-radius: 3px;
        font-size: 13px;
        background-color: #425b76;
        color: #fff;
        max-width: 232px
    }

    .private-popover.private-popover--tooltip-danger {
        background-color: #f2545b
    }

.private-popover__inner {
    border-radius: inherit
}

.tether-pinned-left .private-popover {
    left: 1px
}

.tether-pinned-right .private-popover {
    right: 1px
}

.private-tooltip {
    display: block;
    position: relative;
    visibility: visible;
    z-index: 1070
}

    .private-tooltip:not(.private-tooltip--longform) a {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 600;
        -webkit-font-smoothing: antialiased;
        -moz-osx-font-smoothing: grayscale;
        transition: all .15s ease-out;
        color: #fff;
        text-decoration: none;
        text-decoration: underline
    }

        .private-tooltip:not(.private-tooltip--longform) a:hover {
            color: #7fd1de;
            text-decoration: underline
        }

        .private-tooltip:not(.private-tooltip--longform) a:active {
            color: #eaf0f6
        }

    .private-tooltip:not(.private-tooltip--longform) .private-icon:not(.private-icon-circle__inner) {
        color: #fff
    }

.private-tooltip__inner {
    box-shadow: 0 3px 8px rgba(0,0,0,.1);
    line-height: 1.5;
    max-width: 100%;
    padding: 10px 16px;
    text-decoration: none;
    word-wrap: break-word
}

.private-tooltip__heading {
    margin-bottom: 8px
}

.private-tooltip--longform {
    font-size: 12px;
    max-width: 280px
}

    .private-tooltip--longform .private-tooltip__inner {
        box-shadow: none;
        color: inherit;
        max-width: inherit;
        padding: 20px
    }

    .private-tooltip--longform ol, .private-tooltip--longform ul {
        padding-left: 16px
    }

.private-alert {
    font-size: 14px;
    align-items: center;
    justify-content: space-between;
    display: flex;
    border-style: solid;
    border-width: 1px;
    min-height: 60px;
    padding: 8px 20px;
    position: relative;
    text-align: left
}

    .private-alert.private-alert--inline {
        min-height: 44px
    }

@media (-ms-high-contrast:none),screen and (-ms-high-contrast:active) {
    .private-alert:before {
        content: " ";
        display: inline-block;
        height: 44px;
        margin-left: -1px;
        vertical-align: middle;
        width: 1px
    }

    .private-alert.private-alert--inline:before {
        height: 28px
    }

    @supports (-ms-ime-align:auto) {
        .private-alert:before {
            display: none
        }
    }
}

.private-alert:not(.private-alert--dismissable) .private-alert__body, .private-alert:not(.private-alert--dismissable) .private-alert__inner {
    padding-right: 0
}

.private-alert .private-alert__title {
    margin-bottom: 4px;
    margin-right: 20px
}

.private-alert .private-alert__inner {
    align-items: baseline;
    display: flex;
    flex-wrap: wrap;
    padding-right: 24px;
    width: 100%
}

.private-alert.private-alert--banner {
    border-color: transparent
}

.private-alert__title {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 700;
    color: inherit
}

    .private-alert__title + .private-alert__body {
        margin-top: 4px
    }

.private-alert__body {
    line-height: 1.4;
    padding-right: 24px
}

.private-alert__close {
    color: #7c98b6;
    top: 24px
}

.private-alert--inline .private-alert__close {
    top: 16px
}

.private-alert--danger {
    background-color: #fdedee;
    border-color: #f8a9ad
}

    .private-alert--danger.private-alert--system-wide {
        background-color: #fff1ee;
        border: 0
    }

.private-alert--warning {
    background-color: #fef8f0;
    border-color: #fae0b5;
    color: #33475b
}

    .private-alert--warning.private-alert--system-wide {
        background-color: #fdf3e1;
        border: 0
    }

.private-alert--success {
    background-color: #e5f8f6;
    border-color: #7fded2
}

.private-alert--info {
    background-color: #e5f5f8;
    border-color: #7fd1de
}

    .private-alert--info.private-alert--system-wide {
        border: 0
    }

.private-alert--tip {
    background-color: #fff;
    border: 1px solid #7fd1de
}

.private-alert--banner {
    background-image: linear-gradient(89deg,#ff7a59,#f2547d);
    color: #fff
}

    .private-alert--banner:not(.private-alert--dismissable) .private-alert__body, .private-alert--banner:not(.private-alert--dismissable) .private-alert__inner {
        padding-right: 0
    }

    .private-alert--banner .private-alert__title {
        align-self: inherit;
        flex-grow: 1
    }

    .private-alert--banner .private-alert__body {
        flex-grow: 9999;
        margin-top: 0
    }

    .private-alert--banner .private-alert__close {
        color: #fff
    }

.private-floating-alert {
    display: inline-flex;
    max-width: 668px;
    pointer-events: auto
}

    .private-floating-alert, .private-floating-alert.private-alert--inline {
        box-shadow: 0 1px 4px 2px rgba(66,91,118,.06)
    }

@media only screen and (max-width:768px) {
    .private-floating-alert {
        max-width: calc(100% - 50px)
    }
}

.private-floating-alert-list {
    display: block;
    left: 0;
    pointer-events: none;
    position: fixed;
    text-align: center;
    top: 0;
    width: 100%;
    z-index: 1211
}

    .private-floating-alert-list.private-floating-alert-list--contextual {
        position: relative;
        top: 0
    }

        .private-floating-alert-list.private-floating-alert-list--contextual .private-floating-alert {
            max-width: calc(100% - 50px)
        }

    .private-floating-alert-list .private-floating-alert-list__child-wrapper {
        left: 0;
        overflow: auto;
        position: absolute;
        top: 0;
        width: 100%
    }

    .private-floating-alert-list .private-floating-alert-list__child + .private-floating-alert-list__child {
        margin-top: 16px
    }

.private-tool-bar--with-tabs .private-tabs__excess-tabs-dropdown.private-tabs__excess-tabs-dropdown {
    padding-left: 12px;
    padding-right: 12px
}

.private-header .private-header__badge {
    margin-left: 8px;
    vertical-align: middle
}

.private-template .private-template__section > .private-header {
    margin-bottom: 0;
    border-bottom: 0
}

.private-header--flush, .private-template:not(.private-editor) > .private-template__section--header > .private-header {
    padding-left: 0;
    padding-right: 0
}

    .private-header--flush:after, .private-template:not(.private-editor) > .private-template__section--header > .private-header:after {
        left: 0;
        width: 100%
    }

.private-header__title {
    max-width: 100%
}

.private-header .private-header__title .private-header__heading {
    margin-bottom: 0;
    max-width: 100%;
    padding-right: 28px
}

    .private-header .private-header__title .private-header__heading.private-header__heading--solo {
        padding-right: 0
    }

@media screen and (-webkit-min-device-pixel-ratio:0) {
    .private-header .private-header__title .private-header__heading {
        margin-bottom: 2px
    }

    @supports (-ms-ime-align:auto) {
        .private-header .private-header__title .private-header__heading {
            margin-bottom: 0
        }
    }
}

.private-header__title-badge {
    flex-shrink: 0;
    margin-right: 12px;
    white-space: nowrap
}

.private-header:not(.private-header--width-constrained) .private-header__title {
    display: flex;
    flex-basis: 0;
    flex-grow: 1;
    align-items: center
}

    .private-header:not(.private-header--width-constrained) .private-header__title + .private-header__toolbar {
        flex-grow: 0
    }

.private-header-details.private-header-details {
    margin-left: -24px;
    max-width: none;
    min-height: 1px;
    padding: 0 24px 0 0;
    width: calc(100% + 48px)
}

.private-header-details__content, .private-header-details__media {
    margin: 0 0 16px 24px
}

.private-header--with-details:not(.private-header--with-tabs) .private-header-details {
    padding-top: 20px
}

.private-main {
    padding: 0 48px 48px
}

.private-main--dark {
    background-color: #f5f8fa
}

.private-main--flush {
    padding-left: 0;
    padding-right: 0;
    padding-top: 0
}

.private-card__title {
    margin-bottom: 0;
    padding-bottom: 40px
}

.private-card--compact .private-card__title {
    padding-bottom: 24px
}

.private-icon {
    display: inline-block;
    user-select: none;
    white-space: nowrap !important;
    word-break: normal !important
}

.private-help-icon__icon {
    cursor: default
}

.private-help-icon--inline .private-help-icon__icon {
    margin-left: 8px
}

.private-table thead th .private-help-icon--inline .private-help-icon__icon {
    margin-left: 4px
}

.private-form__help-tooltip {
    padding-top: 8px
}

    .private-form__help-tooltip .private-help-icon__icon {
        vertical-align: middle
    }

@-moz-document url-prefix() {
    .private-form__help-tooltip .private-help-icon__icon {
        vertical-align: bottom
    }
}

.private-step-indicator {
    display: inline-flex;
    flex: 1 1 auto;
    flex-wrap: wrap;
    margin-left: 2px;
    margin-top: 2px
}

.private-step-indicator__section {
    display: flex;
    flex: 1 1 0%;
    justify-content: center;
    color: #cbd6e2
}

    .private-step-indicator__section:first-of-type .private-step-indicator__line:before, .private-step-indicator__section:last-of-type .private-step-indicator__line:after {
        visibility: hidden
    }

    .private-step-indicator__section:focus {
        overflow: hidden
    }

.private-step-indicator--horizontal {
    align-items: flex-start;
    justify-content: space-between
}

    .private-step-indicator--horizontal .private-step-indicator__section {
        align-items: center;
        flex-direction: column;
        justify-content: center
    }

    .private-step-indicator--horizontal .private-step-indicator__line:after, .private-step-indicator--horizontal .private-step-indicator__line:before {
        flex: 1 1 100%;
        display: inline-block
    }

.private-step-indicator__section--active, .private-step-indicator__section--complete {
    color: #ff7a59
}

.private-step-indicator--customized .private-step-indicator__point {
    transform: none
}

.private-step-indicator--customized.private-step-indicator--vertical .private-step-indicator__section--active .private-step-indicator__text {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600
}

.private-step-indicator__section--active .private-step-indicator__line:after {
    color: #cbd6e2
}

.private-step-indicator__line {
    align-items: center;
    display: flex;
    justify-content: center;
    width: 100%
}

    .private-step-indicator__line:after, .private-step-indicator__line:before {
        border-top: 2px solid currentColor;
        content: " ";
        position: relative;
        width: 100%
    }

.private-step-indicator__item {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    font-size: 12px;
    color: #33475b;
    text-align: center;
    text-transform: uppercase;
    word-wrap: break-word
}

    .private-step-indicator__item .private-microcopy, .private-step-indicator__item small {
        -webkit-font-smoothing: auto;
        -moz-osx-font-smoothing: auto;
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 400;
        text-transform: none
    }

.private-step-indicator__point {
    flex: 0 0 auto;
    line-height: 0;
    padding: 4px 0;
    transition: opacity .15s ease-out
}

    .private-step-indicator__point > * {
        line-height: normal;
        vertical-align: top
    }

.private-step-indicator__clickable {
    cursor: pointer
}

    .private-step-indicator__clickable:hover .private-step-indicator__point {
        opacity: .65
    }

.private-step-indicator__status {
    flex-basis: 100%;
    display: none;
    text-align: center
}

    .private-step-indicator__status:after {
        content: "\200B"
    }

.private-step-indicator--compact .private-step-indicator__text {
    display: none
}

.private-step-indicator--compact .private-step-indicator__status {
    display: block
}

.private-step-indicator--flush .private-step-indicator__section .private-step-indicator__line:before {
    display: none
}

.private-step-indicator--flush .private-step-indicator__section:last-of-type {
    flex: 0 0 auto
}

    .private-step-indicator--flush .private-step-indicator__section:last-of-type .private-step-indicator__line:after {
        display: none
    }

.private-step-indicator--vertical {
    align-self: stretch;
    flex-direction: column
}

    .private-step-indicator--vertical .private-step-indicator__item {
        flex-grow: 1;
        padding-bottom: 28px;
        text-align: left
    }

    .private-step-indicator--vertical .private-step-indicator__section {
        align-items: flex-start;
        justify-content: flex-start;
        flex-basis: auto;
        position: relative
    }

@media (-ms-high-contrast:none),screen and (-ms-high-contrast:active) {
    .private-step-indicator--vertical .private-step-indicator__section {
        border-top: 1px solid transparent
    }
}

@supports (-ms-ime-align:auto) {
    .private-step-indicator--vertical .private-step-indicator__section {
        border-top: 0
    }
}

.private-step-indicator--vertical .private-step-indicator__point {
    margin-right: 0;
    padding-bottom: 0;
    padding-top: 0
}

.private-step-indicator--vertical .private-step-indicator__line {
    align-items: center;
    display: flex;
    flex-direction: column;
    justify-content: flex-start;
    height: 100%;
    left: 0;
    position: absolute;
    top: 0;
    width: auto
}

    .private-step-indicator--vertical .private-step-indicator__line:after {
        flex: 1 0 auto;
        border-left: 2px solid currentColor;
        border-top: 0;
        content: " ";
        display: inline-block;
        position: relative;
        width: auto
    }

    .private-step-indicator--vertical .private-step-indicator__line:before, .private-step-indicator--vertical .private-step-indicator__status {
        display: none
    }

.private-wizard__header-with-overview .private-step-indicator__item {
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    font-size: 11px
}

.private-typeahead.hide-search > .private-search-control__wrapper {
    position: absolute;
    top: 0;
    width: 1px;
    height: 1px;
    margin: -1px;
    padding: 0;
    overflow: hidden;
    clip: rect(0,0,0,0);
    border: 0
}

@media (-ms-high-contrast:none),screen and (-ms-high-contrast:active) {
    .private-ie11-flex-wrapper {
        display: flex
    }
}

@supports (-ms-ime-align:auto) {
    .private-ie11-flex-wrapper {
        display: block
    }
}

body.uiFullScreenBackground, html.uiFullScreenBackground {
    overflow: hidden
}

.uiFullScreen-scrollbar-measure {
    position: absolute;
    top: -9999px;
    width: 50px;
    height: 50px;
    overflow: scroll
}





.center-block {
    display: block !important;
    margin-left: auto !important;
    margin-right: auto !important
}

.clearfix:after, .clearfix:before {
    content: " " !important;
    display: table !important
}

.clearfix:after {
    clear: both !important
}

.flex-shrink-0, .no-shrink {
    display: flex;
    flex-shrink: 0 !important
}

.flex-grow-1 {
    display: flex;
    flex-grow: 1 !important
}

.flex-no-wrap {
    display: flex;
    flex-wrap: nowrap !important
}

.flex-wrap {
    display: flex;
    flex-wrap: wrap !important
}

.flex-wrap-reverse {
    display: flex;
    flex-wrap: wrap-reverse !important
}

.flex-column {
    display: flex;
    flex-direction: column !important
}

.flex-row {
    display: flex;
    flex-direction: row !important
}

.justify-start {
    display: flex;
    justify-content: flex-start !important
}

.justify-end {
    display: flex;
    justify-content: flex-end !important
}

.justify-between {
    display: flex;
    justify-content: space-between !important
}

.justify-around {
    display: flex;
    justify-content: space-around !important
}

.justify-center {
    display: flex;
    justify-content: center !important
}

.align-start {
    display: flex;
    align-items: flex-start !important
}

.align-end {
    display: flex;
    align-items: flex-end !important
}

.align-center {
    display: flex;
    align-items: center !important
}

.align-stretch {
    display: flex;
    align-items: stretch !important
}

.align-baseline {
    display: flex;
    align-items: baseline !important
}

.align-self-start {
    display: flex;
    align-self: flex-start !important
}

.align-self-end {
    display: flex;
    align-self: flex-end !important
}

.align-self-center {
    display: flex;
    align-self: center !important
}

.align-self-stretch {
    display: flex;
    align-self: stretch !important
}

.align-self-baseline {
    display: flex;
    align-self: baseline !important
}

.pull-right {
    float: right !important
}

.pull-left {
    float: left !important
}

.pull-none {
    float: none !important
}

.hidden {
    display: none !important;
    visibility: hidden !important
}

.hide-text {
    font: 0/0 a !important;
    color: transparent !important;
    text-shadow: none !important;
    background-color: transparent !important;
    border: 0 !important
}

.m-all-auto {
    margin: auto !important
}

.m-x-auto {
    margin-left: auto !important;
    margin-right: auto !important
}

.m-y-auto {
    margin-top: auto !important;
    margin-bottom: auto !important
}

.m-left-auto {
    margin-left: auto !important
}

.m-right-auto {
    margin-right: auto !important
}

.m-top-auto {
    margin-top: auto !important
}

.m-bottom-auto {
    margin-bottom: auto !important
}

.m-all-0 {
    margin: 0 !important
}

.m-x-0 {
    margin-left: 0 !important;
    margin-right: 0 !important
}

.m-y-0 {
    margin-top: 0 !important;
    margin-bottom: 0 !important
}

.m-auto-x-0 {
    margin: auto 0 !important
}

.m-auto-y-0 {
    margin: 0 auto !important
}

.m-top-0 {
    margin-top: 0 !important
}

.m-right-0 {
    margin-right: 0 !important
}

.m-bottom-0 {
    margin-bottom: 0 !important
}

.m-left-0 {
    margin-left: 0 !important
}

.m-all-1 {
    margin: 4px !important
}

.m-x-1 {
    margin-left: 4px !important;
    margin-right: 4px !important
}

.m-y-1 {
    margin-top: 4px !important;
    margin-bottom: 4px !important
}

.m-auto-x-1 {
    margin: auto 4px !important
}

.m-auto-y-1 {
    margin: 4px auto !important
}

.m-top-1 {
    margin-top: 4px !important
}

.m-right-1 {
    margin-right: 4px !important
}

.m-bottom-1 {
    margin-bottom: 4px !important
}

.m-left-1 {
    margin-left: 4px !important
}

.m-all-2 {
    margin: 8px !important
}

.m-x-2 {
    margin-left: 8px !important;
    margin-right: 8px !important
}

.m-y-2 {
    margin-top: 8px !important;
    margin-bottom: 8px !important
}

.m-auto-x-2 {
    margin: auto 8px !important
}

.m-auto-y-2 {
    margin: 8px auto !important
}

.m-top-2 {
    margin-top: 8px !important
}

.m-right-2 {
    margin-right: 8px !important
}

.m-bottom-2 {
    margin-bottom: 8px !important
}

.m-left-2 {
    margin-left: 8px !important
}

.m-all-3 {
    margin: 12px !important
}

.m-x-3 {
    margin-left: 12px !important;
    margin-right: 12px !important
}

.m-y-3 {
    margin-top: 12px !important;
    margin-bottom: 12px !important
}

.m-auto-x-3 {
    margin: auto 12px !important
}

.m-auto-y-3 {
    margin: 12px auto !important
}

.m-top-3 {
    margin-top: 12px !important
}

.m-right-3 {
    margin-right: 12px !important
}

.m-bottom-3 {
    margin-bottom: 12px !important
}

.m-left-3 {
    margin-left: 12px !important
}

.m-all-4 {
    margin: 16px !important
}

.m-x-4 {
    margin-left: 16px !important;
    margin-right: 16px !important
}

.m-y-4 {
    margin-top: 16px !important;
    margin-bottom: 16px !important
}

.m-auto-x-4 {
    margin: auto 16px !important
}

.m-auto-y-4 {
    margin: 16px auto !important
}

.m-top-4 {
    margin-top: 16px !important
}

.m-right-4 {
    margin-right: 16px !important
}

.m-bottom-4 {
    margin-bottom: 16px !important
}

.m-left-4 {
    margin-left: 16px !important
}

.m-all-5 {
    margin: 20px !important
}

.m-x-5 {
    margin-left: 20px !important;
    margin-right: 20px !important
}

.m-y-5 {
    margin-top: 20px !important;
    margin-bottom: 20px !important
}

.m-auto-x-5 {
    margin: auto 20px !important
}

.m-auto-y-5 {
    margin: 20px auto !important
}

.m-top-5 {
    margin-top: 20px !important
}

.m-right-5 {
    margin-right: 20px !important
}

.m-bottom-5 {
    margin-bottom: 20px !important
}

.m-left-5 {
    margin-left: 20px !important
}

.m-all-6 {
    margin: 24px !important
}

.m-x-6 {
    margin-left: 24px !important;
    margin-right: 24px !important
}

.m-y-6 {
    margin-top: 24px !important;
    margin-bottom: 24px !important
}

.m-auto-x-6 {
    margin: auto 24px !important
}

.m-auto-y-6 {
    margin: 24px auto !important
}

.m-top-6 {
    margin-top: 24px !important
}

.m-right-6 {
    margin-right: 24px !important
}

.m-bottom-6 {
    margin-bottom: 24px !important
}

.m-left-6 {
    margin-left: 24px !important
}

.m-all-7 {
    margin: 28px !important
}

.m-x-7 {
    margin-left: 28px !important;
    margin-right: 28px !important
}

.m-y-7 {
    margin-top: 28px !important;
    margin-bottom: 28px !important
}

.m-auto-x-7 {
    margin: auto 28px !important
}

.m-auto-y-7 {
    margin: 28px auto !important
}

.m-top-7 {
    margin-top: 28px !important
}

.m-right-7 {
    margin-right: 28px !important
}

.m-bottom-7 {
    margin-bottom: 28px !important
}

.m-left-7 {
    margin-left: 28px !important
}

.m-all-8 {
    margin: 32px !important
}

.m-x-8 {
    margin-left: 32px !important;
    margin-right: 32px !important
}

.m-y-8 {
    margin-top: 32px !important;
    margin-bottom: 32px !important
}

.m-auto-x-8 {
    margin: auto 32px !important
}

.m-auto-y-8 {
    margin: 32px auto !important
}

.m-top-8 {
    margin-top: 32px !important
}

.m-right-8 {
    margin-right: 32px !important
}

.m-bottom-8 {
    margin-bottom: 32px !important
}

.m-left-8 {
    margin-left: 32px !important
}

.m-all-9 {
    margin: 36px !important
}

.m-x-9 {
    margin-left: 36px !important;
    margin-right: 36px !important
}

.m-y-9 {
    margin-top: 36px !important;
    margin-bottom: 36px !important
}

.m-auto-x-9 {
    margin: auto 36px !important
}

.m-auto-y-9 {
    margin: 36px auto !important
}

.m-top-9 {
    margin-top: 36px !important
}

.m-right-9 {
    margin-right: 36px !important
}

.m-bottom-9 {
    margin-bottom: 36px !important
}

.m-left-9 {
    margin-left: 36px !important
}

.m-all-10 {
    margin: 40px !important
}

.m-x-10 {
    margin-left: 40px !important;
    margin-right: 40px !important
}

.m-y-10 {
    margin-top: 40px !important;
    margin-bottom: 40px !important
}

.m-auto-x-10 {
    margin: auto 40px !important
}

.m-auto-y-10 {
    margin: 40px auto !important
}

.m-top-10 {
    margin-top: 40px !important
}

.m-right-10 {
    margin-right: 40px !important
}

.m-bottom-10 {
    margin-bottom: 40px !important
}

.m-left-10 {
    margin-left: 40px !important
}

.m-all-11 {
    margin: 44px !important
}

.m-x-11 {
    margin-left: 44px !important;
    margin-right: 44px !important
}

.m-y-11 {
    margin-top: 44px !important;
    margin-bottom: 44px !important
}

.m-auto-x-11 {
    margin: auto 44px !important
}

.m-auto-y-11 {
    margin: 44px auto !important
}

.m-top-11 {
    margin-top: 44px !important
}

.m-right-11 {
    margin-right: 44px !important
}

.m-bottom-11 {
    margin-bottom: 44px !important
}

.m-left-11 {
    margin-left: 44px !important
}

.m-all-12 {
    margin: 48px !important
}

.m-x-12 {
    margin-left: 48px !important;
    margin-right: 48px !important
}

.m-y-12 {
    margin-top: 48px !important;
    margin-bottom: 48px !important
}

.m-auto-x-12 {
    margin: auto 48px !important
}

.m-auto-y-12 {
    margin: 48px auto !important
}

.m-top-12 {
    margin-top: 48px !important
}

.m-right-12 {
    margin-right: 48px !important
}

.m-bottom-12 {
    margin-bottom: 48px !important
}

.m-left-12 {
    margin-left: 48px !important
}

.m-all-13 {
    margin: 52px !important
}

.m-x-13 {
    margin-left: 52px !important;
    margin-right: 52px !important
}

.m-y-13 {
    margin-top: 52px !important;
    margin-bottom: 52px !important
}

.m-auto-x-13 {
    margin: auto 52px !important
}

.m-auto-y-13 {
    margin: 52px auto !important
}

.m-top-13 {
    margin-top: 52px !important
}

.m-right-13 {
    margin-right: 52px !important
}

.m-bottom-13 {
    margin-bottom: 52px !important
}

.m-left-13 {
    margin-left: 52px !important
}

.m-all-14 {
    margin: 56px !important
}

.m-x-14 {
    margin-left: 56px !important;
    margin-right: 56px !important
}

.m-y-14 {
    margin-top: 56px !important;
    margin-bottom: 56px !important
}

.m-auto-x-14 {
    margin: auto 56px !important
}

.m-auto-y-14 {
    margin: 56px auto !important
}

.m-top-14 {
    margin-top: 56px !important
}

.m-right-14 {
    margin-right: 56px !important
}

.m-bottom-14 {
    margin-bottom: 56px !important
}

.m-left-14 {
    margin-left: 56px !important
}

.m-all-15 {
    margin: 60px !important
}

.m-x-15 {
    margin-left: 60px !important;
    margin-right: 60px !important
}

.m-y-15 {
    margin-top: 60px !important;
    margin-bottom: 60px !important
}

.m-auto-x-15 {
    margin: auto 60px !important
}

.m-auto-y-15 {
    margin: 60px auto !important
}

.m-top-15 {
    margin-top: 60px !important
}

.m-right-15 {
    margin-right: 60px !important
}

.m-bottom-15 {
    margin-bottom: 60px !important
}

.m-left-15 {
    margin-left: 60px !important
}

.p-all-0 {
    padding: 0 !important
}

.p-x-0 {
    padding-left: 0 !important;
    padding-right: 0 !important
}

.p-y-0 {
    padding-bottom: 0 !important
}

.p-top-0, .p-y-0 {
    padding-top: 0 !important
}

.p-right-0 {
    padding-right: 0 !important
}

.p-bottom-0 {
    padding-bottom: 0 !important
}

.p-left-0 {
    padding-left: 0 !important
}

.p-all-1 {
    padding: 4px !important
}

.p-x-1 {
    padding-left: 4px !important;
    padding-right: 4px !important
}

.p-y-1 {
    padding-bottom: 4px !important
}

.p-top-1, .p-y-1 {
    padding-top: 4px !important
}

.p-right-1 {
    padding-right: 4px !important
}

.p-bottom-1 {
    padding-bottom: 4px !important
}

.p-left-1 {
    padding-left: 4px !important
}

.p-all-2 {
    padding: 8px !important
}

.p-x-2 {
    padding-left: 8px !important;
    padding-right: 8px !important
}

.p-y-2 {
    padding-bottom: 8px !important
}

.p-top-2, .p-y-2 {
    padding-top: 8px !important
}

.p-right-2 {
    padding-right: 8px !important
}

.p-bottom-2 {
    padding-bottom: 8px !important
}

.p-left-2 {
    padding-left: 8px !important
}

.p-all-3 {
    padding: 12px !important
}

.p-x-3 {
    padding-left: 12px !important;
    padding-right: 12px !important
}

.p-y-3 {
    padding-bottom: 12px !important
}

.p-top-3, .p-y-3 {
    padding-top: 12px !important
}

.p-right-3 {
    padding-right: 12px !important
}

.p-bottom-3 {
    padding-bottom: 12px !important
}

.p-left-3 {
    padding-left: 12px !important
}

.p-all-4 {
    padding: 16px !important
}

.p-x-4 {
    padding-left: 16px !important;
    padding-right: 16px !important
}

.p-y-4 {
    padding-bottom: 16px !important
}

.p-top-4, .p-y-4 {
    padding-top: 16px !important
}

.p-right-4 {
    padding-right: 16px !important
}

.p-bottom-4 {
    padding-bottom: 16px !important
}

.p-left-4 {
    padding-left: 16px !important
}

.p-all-5 {
    padding: 20px !important
}

.p-x-5 {
    padding-left: 20px !important;
    padding-right: 20px !important
}

.p-y-5 {
    padding-bottom: 20px !important
}

.p-top-5, .p-y-5 {
    padding-top: 20px !important
}

.p-right-5 {
    padding-right: 20px !important
}

.p-bottom-5 {
    padding-bottom: 20px !important
}

.p-left-5 {
    padding-left: 20px !important
}

.p-all-6 {
    padding: 24px !important
}

.p-x-6 {
    padding-left: 24px !important;
    padding-right: 24px !important
}

.p-y-6 {
    padding-bottom: 24px !important
}

.p-top-6, .p-y-6 {
    padding-top: 24px !important
}

.p-right-6 {
    padding-right: 24px !important
}

.p-bottom-6 {
    padding-bottom: 24px !important
}

.p-left-6 {
    padding-left: 24px !important
}

.p-all-7 {
    padding: 28px !important
}

.p-x-7 {
    padding-left: 28px !important;
    padding-right: 28px !important
}

.p-y-7 {
    padding-bottom: 28px !important
}

.p-top-7, .p-y-7 {
    padding-top: 28px !important
}

.p-right-7 {
    padding-right: 28px !important
}

.p-bottom-7 {
    padding-bottom: 28px !important
}

.p-left-7 {
    padding-left: 28px !important
}

.p-all-8 {
    padding: 32px !important
}

.p-x-8 {
    padding-left: 32px !important;
    padding-right: 32px !important
}

.p-y-8 {
    padding-bottom: 32px !important
}

.p-top-8, .p-y-8 {
    padding-top: 32px !important
}

.p-right-8 {
    padding-right: 32px !important
}

.p-bottom-8 {
    padding-bottom: 32px !important
}

.p-left-8 {
    padding-left: 32px !important
}

.p-all-9 {
    padding: 36px !important
}

.p-x-9 {
    padding-left: 36px !important;
    padding-right: 36px !important
}

.p-y-9 {
    padding-bottom: 36px !important
}

.p-top-9, .p-y-9 {
    padding-top: 36px !important
}

.p-right-9 {
    padding-right: 36px !important
}

.p-bottom-9 {
    padding-bottom: 36px !important
}

.p-left-9 {
    padding-left: 36px !important
}

.p-all-10 {
    padding: 40px !important
}

.p-x-10 {
    padding-left: 40px !important;
    padding-right: 40px !important
}

.p-y-10 {
    padding-bottom: 40px !important
}

.p-top-10, .p-y-10 {
    padding-top: 40px !important
}

.p-right-10 {
    padding-right: 40px !important
}

.p-bottom-10 {
    padding-bottom: 40px !important
}

.p-left-10 {
    padding-left: 40px !important
}

.p-all-11 {
    padding: 44px !important
}

.p-x-11 {
    padding-left: 44px !important;
    padding-right: 44px !important
}

.p-y-11 {
    padding-bottom: 44px !important
}

.p-top-11, .p-y-11 {
    padding-top: 44px !important
}

.p-right-11 {
    padding-right: 44px !important
}

.p-bottom-11 {
    padding-bottom: 44px !important
}

.p-left-11 {
    padding-left: 44px !important
}

.p-all-12 {
    padding: 48px !important
}

.p-x-12 {
    padding-left: 48px !important;
    padding-right: 48px !important
}

.p-y-12 {
    padding-bottom: 48px !important
}

.p-top-12, .p-y-12 {
    padding-top: 48px !important
}

.p-right-12 {
    padding-right: 48px !important
}

.p-bottom-12 {
    padding-bottom: 48px !important
}

.p-left-12 {
    padding-left: 48px !important
}

.p-all-13 {
    padding: 52px !important
}

.p-x-13 {
    padding-left: 52px !important;
    padding-right: 52px !important
}

.p-y-13 {
    padding-bottom: 52px !important
}

.p-top-13, .p-y-13 {
    padding-top: 52px !important
}

.p-right-13 {
    padding-right: 52px !important
}

.p-bottom-13 {
    padding-bottom: 52px !important
}

.p-left-13 {
    padding-left: 52px !important
}

.p-all-14 {
    padding: 56px !important
}

.p-x-14 {
    padding-left: 56px !important;
    padding-right: 56px !important
}

.p-y-14 {
    padding-bottom: 56px !important
}

.p-top-14, .p-y-14 {
    padding-top: 56px !important
}

.p-right-14 {
    padding-right: 56px !important
}

.p-bottom-14 {
    padding-bottom: 56px !important
}

.p-left-14 {
    padding-left: 56px !important
}

.p-all-15 {
    padding: 60px !important
}

.p-x-15 {
    padding-left: 60px !important;
    padding-right: 60px !important
}

.p-y-15 {
    padding-bottom: 60px !important
}

.p-top-15, .p-y-15 {
    padding-top: 60px !important
}

.p-right-15 {
    padding-right: 60px !important
}

.p-bottom-15 {
    padding-bottom: 60px !important
}

.p-left-15 {
    padding-left: 60px !important
}

.no-select {
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none
}

.sr-only {
    position: absolute !important;
    top: 0 !important;
    width: 1px !important;
    height: 1px !important;
    margin: -1px !important;
    padding: 0 !important;
    overflow: hidden !important;
    clip: rect(0,0,0,0) !important;
    border: 0 !important
}

.sr-only-focusable:active, .sr-only-focusable:focus {
    position: static !important;
    top: auto !important;
    width: auto !important;
    height: auto !important;
    margin: 0 !important;
    overflow: visible !important;
    clip: auto !important
}

.text-left {
    text-align: left !important
}

.text-right {
    text-align: right !important
}

.text-center {
    text-align: center !important
}

.text-justify {
    text-align: justify !important
}

.text-justify-all {
    text-align: justify-all !important
}

.text-start {
    text-align: start !important
}

.text-end {
    text-align: end !important
}

.text-match-parent {
    text-align: match-parent !important
}

.text-inherit {
    text-align: inherit !important
}

.text-initial {
    text-align: initial !important
}

.text-unset {
    text-align: unset !important
}

.truncate-text {
    width: 100% !important
}

.truncate-text, .truncate-text-weak {
    -webkit-hyphens: none;
    -ms-hyphens: none;
    hyphens: none;
    overflow: hidden !important;
    text-overflow: ellipsis !important;
    white-space: nowrap !important
}

.titlecase {
    text-transform: capitalize !important
}

.lowercase {
    text-transform: lowercase !important
}

.uppercase {
    text-transform: uppercase !important
}

.title-case {
    text-transform: capitalize !important
}

.display-flex {
    display: flex !important
}

.display-inline-flex {
    display: inline-flex !important
}

.display-inline {
    display: inline !important
}

.display-inline-block {
    display: inline-block !important
}

.display-block {
    display: block !important
}

.UIColumn-wrapper {
    justify-content: space-between;
    display: inline-flex;
    word-break: break-word;
    overflow: visible;
    flex-grow: 1;
    width: 100%
}

.UIColumn-spreads {
    flex-shrink: 100000;
    width: 100%;
    overflow-x: auto;
    overflow-y: hidden;
    display: flex;
    flex-direction: column;
    white-space: normal
}

    .UIColumn-spreads.expand {
        flex-grow: 1
    }

    .UIColumn-spreads.overflowVisible {
        overflow: visible
    }

.UIColumn-content {
    display: flex;
    flex-wrap: nowrap;
    flex-shrink: 1
}

    .UIColumn-content > .UIColumn-content {
        flex-shrink: 0
    }

.line-item-editor-price-summary {
    border: 1px solid #dfe3eb
}

.discount-price {
    color: #cbd6e2;
    text-decoration: line-through
}

.line-item-editor-quantity-cell {
    min-width: 50px
}

.thin-horizontal-rule {
    background-color: #dfe3eb !important;
    height: 1px !important
}

.weight-650 {
    font-weight: 650 !important
}

.line-item-edit-popover-button {
    margin-left: 5px
}

.products-view-image-container {
    display: flex;
    width: 200px;
    height: 200px;
    line-height: 200px;
    border: 1px solid #dfe3eb;
    background-color: #f5f8fa
}

    .products-view-image-container .products-view-image {
        margin: auto;
        max-height: 100%;
        max-width: 100%
    }

.integration-source-icon {
    width: 18px;
    height: 18px
}

.disabled-text {
    color: #b0c1d4
}

.shepherd-step {
    border-radius: 3px;
    background-color: #6a78d1;
    color: #fff;
    display: none;
    max-width: 350px;
    width: 100%
}

    .shepherd-step.shepherd-open {
        display: block
    }

    .shepherd-step .private-button {
        margin: 24px;
        margin-right: 0
    }

        .shepherd-step .private-button.disabled {
            display: none
        }

.shepherd-element {
    z-index: 1000
}

    .shepherd-element:before {
        border: 16px solid transparent;
        content: "";
        display: block;
        height: 0;
        pointer-events: none;
        position: absolute;
        width: 0
    }

    .shepherd-element.shepherd-element-attached-left {
        left: 16px !important
    }

        .shepherd-element.shepherd-element-attached-left:before {
            border-right-color: #6a78d1;
            left: -32px;
            top: calc(50% - 16px)
        }

    .shepherd-element.shepherd-element-attached-right {
        left: -16px !important
    }

        .shepherd-element.shepherd-element-attached-right:before {
            border-left-color: #6a78d1;
            right: -32px;
            top: calc(50% - 16px)
        }

    .shepherd-element.shepherd-element-attached-top {
        top: 6px !important
    }

    .shepherd-element.shepherd-element-attached-bottom {
        top: -16px !important
    }

        .shepherd-element.shepherd-element-attached-bottom:before {
            border-top-color: #6a78d1;
            bottom: -32px;
            right: calc(50% - 16px)
        }

.shepherd-target.shepherd-enabled {
    overflow: visible
}

    .shepherd-target.shepherd-enabled.shepherd-element-attached-top {
        position: relative
    }

        .shepherd-target.shepherd-enabled.shepherd-element-attached-top:after {
            border-bottom-color: #6a78d1;
            right: calc(50% - 16px);
            top: 13px
        }

    .shepherd-target.shepherd-enabled:after {
        border: 16px solid transparent;
        content: "";
        display: block;
        height: 0;
        pointer-events: none;
        position: absolute;
        width: 0
    }

.shepherd-content {
    box-shadow: 0 3px 8px rgba(0,0,0,.1);
    padding: 24px
}

    .shepherd-content header {
        font-weight: 700
    }

    .shepherd-content .shepherd-text {
        margin-bottom: 20px
    }

        .shepherd-content .shepherd-text p:last-child {
            margin-bottom: 0
        }

    .shepherd-content .shepherd-buttons {
        background-color: #fff;
        list-style: none;
        margin: 24px -24px -24px;
        padding: 0
    }

        .shepherd-content .shepherd-buttons > li {
            display: inline-block
        }

.shepherd-title {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 600;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    font-size: 16px;
    line-height: normal;
    text-transform: none;
    margin-bottom: 12px
}

.signature-component {
    position: relative
}

    .signature-component .signature-component-editable {
        display: none
    }

    .signature-component:hover .signature-component-editable {
        display: inline-block;
        position: absolute;
        width: 100%;
        height: 100%;
        opacity: .2;
        background-color: #cbd6e2;
        cursor: pointer;
        padding: 4px 12px
    }

.signature-iframe-edit {
    position: absolute;
    text-align: right;
    padding-right: 8px;
    padding-top: 4px;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    opacity: 0
}

.signature-iframe-pointer {
    cursor: pointer
}

.signature-iframe-wrapper {
    padding: 0;
    padding: 0 24px 0 0
}

    .signature-iframe-wrapper iframe {
        width: 100%;
        background: transparent
    }

    .signature-iframe-wrapper:hover {
        background: #f5f8fa
    }

        .signature-iframe-wrapper:hover .signature-iframe-edit {
            opacity: 1
        }

.email-branding-component {
    position: relative
}

.smart-detections__suggestion-dot {
    color: #fff;
    font-size: 12px
}

    .smart-detections__suggestion-dot.large {
        width: 20px;
        height: 20px;
        border-radius: 50%
    }

    .smart-detections__suggestion-dot.small {
        width: .4em;
        height: .4em;
        border-radius: 50%
    }

    .smart-detections__suggestion-dot.red {
        background: #d94c53
    }

    .smart-detections__suggestion-dot.yellow {
        background: #f5c26b
    }

    .smart-detections__suggestion-dot.green {
        background: #00bda5
    }



.activity-history-empty-state {
    text-align: center
}

    .activity-history-empty-state .description {
        margin-top: 20px;
        color: #7c98b6
    }

.activity-history-table td {
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis
}

    .activity-history-table td.col-activity-subject {
        max-width: 11rem
    }

    .activity-history-table td.col-activity-date, .activity-history-table td.col-activity-loggedby {
        max-width: 10rem
    }

.activity-quick-view-container {
    max-height: 400px;
    overflow-y: auto
}

    .activity-quick-view-container .content-section p {
        margin-bottom: 0
    }

.assignment-history-company-change > div {
    display: block !important
}

.ding-step-complete {
    padding-top: 25px
}

    .ding-step-complete .success {
        text-align: center
    }

        .ding-step-complete .success h1 {
            padding-top: 35px
        }

.ding-form-control .private-help-icon {
    width: 100%
}

    .ding-form-control .private-help-icon span {
        float: right
    }

.customer-summary .underlined {
    border-bottom: 1px solid #ccc
}

.customer-summary .ding-header-column1 {
    padding-right: 10%
}

.customer-summary .progress {
    display: flex;
    justify-content: flex-end
}

.customer-summary .deal-stage {
    position: relative;
    top: 5px
}

.ding-modal-steps {
    margin: -15px -115px
}

.ding-modal-steps-no-email {
    margin: 0 -225px
}

.ding-modal-properties-section {
    padding-top: 35px;
    padding-bottom: 10px
}

.ding-modal-show-all-properties-switch {
    padding-left: 27px
}

.ding-modal-step-divider {
    margin-left: -40px;
    min-width: 780px
}

.ding-step-email .draft-extend-controls button:not(:first-child):not(.link-plugin-icon), .read-only-editor .draft-extend-controls {
    display: none
}

.read-only-editor .rich-text-editor .draft-extend-editor .DraftEditor-root {
    max-height: fit-content
}

.related-contacts__divider {
    margin-top: 0
}

.related-contact-badge__property {
    margin-top: -4px
}

.additional-properties__label {
    margin-top: 5px
}

.additional-properties__list-item {
    border-top: 1px dashed #cbd6e2;
    border-bottom: none
}

    .additional-properties__list-item:first-child {
        border-top-color: transparent
    }

.customer-summary-edit-properties {
    margin: 0 0 12px
}

    .customer-summary-edit-properties a {
        float: right
    }

.customer-summary-property {
    padding: 20px
}

    .customer-summary-property p {
        margin-bottom: 3px
    }

.customer-summary-property-avatar {
    margin-top: 5px
}

.select-meetings-user-confirm {
    margin-left: 0
}

.book-meeting-component {
    margin-bottom: 20px
}

.domain-control-modal-content {
    margin: -30px -40px -10px
}

.domain-control-assignment-subtext {
    display: block;
    line-height: 24px
}

.historicalUsageCard iframe {
    width: 100%;
    height: 500px;
    margin: 0;
    padding: 0;
    border: 0
}

.subscriptionsCard h5 {
    margin-bottom: 0
}

.subscriptionsCard .subscriptions-group:first-child {
    margin-bottom: 1.5rem
}

.subscriptionsCard .subscriptionsEmpty {
    text-align: center
}

    .subscriptionsCard .subscriptionsEmpty img {
        width: 200px
    }

    .subscriptionsCard .subscriptionsEmpty p {
        margin-top: 10px
    }

.subscriptionsCard .subscriptions-table tbody td, .subscriptionsCard .subscriptions-table thead th {
    padding-left: .5rem;
    padding-right: .5rem
}

.subscriptionsCard .subscriptions-table .subscription-column {
    min-width: 135px
}

.subscriptionsCard .subscriptions-table .discount-column, .subscriptionsCard .subscriptions-table .mrr-column {
    min-width: 90px
}

.subscriptionsCard .subscriptions-table .date-column {
    min-width: 115px
}

.subscriptionsCard .subscriptions-table .private-help-icon__icon {
    margin-left: 0
}

.partner-collab-request--container {
    margin-bottom: 20px
}

.partner-collab-request--content {
    padding: 12px 16px
}

.partner-collab-request--create-button {
    margin-top: 16px;
    margin-bottom: 16px
}

.partner-collab-request--modal-difm {
    margin-top: 10px;
    margin-bottom: -10px
}

.partner-collab--approvals-iframe, .partner-collab--user-details-table {
    margin-top: 30px
}

.contractChangeMrrInfoCard h5 {
    margin-bottom: 0
}

.contractChangeMrrInfoCard .private-well {
    grid-template-columns: repeat(auto-fit,minmax(170px,1fr))
}

.contractChangeMrrInfoCard .table-column-title, .contractChangeMrrInfoCard .table-row-title {
    font-weight: 600
}

.hub-summary-row-section {
    margin-right: 3%;
    margin-bottom: 12px
}

    .hub-summary-row-section:last-child {
        margin-right: 0
    }



.change-plugin-just-updated, .change-plugin-just-updated a {
    transition: color .75s ease-in
}

.image-plugin-component {
    display: block;
    margin: 0 auto;
    padding: 0;
    max-width: 750px;
    max-height: 300px
}

    .image-plugin-component.selected {
        border: 2px solid #00a4bd
    }

.embed-component {
    text-align: center
}

    .embed-component .embed-content.active {
        outline: 2px solid #00a4bd;
        margin: auto
    }

    .embed-component iframe {
        border: 0;
        display: block;
        margin: 0 auto;
        padding: 0
    }

.highlighted-by-conversation {
    background-color: #7fd1de !important
}

.video-component {
    height: 360px;
    width: 640px;
    position: relative;
    margin: auto;
    background-color: #f5f8fa;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif
}

    .video-component.active iframe, .video-component.active video {
        outline: 2px solid #00a4bd
    }

    .video-component iframe {
        border: 0;
        display: block;
        margin: 0 auto;
        padding: 0
    }

    .video-component .video-not-available {
        position: relative;
        width: 100%;
        height: 100%
    }

        .video-component .video-not-available .info-wrapper {
            position: absolute;
            height: 100px;
            width: 200px;
            margin: auto;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0
        }

        .video-component .video-not-available .missing-icon {
            position: absolute;
            width: 48px;
            height: 76px;
            right: 0;
            left: 0;
            top: 0;
            margin: auto
        }

        .video-component .video-not-available i18n-string {
            position: absolute;
            bottom: 0;
            width: 100%;
            text-align: center
        }

.playbooks-modal-body figure .attribution {
    display: flex;
    justify-content: center
}

.m-all-auto {
    margin: auto !important
}

.m-x-auto {
    margin-left: auto !important;
    margin-right: auto !important
}

.m-y-auto {
    margin-top: auto !important;
    margin-bottom: auto !important
}

.m-left-auto {
    margin-left: auto !important
}

.m-right-auto {
    margin-right: auto !important
}

.m-top-auto {
    margin-top: auto !important
}

.m-bottom-auto {
    margin-bottom: auto !important
}

.m-all-0 {
    margin: 0 !important
}

.m-x-0 {
    margin-left: 0 !important;
    margin-right: 0 !important
}

.m-y-0 {
    margin-top: 0 !important;
    margin-bottom: 0 !important
}

.m-auto-x-0 {
    margin: auto 0 !important
}

.m-auto-y-0 {
    margin: 0 auto !important
}

.m-top-0 {
    margin-top: 0 !important
}

.m-right-0 {
    margin-right: 0 !important
}

.m-bottom-0 {
    margin-bottom: 0 !important
}

.m-left-0 {
    margin-left: 0 !important
}

.m-all-1 {
    margin: 4px !important
}

.m-x-1 {
    margin-left: 4px !important;
    margin-right: 4px !important
}

.m-y-1 {
    margin-top: 4px !important;
    margin-bottom: 4px !important
}

.m-auto-x-1 {
    margin: auto 4px !important
}

.m-auto-y-1 {
    margin: 4px auto !important
}

.m-top-1 {
    margin-top: 4px !important
}

.m-right-1 {
    margin-right: 4px !important
}

.m-bottom-1 {
    margin-bottom: 4px !important
}

.m-left-1 {
    margin-left: 4px !important
}

.m-all-2 {
    margin: 8px !important
}

.m-x-2 {
    margin-left: 8px !important;
    margin-right: 8px !important
}

.m-y-2 {
    margin-top: 8px !important;
    margin-bottom: 8px !important
}

.m-auto-x-2 {
    margin: auto 8px !important
}

.m-auto-y-2 {
    margin: 8px auto !important
}

.m-top-2 {
    margin-top: 8px !important
}

.m-right-2 {
    margin-right: 8px !important
}

.m-bottom-2 {
    margin-bottom: 8px !important
}

.m-left-2 {
    margin-left: 8px !important
}

.m-all-3 {
    margin: 12px !important
}

.m-x-3 {
    margin-left: 12px !important;
    margin-right: 12px !important
}

.m-y-3 {
    margin-top: 12px !important;
    margin-bottom: 12px !important
}

.m-auto-x-3 {
    margin: auto 12px !important
}

.m-auto-y-3 {
    margin: 12px auto !important
}

.m-top-3 {
    margin-top: 12px !important
}

.m-right-3 {
    margin-right: 12px !important
}

.m-bottom-3 {
    margin-bottom: 12px !important
}

.m-left-3 {
    margin-left: 12px !important
}

.m-all-4 {
    margin: 16px !important
}

.m-x-4 {
    margin-left: 16px !important;
    margin-right: 16px !important
}

.m-y-4 {
    margin-top: 16px !important;
    margin-bottom: 16px !important
}

.m-auto-x-4 {
    margin: auto 16px !important
}

.m-auto-y-4 {
    margin: 16px auto !important
}

.m-top-4 {
    margin-top: 16px !important
}

.m-right-4 {
    margin-right: 16px !important
}

.m-bottom-4 {
    margin-bottom: 16px !important
}

.m-left-4 {
    margin-left: 16px !important
}

.m-all-5 {
    margin: 20px !important
}

.m-x-5 {
    margin-left: 20px !important;
    margin-right: 20px !important
}

.m-y-5 {
    margin-top: 20px !important;
    margin-bottom: 20px !important
}

.m-auto-x-5 {
    margin: auto 20px !important
}

.m-auto-y-5 {
    margin: 20px auto !important
}

.m-top-5 {
    margin-top: 20px !important
}

.m-right-5 {
    margin-right: 20px !important
}

.m-bottom-5 {
    margin-bottom: 20px !important
}

.m-left-5 {
    margin-left: 20px !important
}

.m-all-6 {
    margin: 24px !important
}

.m-x-6 {
    margin-left: 24px !important;
    margin-right: 24px !important
}

.m-y-6 {
    margin-top: 24px !important;
    margin-bottom: 24px !important
}

.m-auto-x-6 {
    margin: auto 24px !important
}

.m-auto-y-6 {
    margin: 24px auto !important
}

.m-top-6 {
    margin-top: 24px !important
}

.m-right-6 {
    margin-right: 24px !important
}

.m-bottom-6 {
    margin-bottom: 24px !important
}

.m-left-6 {
    margin-left: 24px !important
}

.m-all-7 {
    margin: 28px !important
}

.m-x-7 {
    margin-left: 28px !important;
    margin-right: 28px !important
}

.m-y-7 {
    margin-top: 28px !important;
    margin-bottom: 28px !important
}

.m-auto-x-7 {
    margin: auto 28px !important
}

.m-auto-y-7 {
    margin: 28px auto !important
}

.m-top-7 {
    margin-top: 28px !important
}

.m-right-7 {
    margin-right: 28px !important
}

.m-bottom-7 {
    margin-bottom: 28px !important
}

.m-left-7 {
    margin-left: 28px !important
}

.m-all-8 {
    margin: 32px !important
}

.m-x-8 {
    margin-left: 32px !important;
    margin-right: 32px !important
}

.m-y-8 {
    margin-top: 32px !important;
    margin-bottom: 32px !important
}

.m-auto-x-8 {
    margin: auto 32px !important
}

.m-auto-y-8 {
    margin: 32px auto !important
}

.m-top-8 {
    margin-top: 32px !important
}

.m-right-8 {
    margin-right: 32px !important
}

.m-bottom-8 {
    margin-bottom: 32px !important
}

.m-left-8 {
    margin-left: 32px !important
}

.m-all-9 {
    margin: 36px !important
}

.m-x-9 {
    margin-left: 36px !important;
    margin-right: 36px !important
}

.m-y-9 {
    margin-top: 36px !important;
    margin-bottom: 36px !important
}

.m-auto-x-9 {
    margin: auto 36px !important
}

.m-auto-y-9 {
    margin: 36px auto !important
}

.m-top-9 {
    margin-top: 36px !important
}

.m-right-9 {
    margin-right: 36px !important
}

.m-bottom-9 {
    margin-bottom: 36px !important
}

.m-left-9 {
    margin-left: 36px !important
}

.m-all-10 {
    margin: 40px !important
}

.m-x-10 {
    margin-left: 40px !important;
    margin-right: 40px !important
}

.m-y-10 {
    margin-top: 40px !important;
    margin-bottom: 40px !important
}

.m-auto-x-10 {
    margin: auto 40px !important
}

.m-auto-y-10 {
    margin: 40px auto !important
}

.m-top-10 {
    margin-top: 40px !important
}

.m-right-10 {
    margin-right: 40px !important
}

.m-bottom-10 {
    margin-bottom: 40px !important
}

.m-left-10 {
    margin-left: 40px !important
}

.m-all-11 {
    margin: 44px !important
}

.m-x-11 {
    margin-left: 44px !important;
    margin-right: 44px !important
}

.m-y-11 {
    margin-top: 44px !important;
    margin-bottom: 44px !important
}

.m-auto-x-11 {
    margin: auto 44px !important
}

.m-auto-y-11 {
    margin: 44px auto !important
}

.m-top-11 {
    margin-top: 44px !important
}

.m-right-11 {
    margin-right: 44px !important
}

.m-bottom-11 {
    margin-bottom: 44px !important
}

.m-left-11 {
    margin-left: 44px !important
}

.m-all-12 {
    margin: 48px !important
}

.m-x-12 {
    margin-left: 48px !important;
    margin-right: 48px !important
}

.m-y-12 {
    margin-top: 48px !important;
    margin-bottom: 48px !important
}

.m-auto-x-12 {
    margin: auto 48px !important
}

.m-auto-y-12 {
    margin: 48px auto !important
}

.m-top-12 {
    margin-top: 48px !important
}

.m-right-12 {
    margin-right: 48px !important
}

.m-bottom-12 {
    margin-bottom: 48px !important
}

.m-left-12 {
    margin-left: 48px !important
}

.m-all-13 {
    margin: 52px !important
}

.m-x-13 {
    margin-left: 52px !important;
    margin-right: 52px !important
}

.m-y-13 {
    margin-top: 52px !important;
    margin-bottom: 52px !important
}

.m-auto-x-13 {
    margin: auto 52px !important
}

.m-auto-y-13 {
    margin: 52px auto !important
}

.m-top-13 {
    margin-top: 52px !important
}

.m-right-13 {
    margin-right: 52px !important
}

.m-bottom-13 {
    margin-bottom: 52px !important
}

.m-left-13 {
    margin-left: 52px !important
}

.m-all-14 {
    margin: 56px !important
}

.m-x-14 {
    margin-left: 56px !important;
    margin-right: 56px !important
}

.m-y-14 {
    margin-top: 56px !important;
    margin-bottom: 56px !important
}

.m-auto-x-14 {
    margin: auto 56px !important
}

.m-auto-y-14 {
    margin: 56px auto !important
}

.m-top-14 {
    margin-top: 56px !important
}

.m-right-14 {
    margin-right: 56px !important
}

.m-bottom-14 {
    margin-bottom: 56px !important
}

.m-left-14 {
    margin-left: 56px !important
}

.m-all-15 {
    margin: 60px !important
}

.m-x-15 {
    margin-left: 60px !important;
    margin-right: 60px !important
}

.m-y-15 {
    margin-top: 60px !important;
    margin-bottom: 60px !important
}

.m-auto-x-15 {
    margin: auto 60px !important
}

.m-auto-y-15 {
    margin: 60px auto !important
}

.m-top-15 {
    margin-top: 60px !important
}

.m-right-15 {
    margin-right: 60px !important
}

.m-bottom-15 {
    margin-bottom: 60px !important
}

.m-left-15 {
    margin-left: 60px !important
}

.p-all-0 {
    padding: 0 !important
}

.p-x-0 {
    padding-left: 0 !important;
    padding-right: 0 !important
}

.p-y-0 {
    padding-bottom: 0 !important
}

.p-top-0, .p-y-0 {
    padding-top: 0 !important
}

.p-right-0 {
    padding-right: 0 !important
}

.p-bottom-0 {
    padding-bottom: 0 !important
}

.p-left-0 {
    padding-left: 0 !important
}

.p-all-1 {
    padding: 4px !important
}

.p-x-1 {
    padding-left: 4px !important;
    padding-right: 4px !important
}

.p-y-1 {
    padding-bottom: 4px !important
}

.p-top-1, .p-y-1 {
    padding-top: 4px !important
}

.p-right-1 {
    padding-right: 4px !important
}

.p-bottom-1 {
    padding-bottom: 4px !important
}

.p-left-1 {
    padding-left: 4px !important
}

.p-all-2 {
    padding: 8px !important
}

.p-x-2 {
    padding-left: 8px !important;
    padding-right: 8px !important
}

.p-y-2 {
    padding-bottom: 8px !important
}

.p-top-2, .p-y-2 {
    padding-top: 8px !important
}

.p-right-2 {
    padding-right: 8px !important
}

.p-bottom-2 {
    padding-bottom: 8px !important
}

.p-left-2 {
    padding-left: 8px !important
}

.p-all-3 {
    padding: 12px !important
}

.p-x-3 {
    padding-left: 12px !important;
    padding-right: 12px !important
}

.p-y-3 {
    padding-bottom: 12px !important
}

.p-top-3, .p-y-3 {
    padding-top: 12px !important
}

.p-right-3 {
    padding-right: 12px !important
}

.p-bottom-3 {
    padding-bottom: 12px !important
}

.p-left-3 {
    padding-left: 12px !important
}

.p-all-4 {
    padding: 16px !important
}

.p-x-4 {
    padding-left: 16px !important;
    padding-right: 16px !important
}

.p-y-4 {
    padding-bottom: 16px !important
}

.p-top-4, .p-y-4 {
    padding-top: 16px !important
}

.p-right-4 {
    padding-right: 16px !important
}

.p-bottom-4 {
    padding-bottom: 16px !important
}

.p-left-4 {
    padding-left: 16px !important
}

.p-all-5 {
    padding: 20px !important
}

.p-x-5 {
    padding-left: 20px !important;
    padding-right: 20px !important
}

.p-y-5 {
    padding-bottom: 20px !important
}

.p-top-5, .p-y-5 {
    padding-top: 20px !important
}

.p-right-5 {
    padding-right: 20px !important
}

.p-bottom-5 {
    padding-bottom: 20px !important
}

.p-left-5 {
    padding-left: 20px !important
}

.p-all-6 {
    padding: 24px !important
}

.p-x-6 {
    padding-left: 24px !important;
    padding-right: 24px !important
}

.p-y-6 {
    padding-bottom: 24px !important
}

.p-top-6, .p-y-6 {
    padding-top: 24px !important
}

.p-right-6 {
    padding-right: 24px !important
}

.p-bottom-6 {
    padding-bottom: 24px !important
}

.p-left-6 {
    padding-left: 24px !important
}

.p-all-7 {
    padding: 28px !important
}

.p-x-7 {
    padding-left: 28px !important;
    padding-right: 28px !important
}

.p-y-7 {
    padding-bottom: 28px !important
}

.p-top-7, .p-y-7 {
    padding-top: 28px !important
}

.p-right-7 {
    padding-right: 28px !important
}

.p-bottom-7 {
    padding-bottom: 28px !important
}

.p-left-7 {
    padding-left: 28px !important
}

.p-all-8 {
    padding: 32px !important
}

.p-x-8 {
    padding-left: 32px !important;
    padding-right: 32px !important
}

.p-y-8 {
    padding-bottom: 32px !important
}

.p-top-8, .p-y-8 {
    padding-top: 32px !important
}

.p-right-8 {
    padding-right: 32px !important
}

.p-bottom-8 {
    padding-bottom: 32px !important
}

.p-left-8 {
    padding-left: 32px !important
}

.p-all-9 {
    padding: 36px !important
}

.p-x-9 {
    padding-left: 36px !important;
    padding-right: 36px !important
}

.p-y-9 {
    padding-bottom: 36px !important
}

.p-top-9, .p-y-9 {
    padding-top: 36px !important
}

.p-right-9 {
    padding-right: 36px !important
}

.p-bottom-9 {
    padding-bottom: 36px !important
}

.p-left-9 {
    padding-left: 36px !important
}

.p-all-10 {
    padding: 40px !important
}

.p-x-10 {
    padding-left: 40px !important;
    padding-right: 40px !important
}

.p-y-10 {
    padding-bottom: 40px !important
}

.p-top-10, .p-y-10 {
    padding-top: 40px !important
}

.p-right-10 {
    padding-right: 40px !important
}

.p-bottom-10 {
    padding-bottom: 40px !important
}

.p-left-10 {
    padding-left: 40px !important
}

.p-all-11 {
    padding: 44px !important
}

.p-x-11 {
    padding-left: 44px !important;
    padding-right: 44px !important
}

.p-y-11 {
    padding-bottom: 44px !important
}

.p-top-11, .p-y-11 {
    padding-top: 44px !important
}

.p-right-11 {
    padding-right: 44px !important
}

.p-bottom-11 {
    padding-bottom: 44px !important
}

.p-left-11 {
    padding-left: 44px !important
}

.p-all-12 {
    padding: 48px !important
}

.p-x-12 {
    padding-left: 48px !important;
    padding-right: 48px !important
}

.p-y-12 {
    padding-bottom: 48px !important
}

.p-top-12, .p-y-12 {
    padding-top: 48px !important
}

.p-right-12 {
    padding-right: 48px !important
}

.p-bottom-12 {
    padding-bottom: 48px !important
}

.p-left-12 {
    padding-left: 48px !important
}

.p-all-13 {
    padding: 52px !important
}

.p-x-13 {
    padding-left: 52px !important;
    padding-right: 52px !important
}

.p-y-13 {
    padding-bottom: 52px !important
}

.p-top-13, .p-y-13 {
    padding-top: 52px !important
}

.p-right-13 {
    padding-right: 52px !important
}

.p-bottom-13 {
    padding-bottom: 52px !important
}

.p-left-13 {
    padding-left: 52px !important
}

.p-all-14 {
    padding: 56px !important
}

.p-x-14 {
    padding-left: 56px !important;
    padding-right: 56px !important
}

.p-y-14 {
    padding-bottom: 56px !important
}

.p-top-14, .p-y-14 {
    padding-top: 56px !important
}

.p-right-14 {
    padding-right: 56px !important
}

.p-bottom-14 {
    padding-bottom: 56px !important
}

.p-left-14 {
    padding-left: 56px !important
}

.p-all-15 {
    padding: 60px !important
}

.p-x-15 {
    padding-left: 60px !important;
    padding-right: 60px !important
}

.p-y-15 {
    padding-bottom: 60px !important
}

.p-top-15, .p-y-15 {
    padding-top: 60px !important
}

.p-right-15 {
    padding-right: 60px !important
}

.p-bottom-15 {
    padding-bottom: 60px !important
}

.p-left-15 {
    padding-left: 60px !important
}

.playbooks-modal-body {
    font-size: 14px;
    line-height: 1.6
}

    .playbooks-modal-body a {
        cursor: pointer;
        text-decoration: underline
    }

    .playbooks-modal-body h2 {
        font-size: 24px
    }

    .playbooks-modal-body h2, .playbooks-modal-body h3 {
        line-height: 1.6;
        margin-top: 2rem;
        margin-bottom: .7rem
    }

    .playbooks-modal-body h3 {
        font-size: 22px
    }

    .playbooks-modal-body figure {
        margin: 1rem 0
    }

        .playbooks-modal-body figure .attribution {
            font-size: .8rem
        }

            .playbooks-modal-body figure .attribution.selected span {
                background-color: #f2f5f8
            }

            .playbooks-modal-body figure .attribution > span {
                max-width: 100%;
                padding: 0 12px
            }

                .playbooks-modal-body figure .attribution > span > span {
                    display: inline-block;
                    margin-left: 12px;
                    width: 32px
                }

                    .playbooks-modal-body figure .attribution > span > span i {
                        margin: 0 2px
                    }

        .playbooks-modal-body figure img {
            display: block;
            margin: 0 auto;
            padding: 0;
            max-width: 600px;
            max-height: 300px
        }

            .playbooks-modal-body figure img.selected {
                border: 2px solid #00a4bd
            }

    .playbooks-modal-body blockquote {
        line-height: 1.6;
        padding: 1rem
    }

        .playbooks-modal-body blockquote:before {
            position: relative;
            right: 1.5rem;
            font-size: 1.5rem;
            color: #cbd6e2;
            display: table-cell;
            vertical-align: middle
        }

        .playbooks-modal-body blockquote.selected {
            border: 2px solid #00a4bd
        }

        .playbooks-modal-body blockquote div {
            word-wrap: break-word;
            display: table-cell;
            padding-left: 12px;
            border-left: 4px solid #eaf0f6
        }

    .playbooks-modal-body li {
        line-height: 1.6
    }

    .playbooks-modal-body blockquote[data-block=true], .playbooks-modal-body div[data-block=true] {
        margin-bottom: 1.2rem
    }

.playbooks-modal-footer-buttons .save-status {
    display: flex;
    align-items: center;
    height: 30px;
    font-size: 12px
}

.sales-modal {
    flex-direction: column;
    width: 100%;
    height: 100vh;
    overflow-x: auto
}

.sales-modal, .sales-modal-content {
    display: flex;
    align-self: stretch;
    background: #fff
}

.sales-modal-content {
    flex-direction: column;
    flex: 1 1 100%;
    margin-top: 5px;
    overflow-y: auto
}

.sales-modal-footer {
    display: flex;
    flex: 1 0 57px;
    justify-content: space-between;
    border-top: 1px solid #dfe3eb;
    background: #f5f8fa
}

body.iframe {
    background: #fff
}

.sequence-enroll-full-page, .sequence-enroll-modal {
    height: 100%
}

    .sequence-enroll-full-page .task-editor .draft-extend-editor, .sequence-enroll-full-page .template-editor .draft-extend-editor, .sequence-enroll-modal .task-editor .draft-extend-editor, .sequence-enroll-modal .template-editor .draft-extend-editor {
        font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Oxygen-Sans,Ubuntu,Cantarell,Helvetica Neue,sans-serif;
        color: #000;
        font-size: 14px;
        font-weight: 400
    }

    .sequence-enroll-full-page .sequence-enroll-modal-send-times, .sequence-enroll-modal .sequence-enroll-modal-send-times {
        flex-grow: 0
    }

    .sequence-enroll-full-page .modal-body, .sequence-enroll-modal .modal-body {
        flex-basis: 100%;
        background-color: #f5f8fa;
        overflow-y: auto
    }

        .sequence-enroll-full-page .modal-body .timeline, .sequence-enroll-modal .modal-body .timeline {
            padding-left: 20px;
            padding-top: 20px;
            padding-bottom: 20px;
            height: 100%;
            overflow-y: auto;
            width: 270px
        }

        .sequence-enroll-full-page .modal-body .enroll-modal-content-container, .sequence-enroll-modal .modal-body .enroll-modal-content-container {
            padding: 20px;
            height: 100%;
            overflow-y: auto;
            width: 100%
        }

        .sequence-enroll-full-page .modal-body .bulk-enroll-subtitle, .sequence-enroll-modal .modal-body .bulk-enroll-subtitle {
            left: 400px;
            position: fixed;
            right: 0;
            top: 68px;
            z-index: 1201
        }

        .sequence-enroll-full-page .modal-body .bulk-enroll-fixed-subtitle-height, .sequence-enroll-modal .modal-body .bulk-enroll-fixed-subtitle-height {
            height: 65px
        }

        .sequence-enroll-full-page .modal-body .bulk-enroll-modal-content-container, .sequence-enroll-modal .modal-body .bulk-enroll-modal-content-container {
            height: 100%;
            width: 100%;
            overflow-y: auto;
            position: relative
        }

            .sequence-enroll-full-page .modal-body .bulk-enroll-modal-content-container .bulk-enroll-modal-selected-enrollment-buttons, .sequence-enroll-modal .modal-body .bulk-enroll-modal-content-container .bulk-enroll-modal-selected-enrollment-buttons {
                padding-bottom: 12px;
                width: 100%;
                font-size: 16px;
                max-width: 960px;
                justify-content: space-between;
                align-items: center;
                flex-direction: row;
                flex-wrap: wrap
            }

            .sequence-enroll-full-page .modal-body .bulk-enroll-modal-content-container .bulk-enroll-edit-warning, .sequence-enroll-modal .modal-body .bulk-enroll-modal-content-container .bulk-enroll-edit-warning {
                font-size: 16px;
                max-width: 960px;
                width: 100%;
                padding-bottom: 12px
            }

        .sequence-enroll-full-page .modal-body .step-editor-container, .sequence-enroll-modal .modal-body .step-editor-container {
            max-width: 960px;
            width: 100%
        }

            .sequence-enroll-full-page .modal-body .step-editor-container label, .sequence-enroll-modal .modal-body .step-editor-container label {
                padding-top: 0
            }

.sequence-enroll-modal {
    z-index: 1
}

    .sequence-enroll-modal .signature-component iframe {
        transition: background-color .2s linear
    }

        .sequence-enroll-modal .signature-component iframe:hover {
            background-color: #f5f8fa
        }

.sequence-enroll-full-page {
    width: 100%;
    top: 0;
    left: 0;
    background: #f5f8fa
}

    .sequence-enroll-full-page .sequence-enroll-modal-header {
        flex-grow: 0;
        background: #fff
    }

.enrollment-cannot-proceed, .enrollment-error, .enrollment-progress {
    display: flex;
    flex-direction: column;
    justify-content: center;
    height: 569px
}

.enrollment-progress {
    align-items: center
}

.enrollment-error p {
    width: 400px;
    margin: 8px auto
}

.inbox-connect p {
    width: 450px
}

.inbox-connect-buttons {
    display: flex;
    flex-direction: column
}

.sequence-step-start-date-type-selection {
    max-width: 280px;
    width: 280px
}

.sequence-enroll-modal-footer {
    display: flex;
    align-items: center;
    padding: 32px;
    width: 100%;
    height: 54px;
    background: #fff;
    border-top: 1px solid #cbd6e2
}

.sequence-enroll-modal-header {
    border-bottom: 1px solid #cbd6e2
}

.sequences-enroll-modal-loading {
    height: 100%
}

.delay-selector-email-action {
    font-weight: 500;
    font-size: 16px
}

.delay-selector-dropdowns__option {
    max-width: 225px;
    width: 225px
}

.sequence-enroll-footer-button {
    flex-shrink: 0
}

.sequence-enroll-footer-send-limit-alert {
    flex-shrink: 0;
    font-size: 14px;
    padding-left: 12px
}

.sequence-enroll-footer-email-limit-information {
    flex-shrink: 0
}

.sequence-enroll-footer-email {
    min-width: 0;
    align-items: center
}

.sequence-enroll-footer-recipient {
    min-width: 0;
    margin-right: 16px
}

.draft-template-editor-body .draft-extend-editor {
    padding-bottom: 0 !important;
    border-bottom: none !important
}

.sequence-send-limit-error-message {
    color: #f2545b;
    padding-right: 48px;
    padding-bottom: 8px;
    display: flex
}

    .sequence-send-limit-error-message a {
        color: #f2545b;
        text-decoration: underline !important
    }

.sequence-send-limit-warning-message {
    padding-right: 48px;
    padding-bottom: 8px;
    display: flex
}

    .sequence-send-limit-warning-message a {
        text-decoration: underline !important
    }

.bulk-enroll-contact-sidebar {
    padding-top: 20px;
    padding-left: 24px;
    padding-right: 24px;
    background: #fff;
    border-right: 1px solid #cbd6e2
}

    .bulk-enroll-contact-sidebar .contact-sidebar-personalize-title {
        font-size: 16px
    }

    .bulk-enroll-contact-sidebar .contact-sidebar-button {
        font-size: 14px;
        text-align: left;
        min-height: 60px;
        align-items: center
    }

    .bulk-enroll-contact-sidebar .contact-sidebar-primary-sequence-button {
        height: 40px;
        font-size: 14px;
        text-align: left
    }

.ineligible-contacts-page, .ineligible-contacts-page .modal-body {
    background-color: #fff
}

    .ineligible-contacts-page .modal-body .contact-table {
        max-width: 1200px;
        width: auto
    }

.flex-order-1 {
    order: 1
}

.gradient-thunderdome-calypso {
    background-image: linear-gradient(90deg,#6a78d1,#00a4bd 85%);
    color: #fff
}



.search-result-date {
    flex-shrink: 0
}

.sales-content-search {
    position: relative;
    flex-basis: 100%
}

.sales-content-search-results {
    position: absolute;
    z-index: 100;
    top: 48px;
    left: 0stati;
    width: 100%;
    max-height: 500px;
    background: #fff;
    box-shadow: 0 1px 24px 0 rgba(0,0,0,.06);
    border: 1px solid #cbd6e2;
    border-radius: 4px
}

.header-search {
    position: relative;
    flex-basis: 100%;
    max-width: 500px;
    min-width: 400px
}

.header-search-results {
    position: absolute;
    z-index: 100;
    top: 48px;
    left: 0;
    width: 100%;
    max-height: 500px;
    background: #fff;
    box-shadow: 0 1px 24px 0 rgba(0,0,0,.06);
    border: 1px solid #cbd6e2;
    border-radius: 4px
}

.header-tabs-container {
    border-bottom: 1px solid #cbd6e2
}

.header-tabs {
    border-bottom: none
}

.table-row.nested td {
    border: none
}

.table-row-preview {
    position: relative;
    width: inherit
}

    .table-row-preview .table {
        height: 40px;
        width: inherit;
        border-top: 0
    }

    .table-row-preview td {
        width: 160px
    }

        .table-row-preview td:nth-child(2) {
            width: auto
        }

.table-row-cell-hover {
    position: relative
}

.table-row-cell-hover-buttons {
    position: absolute;
    right: 0
}

.move-data-item-modal-folder-nav {
    width: 100% !important;
    max-height: 300px;
    overflow-y: auto
}

.table-filter-section, .table-right-of-filter {
    width: 100% !important
}

.table-navigation.table-navigation-breadcrumbs {
    margin-bottom: 40px
}

.table-navigation.table-navigation-modal {
    padding-left: 24px;
    padding-right: 24px;
    margin-bottom: 28px
}

.sales-content-index-table-container {
    position: relative;
    width: 100%
}

.sales-content-table-modal tbody {
    border-bottom: 1px solid #dfe3eb
}

.communicator .panel-is-activity, .communicator .panel-is-call, .communicator .panel-is-email, .communicator .panel-is-schedule, .communicator .panel-is-task {
    padding: 0
}

.communicator .panel-is-note {
    padding-left: 0;
    padding-right: 0;
    padding-bottom: 0
}

.communicator .panel-is-call {
    padding-top: 0
}

.communicator .panel-is-email .has--email-style-reset {
    font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Oxygen-Sans,Ubuntu,Cantarell,Helvetica Neue,sans-serif;
    color: #000;
    font-size: 14px;
    font-weight: 400
}

.communicator .panel-is-email .draft-extend-editor a {
    color: blue
}

.communicator .faux-draw-topborder, .communicator .faux-draw-topborder-wrapper {
    display: none
}

.communicator .draw-controls-container {
    border-top: 1px solid #eaf0f6;
    background: #f9fbfd;
    padding-top: 8px;
    padding-bottom: 8px;
    min-height: 60px;
    align-items: center;
    display: flex
}

.communicator .hidden {
    display: none
}

.selectRecipientSelect {
    flex-shrink: 0
}

.recipientSelect {
    flex-grow: 1;
    display: flex;
    flex-wrap: wrap
}

    .recipientSelect > span.private-tag {
        margin-right: 4px;
        margin-bottom: 4px;
        height: 24px
    }

        .recipientSelect > span.private-tag + span.private-tag {
            margin-left: 0
        }

    .recipientSelect .Select {
        margin-top: -8px;
        border-radius: 0
    }

        .recipientSelect .Select .Select-arrow-zone {
            display: none
        }

        .recipientSelect .Select .Select-control {
            border: none;
            background-color: transparent !important;
            box-shadow: none !important
        }

            .recipientSelect .Select .Select-control.is-focused, .recipientSelect .Select .Select-control.is-pseudo-focused, .recipientSelect .Select .Select-control.is-searchable {
                outline: none;
                box-shadow: none
            }

                .recipientSelect .Select .Select-control.is-focused:focus, .recipientSelect .Select .Select-control.is-pseudo-focused:focus, .recipientSelect .Select .Select-control.is-searchable:focus {
                    outline: none;
                    box-shadow: none;
                    border-radius: 0
                }

            .recipientSelect .Select .Select-control span {
                background-color: none
            }

.call-widget-container {
    margin-right: 5px;
    max-height: calc(100vh - 54px);
    overflow-y: auto;
    z-index: 1;
    box-shadow: 0 1px 24px 0 rgba(0,0,0,.08)
}

    .call-widget-container iframe {
        border-width: 0
    }

    .call-widget-container .is--module {
        margin-bottom: 0
    }

    .call-widget-container.two-column-layout {
        display: block;
        position: absolute;
        right: calc(50vw - 640px);
        bottom: 0
    }

    .call-widget-container.hidden {
        visibility: hidden
    }

.communicator-header {
    padding-right: 20px;
    padding-left: 8px;
    background-image: none !important;
    background-color: #516f90;
    color: #fff;
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
    display: flex;
    font-weight: 600;
    height: 50px;
    min-width: 200px
}

    .communicator-header .private-modal__header__inner {
        min-height: 0;
        height: 50px;
        align-items: center;
        padding: 0
    }

    .communicator-header .private-modal__control {
        top: 0 !important;
        margin-left: 8px
    }

    .communicator-header h5 {
        font-size: 1rem
    }

.editor-body.hovered .draft-extend .draft-extend-editor {
    border: 4px solid #00a4bd;
    padding: 0
}

@media screen and (max-width:1280px) {
    .call-widget-container.two-column-layout {
        right: 12px
    }
}

.video-conference-link-to-acct > p {
    margin: 0
}

.video-conference-list {
    max-width: 300px
}

.disabled-video-conference-option {
    color: #b0c1d4;
    white-space: pre-wrap;
    cursor: not-allowed
}

.rich-text-editor {
    position: relative
}

    .rich-text-editor .public-DraftEditorPlaceholder-root.placeholder {
        pointer-events: none;
        top: 0;
        left: 0;
        padding-top: 4px;
        padding-left: 24px
    }

#communicator-body-element {
    position: fixed
}

    #communicator-body-element .private-popover--default .content-popover-empty-state {
        padding: 0 !important
    }

.topbar-wrapper-iframe {
    height: 80px;
    width: 100%;
    opacity: 1
}

.crm-light-border-bottom {
    border-bottom: 1px solid #dfe3eb;
    width: 100%
}

.draw-controls-container, .private-slideout-drawer__content {
    padding-top: 0;
    padding-bottom: 0
}

.minimized-call-in-progress {
    cursor: pointer
}

.topbar-wrapper-iframe.topbar-blue {
    background-color: #425b76;
    color: #fff
}

.communicator-iframe, .topbar-wrapper-iframe.topbar-white {
    background-color: #fff
}

.communicator-iframe {
    min-height: 345px
}

.twilio-keypad .keypad-button {
    border-radius: 50%;
    height: 65px;
    width: 65px
}

    .twilio-keypad .keypad-button h1.button-number {
        line-height: 24px
    }

    .twilio-keypad .keypad-button:hover {
        background-color: #f2f5f8
    }

    .twilio-keypad .keypad-button:active {
        background-color: #00bda5;
        color: #fff
    }

.communicator-iframe-fullscreen > div {
    background-color: transparent
}

.call-widget-container--minimized {
    min-width: 300px
}

.communicator-iframe-fullscreen {
    height: 100%;
    width: 100%;
    position: fixed;
    left: 0;
    bottom: 0
}

    .communicator-iframe-fullscreen .call-widget-container {
        height: 100%;
        width: 100%;
        max-height: none
    }

        .communicator-iframe-fullscreen .call-widget-container > div {
            background-color: transparent
        }

    .communicator-iframe-fullscreen .communicator-iframe {
        width: 100% !important;
        height: 100% !important;
        background-color: transparent
    }

    .communicator-iframe-fullscreen .communicator-header {
        display: none
    }

    .communicator-iframe-fullscreen .call-widget-host, .communicator-iframe-fullscreen iframe {
        width: 100% !important;
        height: 100% !important
    }

    .communicator-iframe-fullscreen iframe {
        background-color: transparent
    }

    .communicator-iframe-fullscreen .communicator-body {
        width: 100% !important;
        height: 100% !important;
        max-height: none
    }

.uiFullScreenBackground .communicator-embed-app {
    display: none
}

.communicator-embed-app {
    height: 100%;
    width: 100%
}

    .communicator-embed-app .alert-bar {
        min-height: 40px;
        border: none
    }

        .communicator-embed-app .alert-bar .private-close__button {
            top: 14px
        }

        .communicator-embed-app .alert-bar .private-alert__body {
            margin-top: 0
        }

        .communicator-embed-app .alert-bar h2.private-alert__title {
            margin-right: 4px;
            margin-bottom: 0;
            font-size: 14px !important
        }

        .communicator-embed-app .alert-bar .close {
            top: 12px;
            width: 10px
        }

    .communicator-embed-app .recording-icon-wrapper {
        min-width: 32px
    }

        .communicator-embed-app .recording-icon-wrapper .icon-recording {
            position: relative;
            border-radius: 50%;
            border: 1px solid #fff;
            background: transparent;
            height: 32px;
            width: 32px
        }

            .communicator-embed-app .recording-icon-wrapper .icon-recording div {
                position: absolute;
                top: 50%;
                left: 50%;
                border: 1px solid #fff;
                background-color: #fff;
                transform: translateY(-8px) translateX(-8px);
                width: 16px;
                height: 16px;
                border-radius: 50%;
                transition-duration: .25s;
                transition-property: border-radius,background,margin-top,height,width;
                transition-timing-function: ease
            }

            .communicator-embed-app .recording-icon-wrapper .icon-recording.recording div {
                border-radius: 20%;
                background-color: #f2545b
            }

            .communicator-embed-app .recording-icon-wrapper .icon-recording:hover div {
                background-color: #f2545b
            }

    .communicator-embed-app .floating-communicator-sticky-footer {
        position: sticky;
        bottom: 0;
        z-index: 2;
        padding-top: 16px;
        padding-bottom: 16px;
        border-top: 1px solid #dfe3eb
    }

    .communicator-embed-app .rich-text-editor .DraftEditor-root.DraftEditor-root {
        height: 260px
    }

    .communicator-embed-app.hide-communicator {
        display: none
    }

    .communicator-embed-app .iframe-loading {
        height: 100%;
        width: 100%;
        background-color: #fff
    }

    .communicator-embed-app .floating-panel-is-call {
        width: 100%
    }

    .communicator-embed-app .communicator--floating .floating-communicator-body {
        width: 100%;
        height: 100%;
        max-height: none
    }

    .communicator-embed-app .twilio-call-actions .start-call-dropdown-button {
        background-color: #00bda5;
        border-color: #00bda5;
        border-left: 1px solid #fff
    }

        .communicator-embed-app .twilio-call-actions .start-call-dropdown-button:focus {
            border-color: rgba(0,189,165,.5);
            box-shadow: none
        }

    .communicator-embed-app .topbar-wrapper-iframe > div {
        width: 100%
    }

    .communicator-embed-app .twilio-status-topbar {
        color: #fff;
        height: 80px;
        position: inherit
    }

        .communicator-embed-app .twilio-status-topbar .hang-up-wrapper {
            min-height: 80px
        }

        .communicator-embed-app .twilio-status-topbar .hang-up {
            line-height: 9px;
            vertical-align: middle;
            border-radius: 50%;
            border: 0 solid #7fded2;
            transition: border-width .2s linear
        }

            .communicator-embed-app .twilio-status-topbar .hang-up.bordered, .communicator-embed-app .twilio-status-topbar .hang-up:hover {
                border: 6px solid #7fded2
            }

            .communicator-embed-app .twilio-status-topbar .hang-up .cross-icon {
                transform: translateY(2px) transateX(-1px)
            }

        .communicator-embed-app .twilio-status-topbar .circle-wrapper {
            position: absolute
        }

            .communicator-embed-app .twilio-status-topbar .circle-wrapper .svg-circle {
                stroke-dasharray: 1000;
                stroke-dashoffset: 1000;
                animation: spin 1s linear forwards;
                animation-iteration-count: 1;
                stroke: #fff;
                fill: none;
                stroke-width: 2
            }

@keyframes spin {
    0% {
        stroke-dashoffset: 1000
    }

    to {
        stroke-dashoffset: 0
    }
}

.communicator-embed-app .twilio-status-topbar .status-bar-icons {
    max-height: 54px
}

    .communicator-embed-app .twilio-status-topbar .status-bar-icons.min-width-auto {
        min-width: auto
    }

    .communicator-embed-app .twilio-status-topbar .status-bar-icons .status-button {
        min-width: 54px
    }

.communicator--floating {
    display: flex;
    width: 600px;
    max-height: 80vh;
    margin-bottom: 0 !important
}

@media (min-width:1440px) {
    .communicator--floating {
        width: 580px
    }
}

@media (min-width:1920px) {
    .communicator--floating {
        width: 650px
    }
}

@media (max-height:900px) {
    .communicator--floating {
        max-height: 80vh
    }
}

@media (max-height:700px) {
    .communicator--floating {
        max-height: 90vh
    }
}

.communicator--floating .draw-controls-container {
    border-top: 1px solid #dfe3eb;
    background: #fff
}

.communicator--floating.communicator--fullscreen {
    height: 100%;
    width: 90%
}

    .communicator--floating.communicator--fullscreen .communicator-rte-wrapper {
        display: flex;
        flex-direction: column;
        height: 100%;
        flex-grow: 1
    }

    .communicator--floating.communicator--fullscreen .communicator-rte-drop-target, .communicator--floating.communicator--fullscreen .communicator-rte-input, .communicator--floating.communicator--fullscreen .draft-extend-editor {
        display: flex;
        flex-direction: column;
        flex-grow: 1
    }

        .communicator--floating.communicator--fullscreen .draft-extend-editor .DraftEditor-root {
            flex-grow: 1;
            max-height: unset !important;
            min-height: 24px !important
        }

        .communicator--floating.communicator--fullscreen .draft-extend-editor .draft-extend-controls {
            flex-shrink: 0
        }

.communicator--floating .communicator-body {
    display: flex;
    flex-grow: 1;
    height: 100%;
    overflow: hidden
}

.communicator--floating .floating-communicator-sticky-footer {
    position: sticky;
    bottom: 0;
    z-index: 2
}

.communicator--floating .floating-communicator-body {
    display: flex;
    flex-direction: column;
    min-height: auto;
    max-height: inherit;
    width: 600px;
    overflow-y: auto
}

@media (min-width:1440px) {
    .communicator--floating .floating-communicator-body {
        width: 580px
    }
}

@media (min-width:1920px) {
    .communicator--floating .floating-communicator-body {
        width: 650px
    }
}

.communicator--floating .floating-communicator-body.floating-communicator-body--fullscreen {
    max-height: 100vh;
    height: 100%;
    width: 100%
}

    .communicator--floating .floating-communicator-body.floating-communicator-body--fullscreen .communicator-rte-editor-wrapper {
        flex-grow: 1
    }

.communicator--floating .floating-communicator-body .communicator-rte-editor-wrapper, .communicator--floating .floating-communicator-body .communicator-rte-input, .communicator--floating .floating-communicator-body .communicator-rte-wrapper, .communicator--floating .floating-communicator-body .draft-extend-editor {
    display: flex;
    flex-direction: column;
    overflow: hidden
}

.communicator--floating .floating-communicator-body .rich-text-editor .draft-extend-editor .DraftEditor-root, .communicator--floating .floating-communicator-body .rich-text-editor .DraftEditor-root.DraftEditor-root {
    max-height: unset
}

.communicator--floating.floating-panel-is-email .rich-text-editor .draft-extend-editor .DraftEditor-root {
    min-height: 205px
}

@media (max-height:900px) {
    .communicator--floating.floating-panel-is-email .rich-text-editor .draft-extend-editor .DraftEditor-root {
        min-height: 155px
    }
}

@media (max-height:800px) {
    .communicator--floating.floating-panel-is-email .rich-text-editor .draft-extend-editor .DraftEditor-root {
        min-height: 135px
    }
}

@media (max-height:700px) {
    .communicator--floating.floating-panel-is-email .rich-text-editor .draft-extend-editor .DraftEditor-root {
        min-height: 125px
    }
}

@media (max-height:550px) {
    .communicator--floating.floating-panel-is-email .rich-text-editor .draft-extend-editor .DraftEditor-root {
        min-height: 105px
    }
}

.communicator--floating.floating-panel-is-email .communicator-rte-input, .communicator--floating.floating-panel-is-email .draft-extend-editor {
    min-height: 250px
}

@media (max-height:900px) {
    .communicator--floating.floating-panel-is-email .communicator-rte-input, .communicator--floating.floating-panel-is-email .draft-extend-editor {
        min-height: 195px
    }
}

@media (max-height:800px) {
    .communicator--floating.floating-panel-is-email .communicator-rte-input, .communicator--floating.floating-panel-is-email .draft-extend-editor {
        min-height: 180px
    }
}

@media (max-height:700px) {
    .communicator--floating.floating-panel-is-email .communicator-rte-input, .communicator--floating.floating-panel-is-email .draft-extend-editor {
        min-height: 170px
    }
}

@media (max-height:550px) {
    .communicator--floating.floating-panel-is-email .communicator-rte-input, .communicator--floating.floating-panel-is-email .draft-extend-editor {
        min-height: 140px
    }
}

.communicator--floating.floating-panel-is-email .rich-text-editor.communicator-rte-wrapper {
    overflow-y: auto
}

.communicator--floating[class^=floating-panel-is-], .communicator--floating[class^=floating-panel-is-] .floating-communicator-body {
    width: 750px
}

.communicator--floating .rich-text-editor .DraftEditor-root.DraftEditor-root {
    max-height: 35vh;
    min-height: 130px;
    overflow: auto
}

.communicator--floating .schedule-associations .uiList {
    max-height: 35vh;
    min-height: 100px;
    overflow-x: hidden;
    overflow-y: auto
}

@media (min-height:700px) {
    .floating-panel-is-note .rich-text-editor .DraftEditor-root.DraftEditor-root {
        min-height: 275px
    }
}

@media (min-height:700px) {
    .floating-panel-is-activity .rich-text-editor .DraftEditor-root.DraftEditor-root, .floating-panel-is-call .rich-text-editor .DraftEditor-root.DraftEditor-root, .floating-panel-is-logged-call .rich-text-editor .DraftEditor-root.DraftEditor-root, .floating-panel-is-logged-email .rich-text-editor .DraftEditor-root.DraftEditor-root, .floating-panel-is-logged-meeting .rich-text-editor .DraftEditor-root.DraftEditor-root, .floating-panel-is-schedule .rich-text-editor .DraftEditor-root.DraftEditor-root {
        min-height: 200px
    }
}

.floating-panel-is-activity .floating-communicator-body, .floating-panel-is-logged-call .floating-communicator-body, .floating-panel-is-logged-email .floating-communicator-body, .floating-panel-is-logged-meeting .floating-communicator-body, .floating-panel-is-note .floating-communicator-body {
    min-height: 250px
}

@media (min-height:700px) {
    .floating-panel-is-activity .floating-communicator-body, .floating-panel-is-logged-call .floating-communicator-body, .floating-panel-is-logged-email .floating-communicator-body, .floating-panel-is-logged-meeting .floating-communicator-body, .floating-panel-is-note .floating-communicator-body {
        min-height: 395px
    }
}

.floating-panel-is-activity .floating-communicator-body, .floating-panel-is-logged-call .floating-communicator-body, .floating-panel-is-logged-email .floating-communicator-body, .floating-panel-is-logged-meeting .floating-communicator-body {
    min-height: 250px
}

@media (min-height:700px) {
    .floating-panel-is-activity .floating-communicator-body, .floating-panel-is-logged-call .floating-communicator-body, .floating-panel-is-logged-email .floating-communicator-body, .floating-panel-is-logged-meeting .floating-communicator-body {
        min-height: 360px
    }
}

.floating-panel-is-email {
    min-width: 600px
}

    .floating-panel-is-email .floating-communicator-body {
        min-width: 600px;
        min-height: 250px
    }

@media (min-height:700px) {
    .floating-panel-is-email .floating-communicator-body {
        min-height: 344px
    }
}

.floating-panel-is-call {
    height: 100%
}

    .floating-panel-is-call .call-widget-host iframe {
        border: none
    }

    .floating-panel-is-call .communicator-body {
        display: flex;
        flex-direction: column;
        justify-content: center
    }



.send-later-menu {
    width: 316px
}

    .send-later-menu .send-later-list-item {
        min-height: 0;
        margin-bottom: 16px
    }

        .send-later-menu .send-later-list-item:first-of-type {
            margin-top: 16px
        }

    .send-later-menu .timezone-picker {
        min-width: 260px
    }

.datepicker-disabled {
    display: none !important
}



.DraftEditor-editorContainer, .DraftEditor-root, .public-DraftEditor-content {
    height: inherit;
    text-align: initial
}

    .public-DraftEditor-content[contenteditable=true] {
        -webkit-user-modify: read-write-plaintext-only
    }

.DraftEditor-root {
    position: relative
}

.DraftEditor-editorContainer {
    background-color: hsla(0,0%,100%,0);
    border-left: .1px solid transparent;
    position: relative;
    z-index: 1
}

.public-DraftEditor-block {
    position: relative
}

.DraftEditor-alignLeft .public-DraftStyleDefault-block {
    text-align: left
}

.DraftEditor-alignLeft .public-DraftEditorPlaceholder-root {
    left: 0;
    text-align: left
}

.DraftEditor-alignCenter .public-DraftStyleDefault-block {
    text-align: center
}

.DraftEditor-alignCenter .public-DraftEditorPlaceholder-root {
    margin: 0 auto;
    text-align: center;
    width: 100%
}

.DraftEditor-alignRight .public-DraftStyleDefault-block {
    text-align: right
}

.DraftEditor-alignRight .public-DraftEditorPlaceholder-root {
    right: 0;
    text-align: right
}

.public-DraftEditorPlaceholder-root {
    color: #9197a3;
    position: absolute;
    z-index: 1
}

.public-DraftEditorPlaceholder-hasFocus {
    color: #bdc1c9
}

.DraftEditorPlaceholder-hidden {
    display: none
}

.public-DraftStyleDefault-block {
    position: relative;
    white-space: pre-wrap
}

.public-DraftStyleDefault-ltr {
    direction: ltr;
    text-align: left
}

.public-DraftStyleDefault-rtl {
    direction: rtl;
    text-align: right
}

.public-DraftStyleDefault-listLTR {
    direction: ltr
}

.public-DraftStyleDefault-listRTL {
    direction: rtl
}

.public-DraftStyleDefault-ol, .public-DraftStyleDefault-ul {
    margin: 16px 0;
    padding: 0
}

.public-DraftStyleDefault-depth0.public-DraftStyleDefault-listLTR {
    margin-left: 1.5em
}

.public-DraftStyleDefault-depth0.public-DraftStyleDefault-listRTL {
    margin-right: 1.5em
}

.public-DraftStyleDefault-depth1.public-DraftStyleDefault-listLTR {
    margin-left: 3em
}

.public-DraftStyleDefault-depth1.public-DraftStyleDefault-listRTL {
    margin-right: 3em
}

.public-DraftStyleDefault-depth2.public-DraftStyleDefault-listLTR {
    margin-left: 4.5em
}

.public-DraftStyleDefault-depth2.public-DraftStyleDefault-listRTL {
    margin-right: 4.5em
}

.public-DraftStyleDefault-depth3.public-DraftStyleDefault-listLTR {
    margin-left: 6em
}

.public-DraftStyleDefault-depth3.public-DraftStyleDefault-listRTL {
    margin-right: 6em
}

.public-DraftStyleDefault-depth4.public-DraftStyleDefault-listLTR {
    margin-left: 7.5em
}

.public-DraftStyleDefault-depth4.public-DraftStyleDefault-listRTL {
    margin-right: 7.5em
}

.public-DraftStyleDefault-unorderedListItem {
    list-style-type: square;
    position: relative
}

    .public-DraftStyleDefault-unorderedListItem.public-DraftStyleDefault-depth0 {
        list-style-type: disc
    }

    .public-DraftStyleDefault-unorderedListItem.public-DraftStyleDefault-depth1 {
        list-style-type: circle
    }

.public-DraftStyleDefault-orderedListItem {
    list-style-type: none;
    position: relative
}

    .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-listLTR:before {
        left: -36px;
        position: absolute;
        text-align: right;
        width: 30px
    }

    .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-listRTL:before {
        position: absolute;
        right: -36px;
        text-align: left;
        width: 30px
    }

    .public-DraftStyleDefault-orderedListItem:before {
        content: counter(a) ". ";
        counter-increment: a
    }

    .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-depth1:before {
        content: counter(b,lower-alpha) ". ";
        counter-increment: b
    }

    .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-depth2:before {
        content: counter(c,lower-roman) ". ";
        counter-increment: c
    }

    .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-depth3:before {
        content: counter(d) ". ";
        counter-increment: d
    }

    .public-DraftStyleDefault-orderedListItem.public-DraftStyleDefault-depth4:before {
        content: counter(e,lower-alpha) ". ";
        counter-increment: e
    }

.public-DraftStyleDefault-depth0.public-DraftStyleDefault-reset {
    counter-reset: a
}

.public-DraftStyleDefault-depth1.public-DraftStyleDefault-reset {
    counter-reset: b
}

.public-DraftStyleDefault-depth2.public-DraftStyleDefault-reset {
    counter-reset: c
}

.public-DraftStyleDefault-depth3.public-DraftStyleDefault-reset {
    counter-reset: d
}

.public-DraftStyleDefault-depth4.public-DraftStyleDefault-reset {
    counter-reset: e
}

.draft-extend {
    position: relative
}

.draft-extend-editor {
    background: #fff;
    border-bottom: 40px solid transparent;
    padding: 4px
}

    .draft-extend-editor *, .draft-extend-editor :focus {
        outline: none
    }

    .draft-extend-editor .DraftEditor-editorContainer, .draft-extend-editor .DraftEditor-editorContainer a, .draft-extend-editor .DraftEditor-root, .draft-extend-editor .DraftEditor-root a, .draft-extend-editor .public-DraftEditor-content, .draft-extend-editor .public-DraftEditor-content a {
        font-family: sans-serif;
        min-height: inherit
    }

.draft-extend-controls, .draft-extend-popover-controls {
    margin: 0;
    padding: 0;
    display: flex;
    align-items: center
}

    .draft-extend-controls .draft-toolbar-button, .draft-extend-popover-controls .draft-toolbar-button {
        margin: 0 1px
    }

    .draft-extend-controls .draft-toolbar-select, .draft-extend-popover-controls .draft-toolbar-select {
        margin: 0 4px
    }

    .draft-extend-controls .draft-toolbar-dropdown, .draft-extend-popover-controls .draft-toolbar-dropdown {
        margin: 0
    }

    .draft-extend-controls.draft-extend-popover-controls, .draft-extend-popover-controls.draft-extend-popover-controls {
        padding-bottom: 2px
    }

    .draft-extend-controls button, .draft-extend-popover-controls button {
        display: inline-block;
        min-width: 24px;
        padding: 4px;
        border-radius: 3px;
        text-align: center;
        cursor: pointer;
        width: auto
    }

        .draft-extend-controls button:focus, .draft-extend-popover-controls button:focus {
            outline: none
        }

        .draft-extend-controls button i, .draft-extend-popover-controls button i {
            position: relative;
            top: 1px
        }

    .draft-extend-controls .transparent-dropdown, .draft-extend-popover-controls .transparent-dropdown {
        font-size: 14px;
        background-color: transparent;
        border-color: transparent;
        box-shadow: none
    }

        .draft-extend-controls .transparent-dropdown.font-dropdown, .draft-extend-popover-controls .transparent-dropdown.font-dropdown {
            width: 130px
        }

        .draft-extend-controls .transparent-dropdown .uiDropdown__buttonCaret, .draft-extend-popover-controls .transparent-dropdown .uiDropdown__buttonCaret {
            border-width: .25rem
        }

.plugin-group-button.active {
    border: 1px solid #cbd6e2;
    padding: 0
}

.plugin-group-button i {
    color: #7c98b6
}

.draft-extend-popover-controls {
    position: relative
}

    .draft-controls-dropdown button.active, .draft-extend-popover-controls button.active {
        background: #516f90;
        color: #fff
    }

.token-results li {
    font-size: 13px;
    align-items: center;
    display: flex
}

.token-results .at-mention-zero-state {
    background: #fff;
    padding: 20px 24px
}

    .token-results .at-mention-zero-state h5 {
        font-size: 13px
    }

    .token-results .at-mention-zero-state .error-text {
        color: #d94c53
    }

.richtext .editor a {
    text-decoration: underline
}

.richtext-link-drop {
    width: 300px;
    box-sizing: border-box
}

.link-plugin-icon {
    color: #7c98b6
}

.width-95 {
    width: 95%
}

.draft-extend-align-block-left, .draft-extend-align-block-left > div {
    text-align: left
}

.draft-extend-align-block-center, .draft-extend-align-block-center > div {
    text-align: center
}

.draft-extend-align-block-right, .draft-extend-align-block-right div {
    text-align: right
}

.rich-text-separator {
    border-right: 1px solid #eaf0f6;
    height: 24px;
    margin: auto 4px;
    vertical-align: middle;
    display: inline-block
}

.image-component {
    display: inline-flex;
    position: relative
}

    .image-component .selected {
        opacity: 1
    }

    .image-component .private-badge {
        background: #425b76
    }

.image-component-alignment {
    display: flex
}

    .image-component-alignment.right {
        justify-content: flex-end
    }

    .image-component-alignment.center {
        justify-content: center
    }

    .image-component-alignment.left {
        justify-content: flex-start
    }

.image-component-dimensions {
    position: absolute;
    right: 8px;
    top: 8px;
    opacity: 0
}

.image-component-button-group {
    display: none !important;
    position: absolute;
    right: 8px;
    bottom: 8px
}

    .image-component-button-group.selected {
        display: block !important
    }

.image-component-loading-overlay {
    padding: 0
}

.overlay-dropdown ul[role=listbox] {
    margin: 0;
    padding: 0;
    background: #fff;
    max-height: none;
    width: 360px
}

.document-link-preview {
    position: relative;
    display: inline-block;
    transition: box-shadow .15s ease
}

    .document-link-preview.selected {
        box-shadow: 0 0 14px rgba(14,131,255,.3)
    }

    .document-link-preview table {
        margin-bottom: 0
    }

.document-link-preview-edit-button {
    position: absolute;
    bottom: 8px;
    right: 8px
}

.public-DraftStyleDefault-depth0.public-DraftStyleDefault-listLTR {
    margin-left: 2em
}

.public-DraftStyleDefault-depth1.public-DraftStyleDefault-listLTR {
    margin-left: 4em
}

.public-DraftStyleDefault-depth2.public-DraftStyleDefault-listLTR {
    margin-left: 6em
}

.public-DraftStyleDefault-depth3.public-DraftStyleDefault-listLTR {
    margin-left: 8em
}

.public-DraftStyleDefault-depth4.public-DraftStyleDefault-listLTR {
    margin-left: 10em
}

.merge-tag-popover .uiPopoverBody {
    padding-top: 0
}

.merge-tag-popover.merge-tag-popover-search {
    min-height: 450px
}

    .merge-tag-popover.merge-tag-popover-search .uiPopoverBody {
        padding-left: 0;
        padding-right: 0;
        margin: 0
    }

    .merge-tag-popover.merge-tag-popover-search .private-search-control__wrapper {
        background-color: #fff;
        padding: 1.5rem;
        border-bottom: 1px solid #cbd6e2
    }

.video-plugin-button-wrapper > button {
    -webkit-font-smoothing: auto;
    -moz-osx-font-smoothing: auto;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    font-size: 14px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 0;
    border-radius: 0;
    color: #33475b;
    display: block;
    min-height: 40px;
    padding: 8px 20px;
    text-align: left;
    width: 100%;
    background-color: #fff;
    line-height: 24px
}

    .video-plugin-button-wrapper > button:hover {
        background: #e5f5f8;
        color: #33475b;
        text-decoration: none
    }

.insert-popover-button {
    -webkit-font-smoothing: auto;
    -moz-osx-font-smoothing: auto;
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
    font-weight: 400;
    font-size: 14px;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
    border: 0;
    border-radius: 0;
    color: #33475b;
    display: block;
    min-height: 40px;
    padding: 8px 20px;
    text-align: left;
    width: 100%
}

    .insert-popover-button:hover {
        background: #e5f5f8;
        color: #33475b
    }

.signature-iframe-edit {
    position: absolute;
    text-align: right;
    padding-right: 8px;
    padding-top: 4px;
    top: 0;
    right: 0;
    bottom: 0;
    left: 0;
    opacity: 0
}

.signature-iframe-pointer {
    cursor: pointer
}

.signature-iframe-wrapper {
    padding: 0;
    padding: 0 24px 0 0
}

    .signature-iframe-wrapper iframe {
        width: 100%;
        background: transparent
    }

.signature-iframe-wrapper-edit:hover {
    background: #f5f8fa
}

    .signature-iframe-wrapper-edit:hover .signature-iframe-edit {
        opacity: 1
    }

.sig-editor .content {
    padding: 1.375rem 3rem 1rem
}

.sig-editor .private-modal__header .image-container {
    position: relative;
    top: -60px;
    left: 220px
}

.sig-editor .draft-extend {
    border: 1px solid #cbd6e2
}

.sig-editor .draft-extend-editor {
    background: #fff;
    border: none
}

    .sig-editor .draft-extend-editor .draft-extend-controls span {
        color: #33475b
    }

.sig-editor div.DraftEditor-root {
    font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Oxygen-Sans,Ubuntu,Cantarell,Helvetica Neue,sans-serif;
    color: #000;
    font-size: 14px
}

.sig-editor .DraftEditor-root {
    height: 200px;
    overflow-y: auto
}

    .sig-editor .DraftEditor-root a, .sig-editor .DraftEditor-root div, .sig-editor .DraftEditor-root li, .sig-editor .DraftEditor-root p, .sig-editor .DraftEditor-root span, .sig-editor .DraftEditor-root ul {
        font-family: -apple-system,BlinkMacSystemFont,Segoe UI,Roboto,Oxygen-Sans,Ubuntu,Cantarell,Helvetica Neue,sans-serif;
        color: #000;
        font-size: 14px
    }

    .sig-editor .DraftEditor-root a {
        color: blue
    }

        .sig-editor .DraftEditor-root a span {
            color: inherit
        }

.sig-editor .raw-text-editor {
    height: 240px !important
}

.sig-editor .raw-text-editor-preview {
    height: 120px;
    max-height: 120px;
    overflow: auto;
    border: 1px solid #cbd6e2
}

.sig-editor .loading-container {
    height: 200px
}

.sig-editor .raw-editor {
    height: auto;
    padding: 0;
    background: #fff;
    font-size: 14px
}

    .sig-editor .raw-editor textarea {
        background: none;
        border: none;
        outline: none;
        font-size: 14px;
        font-family: monospace
    }

        .sig-editor .raw-editor textarea:focus {
            outline: none;
            border: none;
            box-shadow: none
        }

    .sig-editor .raw-editor .unsubscribe-edit {
        padding-left: 8px;
        padding-right: 8px
    }

.sig-editor-unsubscribe-edit {
    min-height: 100px;
    padding-top: 8px
}

    .sig-editor-unsubscribe-edit a {
        pointer-events: none
    }

    .sig-editor-unsubscribe-edit .edit-icon {
        display: none
    }

    .sig-editor-unsubscribe-edit:hover {
        background: #f5f8fa;
        cursor: pointer
    }

        .sig-editor-unsubscribe-edit:hover .edit-icon {
            display: block
        }

.at-mention-token {
    color: #425b76;
    font-weight: 600
}

    .at-mention-token:before {
        content: "@";
        padding-right: 1px
    }

[data-at-mention] {
    color: #425b76;
    font-weight: 600
}

    [data-at-mention]:before {
        content: "@";
        padding-right: 1px
    }

.communicator .communicator-slide-out {
    overflow: visible
}

    .communicator .communicator-slide-out > * {
        padding-top: 0;
        padding-bottom: 0
    }

.communicator .task-assign-to-button, .timeline-item-task .task-assign-to-button {
    max-width: 150px
}

    .communicator .task-assign-to-button > span, .timeline-item-task .task-assign-to-button > span {
        width: 100%
    }

.forceUpdate:after {
    content: "";
    position: absolute;
    height: 1px;
    width: 1px;
    margin: -1px;
    overflow: hidden;
    transform: rotate(1deg)
}

.draft-extend-controls .private-icon {
    color: #33475b
}

.rich-text-editor {
    position: relative
}

    .rich-text-editor .rich-text-editor-input.rte-border {
        border: 2px solid;
        border-color: rgba(0,208,228,.5);
        padding: 8px 4px 0;
        margin-bottom: 8px;
        box-shadow: 0 1px 3px rgba(0,164,189,.3);
        border-radius: 3px
    }

    .rich-text-editor .public-DraftEditorPlaceholder-root {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        font-weight: 400;
        color: #7c98b6
    }

    .rich-text-editor .draft-extend-editor {
        border-bottom: 0
    }

        .rich-text-editor .draft-extend-editor .DraftEditor-root {
            min-height: 6rem;
            max-height: 500px;
            overflow-y: auto
        }

    .rich-text-editor .draft-extend-controls {
        padding-top: 8px
    }

        .rich-text-editor .draft-extend-controls button {
            padding-left: 8px;
            padding-right: 8px;
            margin: 0;
            border-width: 0
        }

.probability-bar {
    height: 4px;
    transition: background-color .25s ease;
    border-radius: 12px;
    margin-right: 4px
}

    .probability-bar:last-child {
        margin-right: 0
    }

.probability-color-empty {
    background-color: #eaf0f6
}

.probability-color-0 {
    background-color: #516f90
}

.probability-color-10 {
    background-color: #fea58e
}

.probability-color-20 {
    background-color: #fb9d95
}

.probability-color-30 {
    background-color: #f7969c
}

.probability-color-40 {
    background-color: #ef91a4
}

.probability-color-50 {
    background-color: #e68cab
}

.probability-color-60 {
    background-color: #da89b2
}

.probability-color-70 {
    background-color: #cc87b8
}

.probability-color-80 {
    background-color: #bc85bd
}

.probability-color-90 {
    background-color: #aa85c0
}

.probability-color-100 {
    background-color: #9784c2
}

.PropertyInputEnumMulti {
    height: auto;
    min-height: 2.5rem
}

    .PropertyInputEnumMulti.isInline {
        border-bottom: 1px solid transparent;
        display: block;
        min-height: auto;
        padding-bottom: 4px;
        padding-right: 8px;
        padding-top: 8px;
        width: 100%
    }

        .PropertyInputEnumMulti.isInline:focus {
            border-color: rgba(0,208,228,.5);
            box-shadow: 0 0 4px 1px rgba(0,208,228,.3),0 0 0 1px #00d0e4;
            outline: 0;
            border-left-color: transparent;
            border-right-color: transparent;
            border-top-color: transparent;
            box-shadow: none
        }

    .PropertyInputEnumMulti .label {
        white-space: normal
    }

        .PropertyInputEnumMulti .label .invalid {
            color: #f2545b
        }

.PropertyInputPersona.private-form__control--inline .Select-multi-value-wrapper, .PropertyInputPersona.private-form__control--inline .Select-multi-value-wrapper .Select-input {
    margin-left: 0 !important
}

.filter-sidebar-wrapper {
    margin-left: 40px;
    margin-right: 32px;
    display: flex;
    flex-direction: column;
    flex-grow: 1;
    max-height: 100vh
}

.filter-sidebar-container {
    display: flex;
    margin-left: 40px;
    margin-right: 40px
}

.filter-sidebar-group-header, .filter-sidebar-selector-container, .filter-sidebar-view-controls {
    flex-shrink: 0;
    display: flex
}

.filter-sidebar-group {
    display: flex;
    flex-direction: column
}

.filter-sidebar-menus {
    padding-top: 8px;
    flex-grow: 1;
    overflow: visible;
    display: flex;
    max-height: calc(100vh - 85px)
}

.filter-sidebar-group {
    width: 100%
}

.filter-sidebar-group-view-options {
    border-top: 1px solid #cbd6e2
}

.filter-sidebar-group-items:hover {
    color: #33475b
}

    .filter-sidebar-group-items:hover a {
        color: #fff
    }

        .filter-sidebar-group-items:hover a.selected {
            background: #cbd6e2
        }

.filter-sidebar-group .private-tag--default.private-tag--multiline {
    line-height: 1.5;
    padding-top: 8px;
    padding-bottom: 8px
}

    .filter-sidebar-group .private-tag--default.private-tag--multiline .private-tag__link {
        text-decoration: none
    }

.filter-sidebar-group-items.selected {
    background: #7c98b6
}

.filter-sidebar-group-items:hover {
    background: #e5f5f8;
    width: 100%
}

    .filter-sidebar-group-items:hover a {
        width: 100%
    }

        .filter-sidebar-group-items:hover a.selected {
            background: #7c98b6
        }

.filter-sidebar-group-scrolls {
    padding-top: 12px;
    overflow-y: auto
}

.filter-sidebar-view-filter {
    padding-left: 12px;
    word-break: normal
}



.private-upgrades-message-expanded .private-upgrades-message {
    display: flex;
    align-items: baseline
}

.private-upgrades-message-condensed .private-upgrades-message-link {
    margin-left: 4px;
    width: auto !important
}

.private-upgrades-message-condensed .private-upgrades-message-button {
    margin-top: 12px;
    width: auto !important
}

.private-upgrades-message-condensed .private-upgrades-message-text {
    margin-top: 8px
}

.private-upgrades-message-expanded .private-upgrades-message-link {
    margin-right: 16px
}

.private-upgrades-paneled-modal .private-modal {
    overflow: hidden
}

.private-upgrades-meeting-modal {
    padding-top: 64px;
    background-color: #f5f8fa
}

.private-upgrades-carousel {
    transition: .3s ease-out;
    padding-left: 70px;
    width: 500px
}

.private-upgrades-carousel-buttons {
    bottom: 0;
    left: 0;
    margin: auto;
    position: absolute;
    right: 0;
    top: 0;
    width: 410px;
    z-index: 100
}

.private-upgrades-carousel-slide {
    padding-left: 20px;
    padding-right: 20px;
    transition: .3s ease-out;
    transform: scale(.85);
    opacity: .4;
    flex: 360px 0 0
}

    .private-upgrades-carousel-slide.current {
        transform: scale(1);
        opacity: 1
    }

.private-upgrades-carousel-slide-image {
    height: 240px
}



.embedded-dialog {
    display: flex;
    position: relative
}

    .embedded-dialog.in-full {
        padding: 0 !important
    }

        .embedded-dialog.in-full.panel {
            margin-top: -40px
        }

header + .embedded-dialog.in-full.panel {
    margin-top: 0
}

.embedded-dialog.in-full-loading {
    padding-left: 0 !important;
    padding-right: 0 !important
}

    .embedded-dialog.in-full-loading.panel {
        margin-top: -40px
    }

header + .embedded-dialog.in-full-loading.panel {
    margin-top: 0
}

.embedded-dialog.in-full-loading > iframe {
    height: unset;
    width: 100%
}

.embedded-dialog > iframe {
    padding: 0;
    flex-grow: 1
}

.word-break-normal {
    word-break: normal !important
}

.word-break-break-all {
    word-break: break-all !important
}

.word-break-break-word {
    word-break: break-word !important
}

.word-break-keep-all {
    word-break: keep-all !important
}

.word-break-inherit {
    word-break: inherit !important
}

.word-break-initial {
    word-break: initial !important
}

.word-break-unset {
    word-break: unset !important
}

.col-resize {
    cursor: col-resize !important
}

.context-menu {
    cursor: context-menu !important
}

.copy {
    cursor: copy !important
}

.grab {
    cursor: grab !important
}

.grabbing {
    cursor: grabbing !important
}

.help {
    cursor: help !important
}

.progress {
    cursor: progress !important
}

.move {
    cursor: move !important
}

.no-drop {
    cursor: no-drop !important
}

.not-allowed {
    cursor: not-allowed !important
}

.pointer {
    cursor: pointer !important
}

.row-resize {
    cursor: row-resize !important
}

.resize {
    cursor: resize !important
}

.resize-x {
    cursor: resize-x !important
}

.resize-y {
    cursor: resize-y !important
}

.text {
    cursor: text !important
}

.zoom-in {
    cursor: zoom-in !important
}

.zoom-out {
    cursor: zoom-out !important
}

.overflow-auto {
    overflow: auto !important
}

.overflow-x-auto {
    overflow-x: auto !important
}

.overflow-y-auto {
    overflow-y: auto !important
}

.overflow-visible {
    overflow: visible !important
}

.overflow-hidden {
    overflow: hidden !important
}

.overflow-x-hidden {
    overflow-x: hidden !important
}

.overflow-y-hidden {
    overflow-y: hidden !important
}

.overflow-scroll {
    overflow: scroll !important
}

.overflow-x-scroll {
    overflow-x: scroll !important
}

.overflow-y-scroll {
    overflow-y: scroll !important
}

.overflow-inherit {
    overflow: inherit !important
}

.overflow-x-unset {
    overflow-x: inherit !important
}

.overflow-y-inherit {
    overflow-y: inherit !important
}

.overflow-initial {
    overflow: initial !important
}

.overflow-x-initial {
    overflow-x: initial !important
}

.overflow-y-initial {
    overflow-y: initial !important
}

.overflow-unset {
    overflow: unset !important
}

.overflow-x-unset {
    overflow-x: unset !important
}

.overflow-y-unset {
    overflow-y: unset !important
}

.width-100 {
    width: 100% !important
}

.crm-light-border {
    border: 1px solid #cbd6e2;
    border-radius: 3px;
    width: 100%
}

.crm-light-border-bottom {
    border-bottom: 1px solid #dfe3eb;
    width: 100%
}

.predictive-score-number {
    font-size: 48px
}

.integrations-iframe {
    border: none
}

.integrations-card-actions {
    display: inline-flex;
    justify-content: space-between;
    flex-direction: row-reverse;
    width: 100%
}

.selected-row {
    background-color: #f5f8fa
}

.sequence-editor-modal-dialog {
    height: 600px
}

.private-form__set--floating .private-form__label--floating.private-form__label--floating-as-placeholder {
    font-size: .75rem
}

.read-only .private-form__label--floating.private-form__label--floating-as-placeholder {
    cursor: default
}

.private-form__label--floating-as-placeholder + .crm-property-date-input {
    opacity: 0
}

.private-form__set--floating.floating-field-with-border {
    border-top: 1px dashed #dfe3eb;
    border-bottom: none
}

    .private-form__set--floating.floating-field-with-border:first-child {
        border-top-color: transparent
    }

    .private-form__set--floating.floating-field-with-border:hover {
        border-top-color: #dfe3eb;
        border-top-style: solid
    }

        .private-form__set--floating.floating-field-with-border:hover + .private-form__set--floating {
            border-top-style: solid
        }

    .private-form__set--floating.floating-field-with-border:last-child {
        border-bottom: 1px solid transparent
    }

        .private-form__set--floating.floating-field-with-border:last-child:hover {
            border-bottom-color: #dfe3eb
        }

.header-width-crutch .private-header__inner {
    width: 100%
}

.crm-date-time-input-dropdown .private-expanding-text-input input:focus {
    outline: 0
}

.association-select-value {
    height: auto
}

.association__date-picker .private-date-picker {
    display: inline
}

.association__date-picker .private-date-range-picker__dropdown--inline {
    min-height: auto
}

@media print {
    .quote-page-container {
        -webkit-print-color-adjust: exact;
        color-adjust: exact
    }

        .quote-page-container .quote-actions {
            display: none
        }

        .quote-page-container .quote-comments-container, .quote-page-container .quote-contact-me-section, .quote-page-container .quote-price-summary, .quote-page-container .quote-print-signature-container, .quote-page-container .quote-terms-and-signature-container, .quote-page-container .quote-terms-container {
            page-break-inside: avoid
        }

        .quote-page-container .private-multicolumn {
            display: table
        }

            .quote-page-container .private-multicolumn > .private-multicolumn__group:first-child .private-multicolumn__item, .quote-page-container .private-multicolumn > .private-multicolumn__section:first-child .private-multicolumn__item {
                border-color: transparent
            }

        .quote-page-container .private-multicolumn__section {
            display: table-row-group
        }

        .quote-page-container .private-multicolumn__group {
            display: table-row
        }

        .quote-page-container .private-multicolumn--flush .private-multicolumn__item:first-child {
            padding-left: 0
        }

        .quote-page-container .private-multicolumn--flush .private-multicolumn__item:last-child {
            padding-right: 0
        }

        .quote-page-container .private-multicolumn__item {
            border-color: #dfe3eb;
            border-style: solid;
            border-width: 1px 0 0;
            display: table-cell
        }

            .quote-page-container .private-multicolumn__item:last-child:not(:first-child) {
                text-align: right
            }
}

@media screen and (min-width:992px) {
    .quote-page-container .original-quote-template .fixed-width {
        max-width: 60%
    }
}

.quote-page-container .original-quote-template .quote-header .quote-title {
    font-size: 3em
}

.quote-page-container .original-quote-template .quote-header .quote-comments-container .quote-comments {
    padding: 20px 40px
}

    .quote-page-container .original-quote-template .quote-header .quote-comments-container .quote-comments.small-opacity {
        background-color: hsla(0,0%,100%,.2)
    }

    .quote-page-container .original-quote-template .quote-header .quote-comments-container .quote-comments.large-opacity {
        background-color: hsla(0,0%,100%,.5)
    }

.quote-page-container .original-quote-template .quote-header .quote-comments-container .comments-from-contact {
    height: 32px
}

    .quote-page-container .original-quote-template .quote-header .quote-comments-container .comments-from-contact .contact-image {
        width: 70px !important;
        height: 70px !important;
        align-items: center;
        margin-right: 16px
    }

.quote-page-container .original-quote-template .quote-line-items-and-services .quote-line-item:not(:last-child) {
    border-bottom: 1px solid #99acc2
}

.quote-page-container .original-quote-template .quote-line-items-and-services .quote-line-item:last-child {
    border-bottom: 2px solid #99acc2;
    margin-bottom: 40px
}

.quote-page-container .original-quote-template .quote-line-items-and-services .quote-line-item .private-media__item--right {
    max-width: 75%
}

    .quote-page-container .original-quote-template .quote-line-items-and-services .quote-line-item .private-media__item--right .quote-line-item-price-summary {
        text-align: right
    }

.quote-page-container .original-quote-template .quote-terms-container .quote-terms {
    padding: 24px 40px;
    margin-bottom: 32px
}

.quote-page-container .basic-quote-template .quote-line-items-and-services table, .quote-page-container .basic-quote-template .quote-line-items-and-services td, .quote-page-container .basic-quote-template .quote-line-items-and-services th {
    border-color: #000 !important
}

.quote-page-container .basic-quote-template .quote-line-items-and-services thead th {
    background-color: #f5f5f5
}

@media screen and (max-width:575px) {
    .quote-page-container .basic-quote-template .quote-line-items-and-services .quote-total-box {
        max-width: unset !important
    }
}

.quote-page-container .basic-quote-template .quote-line-items-and-services .quote-total-box .quote-total-box-title {
    background-color: #f5f5f5
}

@media screen and (max-width:575px) {
    .quote-page-container .modern-quote-template .quote-total-at-close {
        max-width: unset !important
    }
}

.quote-page-container {
    min-width: 200px;
    overflow-wrap: break-word
}

    .quote-page-container strong, .quote-page-container thead th {
        font-weight: 600
    }

    .quote-page-container pre {
        font-family: Avenir Next W02,Helvetica,Arial,sans-serif;
        white-space: pre-wrap;
        white-space: -moz-pre-wrap;
        white-space: -pre-wrap;
        white-space: -o-pre-wrap;
        line-height: 1rem;
        overflow-y: hidden;
        margin-bottom: 0
    }

    .quote-page-container .fixed-width {
        margin-left: auto;
        margin-right: auto
    }

@media screen and (min-width:1280px) {
    .quote-page-container .fixed-width {
        max-width: 50%
    }
}

@media screen and (max-width:1280px) {
    .quote-page-container .fixed-width {
        max-width: 60%
    }
}

@media screen and (max-width:991px) {
    .quote-page-container .fixed-width {
        max-width: 90%;
        font-size: 20px
    }

        .quote-page-container .fixed-width .is--heading-7, .quote-page-container .fixed-width table, .quote-page-container .fixed-width thead th {
            font-size: 20px !important
        }

        .quote-page-container .fixed-width h5 {
            font-size: 24px
        }

        .quote-page-container .fixed-width small {
            font-size: 16px !important
        }
}

.quote-page-container .strikethrough {
    text-decoration: line-through
}

.quote-page-container .border-bottom {
    border-bottom: 1px solid
}

.quote-page-container .is--heading-7 strong {
    font-weight: 800
}

.quote-page-container .text-white {
    color: #fff
}

.quote-page-container .rounded-border {
    border-radius: 10px
}

@media screen and (max-width:375px) {
    .quote-page-container .custom-color-button {
        min-width: unset !important
    }
}

.quote-page-container .success-button-secondary {
    color: #00bda5;
    border-color: #00bda5;
    pointer-events: none
}

.quote-page-container .success-button {
    color: #fff;
    background-color: #00bda5;
    border-color: #00bda5;
    pointer-events: none
}

.quote-page-container .link-olaf-container a {
    color: #fff;
    text-decoration: underline
}

    .quote-page-container .link-olaf-container a:hover {
        color: #e6e6e6
    }

.quote-page-container .link-obsidian-container a {
    color: #33475b;
    text-decoration: underline
}

    .quote-page-container .link-obsidian-container a:hover {
        color: #6587a9
    }

.quote-page-container .quote-rich-text-body p {
    word-wrap: break-word;
    min-height: 17px;
    margin-bottom: 0
}

.quote-page-container .quote-rich-text-body tr {
    white-space: nowrap
}

.quote-page-container .quote-rich-text-body strong {
    font-weight: 700
}

.quote-page-container .quote-rich-text-body pre {
    padding-bottom: 8px
}

.quote-page-container .quote-rich-text-body a {
    white-space: nowrap
}

.quote-page-container .brofile {
    min-height: 60px;
    background-color: #fff
}

    .quote-page-container .brofile.brofile-sticky {
        position: sticky;
        top: 0;
        left: 0;
        right: 0;
        z-index: 1
    }

    .quote-page-container .brofile .brofile-content {
        min-height: 60px;
        padding-top: 8px;
        padding-bottom: 8px
    }

.quote-page-container .company-logo {
    max-height: 45px
}

.quote-page-container .company-logo-square {
    height: 45px !important;
    width: 45px !important
}

.quote-page-container .company-image, .quote-page-container .contact-image {
    width: 48px !important;
    height: 48px !important
}

.quote-page-container .quote-print-signature-container {
    padding-top: 64px;
    margin-bottom: 60px
}

    .quote-page-container .quote-print-signature-container .signature-field {
        border-top: 1px solid #33475b;
        padding-top: 4px
    }

.quote-price-summary {
    border: none
}

    .quote-price-summary .guide {
        border: none;
        border-top: 1px dotted #99acc2;
        height: 1px
    }

    .quote-price-summary .quote-price-total {
        text-align: right
    }

.m-all-auto {
    margin: auto !important
}

.m-x-auto {
    margin-left: auto !important;
    margin-right: auto !important
}

.m-y-auto {
    margin-top: auto !important;
    margin-bottom: auto !important
}

.m-left-auto {
    margin-left: auto !important
}

.m-right-auto {
    margin-right: auto !important
}

.m-top-auto {
    margin-top: auto !important
}

.m-bottom-auto {
    margin-bottom: auto !important
}

.m-all-0 {
    margin: 0 !important
}

.m-x-0 {
    margin-left: 0 !important;
    margin-right: 0 !important
}

.m-y-0 {
    margin-top: 0 !important;
    margin-bottom: 0 !important
}

.m-auto-x-0 {
    margin: auto 0 !important
}

.m-auto-y-0 {
    margin: 0 auto !important
}

.m-top-0 {
    margin-top: 0 !important
}

.m-right-0 {
    margin-right: 0 !important
}

.m-bottom-0 {
    margin-bottom: 0 !important
}

.m-left-0 {
    margin-left: 0 !important
}

.m-all-1 {
    margin: 4px !important
}

.m-x-1 {
    margin-left: 4px !important;
    margin-right: 4px !important
}

.m-y-1 {
    margin-top: 4px !important;
    margin-bottom: 4px !important
}

.m-auto-x-1 {
    margin: auto 4px !important
}

.m-auto-y-1 {
    margin: 4px auto !important
}

.m-top-1 {
    margin-top: 4px !important
}

.m-right-1 {
    margin-right: 4px !important
}

.m-bottom-1 {
    margin-bottom: 4px !important
}

.m-left-1 {
    margin-left: 4px !important
}

.m-all-2 {
    margin: 8px !important
}

.m-x-2 {
    margin-left: 8px !important;
    margin-right: 8px !important
}

.m-y-2 {
    margin-top: 8px !important;
    margin-bottom: 8px !important
}

.m-auto-x-2 {
    margin: auto 8px !important
}

.m-auto-y-2 {
    margin: 8px auto !important
}

.m-top-2 {
    margin-top: 8px !important
}

.m-right-2 {
    margin-right: 8px !important
}

.m-bottom-2 {
    margin-bottom: 8px !important
}

.m-left-2 {
    margin-left: 8px !important
}

.m-all-3 {
    margin: 12px !important
}

.m-x-3 {
    margin-left: 12px !important;
    margin-right: 12px !important
}

.m-y-3 {
    margin-top: 12px !important;
    margin-bottom: 12px !important
}

.m-auto-x-3 {
    margin: auto 12px !important
}

.m-auto-y-3 {
    margin: 12px auto !important
}

.m-top-3 {
    margin-top: 12px !important
}

.m-right-3 {
    margin-right: 12px !important
}

.m-bottom-3 {
    margin-bottom: 12px !important
}

.m-left-3 {
    margin-left: 12px !important
}

.m-all-4 {
    margin: 16px !important
}

.m-x-4 {
    margin-left: 16px !important;
    margin-right: 16px !important
}

.m-y-4 {
    margin-top: 16px !important;
    margin-bottom: 16px !important
}

.m-auto-x-4 {
    margin: auto 16px !important
}

.m-auto-y-4 {
    margin: 16px auto !important
}

.m-top-4 {
    margin-top: 16px !important
}

.m-right-4 {
    margin-right: 16px !important
}

.m-bottom-4 {
    margin-bottom: 16px !important
}

.m-left-4 {
    margin-left: 16px !important
}

.m-all-5 {
    margin: 20px !important
}

.m-x-5 {
    margin-left: 20px !important;
    margin-right: 20px !important
}

.m-y-5 {
    margin-top: 20px !important;
    margin-bottom: 20px !important
}

.m-auto-x-5 {
    margin: auto 20px !important
}

.m-auto-y-5 {
    margin: 20px auto !important
}

.m-top-5 {
    margin-top: 20px !important
}

.m-right-5 {
    margin-right: 20px !important
}

.m-bottom-5 {
    margin-bottom: 20px !important
}

.m-left-5 {
    margin-left: 20px !important
}

.m-all-6 {
    margin: 24px !important
}

.m-x-6 {
    margin-left: 24px !important;
    margin-right: 24px !important
}

.m-y-6 {
    margin-top: 24px !important;
    margin-bottom: 24px !important
}

.m-auto-x-6 {
    margin: auto 24px !important
}

.m-auto-y-6 {
    margin: 24px auto !important
}

.m-top-6 {
    margin-top: 24px !important
}

.m-right-6 {
    margin-right: 24px !important
}

.m-bottom-6 {
    margin-bottom: 24px !important
}

.m-left-6 {
    margin-left: 24px !important
}

.m-all-7 {
    margin: 28px !important
}

.m-x-7 {
    margin-left: 28px !important;
    margin-right: 28px !important
}

.m-y-7 {
    margin-top: 28px !important;
    margin-bottom: 28px !important
}

.m-auto-x-7 {
    margin: auto 28px !important
}

.m-auto-y-7 {
    margin: 28px auto !important
}

.m-top-7 {
    margin-top: 28px !important
}

.m-right-7 {
    margin-right: 28px !important
}

.m-bottom-7 {
    margin-bottom: 28px !important
}

.m-left-7 {
    margin-left: 28px !important
}

.m-all-8 {
    margin: 32px !important
}

.m-x-8 {
    margin-left: 32px !important;
    margin-right: 32px !important
}

.m-y-8 {
    margin-top: 32px !important;
    margin-bottom: 32px !important
}

.m-auto-x-8 {
    margin: auto 32px !important
}

.m-auto-y-8 {
    margin: 32px auto !important
}

.m-top-8 {
    margin-top: 32px !important
}

.m-right-8 {
    margin-right: 32px !important
}

.m-bottom-8 {
    margin-bottom: 32px !important
}

.m-left-8 {
    margin-left: 32px !important
}

.m-all-9 {
    margin: 36px !important
}

.m-x-9 {
    margin-left: 36px !important;
    margin-right: 36px !important
}

.m-y-9 {
    margin-top: 36px !important;
    margin-bottom: 36px !important
}

.m-auto-x-9 {
    margin: auto 36px !important
}

.m-auto-y-9 {
    margin: 36px auto !important
}

.m-top-9 {
    margin-top: 36px !important
}

.m-right-9 {
    margin-right: 36px !important
}

.m-bottom-9 {
    margin-bottom: 36px !important
}

.m-left-9 {
    margin-left: 36px !important
}

.m-all-10 {
    margin: 40px !important
}

.m-x-10 {
    margin-left: 40px !important;
    margin-right: 40px !important
}

.m-y-10 {
    margin-top: 40px !important;
    margin-bottom: 40px !important
}

.m-auto-x-10 {
    margin: auto 40px !important
}

.m-auto-y-10 {
    margin: 40px auto !important
}

.m-top-10 {
    margin-top: 40px !important
}

.m-right-10 {
    margin-right: 40px !important
}

.m-bottom-10 {
    margin-bottom: 40px !important
}

.m-left-10 {
    margin-left: 40px !important
}

.m-all-11 {
    margin: 44px !important
}

.m-x-11 {
    margin-left: 44px !important;
    margin-right: 44px !important
}

.m-y-11 {
    margin-top: 44px !important;
    margin-bottom: 44px !important
}

.m-auto-x-11 {
    margin: auto 44px !important
}

.m-auto-y-11 {
    margin: 44px auto !important
}

.m-top-11 {
    margin-top: 44px !important
}

.m-right-11 {
    margin-right: 44px !important
}

.m-bottom-11 {
    margin-bottom: 44px !important
}

.m-left-11 {
    margin-left: 44px !important
}

.m-all-12 {
    margin: 48px !important
}

.m-x-12 {
    margin-left: 48px !important;
    margin-right: 48px !important
}

.m-y-12 {
    margin-top: 48px !important;
    margin-bottom: 48px !important
}

.m-auto-x-12 {
    margin: auto 48px !important
}

.m-auto-y-12 {
    margin: 48px auto !important
}

.m-top-12 {
    margin-top: 48px !important
}

.m-right-12 {
    margin-right: 48px !important
}

.m-bottom-12 {
    margin-bottom: 48px !important
}

.m-left-12 {
    margin-left: 48px !important
}

.m-all-13 {
    margin: 52px !important
}

.m-x-13 {
    margin-left: 52px !important;
    margin-right: 52px !important
}

.m-y-13 {
    margin-top: 52px !important;
    margin-bottom: 52px !important
}

.m-auto-x-13 {
    margin: auto 52px !important
}

.m-auto-y-13 {
    margin: 52px auto !important
}

.m-top-13 {
    margin-top: 52px !important
}

.m-right-13 {
    margin-right: 52px !important
}

.m-bottom-13 {
    margin-bottom: 52px !important
}

.m-left-13 {
    margin-left: 52px !important
}

.m-all-14 {
    margin: 56px !important
}

.m-x-14 {
    margin-left: 56px !important;
    margin-right: 56px !important
}

.m-y-14 {
    margin-top: 56px !important;
    margin-bottom: 56px !important
}

.m-auto-x-14 {
    margin: auto 56px !important
}

.m-auto-y-14 {
    margin: 56px auto !important
}

.m-top-14 {
    margin-top: 56px !important
}

.m-right-14 {
    margin-right: 56px !important
}

.m-bottom-14 {
    margin-bottom: 56px !important
}

.m-left-14 {
    margin-left: 56px !important
}

.m-all-15 {
    margin: 60px !important
}

.m-x-15 {
    margin-left: 60px !important;
    margin-right: 60px !important
}

.m-y-15 {
    margin-top: 60px !important;
    margin-bottom: 60px !important
}

.m-auto-x-15 {
    margin: auto 60px !important
}

.m-auto-y-15 {
    margin: 60px auto !important
}

.m-top-15 {
    margin-top: 60px !important
}

.m-right-15 {
    margin-right: 60px !important
}

.m-bottom-15 {
    margin-bottom: 60px !important
}

.m-left-15 {
    margin-left: 60px !important
}

.p-all-0 {
    padding: 0 !important
}

.p-x-0 {
    padding-left: 0 !important;
    padding-right: 0 !important
}

.p-y-0 {
    padding-bottom: 0 !important
}

.p-top-0, .p-y-0 {
    padding-top: 0 !important
}

.p-right-0 {
    padding-right: 0 !important
}

.p-bottom-0 {
    padding-bottom: 0 !important
}

.p-left-0 {
    padding-left: 0 !important
}

.p-all-1 {
    padding: 4px !important
}

.p-x-1 {
    padding-left: 4px !important;
    padding-right: 4px !important
}

.p-y-1 {
    padding-bottom: 4px !important
}

.p-top-1, .p-y-1 {
    padding-top: 4px !important
}

.p-right-1 {
    padding-right: 4px !important
}

.p-bottom-1 {
    padding-bottom: 4px !important
}

.p-left-1 {
    padding-left: 4px !important
}

.p-all-2 {
    padding: 8px !important
}

.p-x-2 {
    padding-left: 8px !important;
    padding-right: 8px !important
}

.p-y-2 {
    padding-bottom: 8px !important
}

.p-top-2, .p-y-2 {
    padding-top: 8px !important
}

.p-right-2 {
    padding-right: 8px !important
}

.p-bottom-2 {
    padding-bottom: 8px !important
}

.p-left-2 {
    padding-left: 8px !important
}

.p-all-3 {
    padding: 12px !important
}

.p-x-3 {
    padding-left: 12px !important;
    padding-right: 12px !important
}

.p-y-3 {
    padding-bottom: 12px !important
}

.p-top-3, .p-y-3 {
    padding-top: 12px !important
}

.p-right-3 {
    padding-right: 12px !important
}

.p-bottom-3 {
    padding-bottom: 12px !important
}

.p-left-3 {
    padding-left: 12px !important
}

.p-all-4 {
    padding: 16px !important
}

.p-x-4 {
    padding-left: 16px !important;
    padding-right: 16px !important
}

.p-y-4 {
    padding-bottom: 16px !important
}

.p-top-4, .p-y-4 {
    padding-top: 16px !important
}

.p-right-4 {
    padding-right: 16px !important
}

.p-bottom-4 {
    padding-bottom: 16px !important
}

.p-left-4 {
    padding-left: 16px !important
}

.p-all-5 {
    padding: 20px !important
}

.p-x-5 {
    padding-left: 20px !important;
    padding-right: 20px !important
}

.p-y-5 {
    padding-bottom: 20px !important
}

.p-top-5, .p-y-5 {
    padding-top: 20px !important
}

.p-right-5 {
    padding-right: 20px !important
}

.p-bottom-5 {
    padding-bottom: 20px !important
}

.p-left-5 {
    padding-left: 20px !important
}

.p-all-6 {
    padding: 24px !important
}

.p-x-6 {
    padding-left: 24px !important;
    padding-right: 24px !important
}

.p-y-6 {
    padding-bottom: 24px !important
}

.p-top-6, .p-y-6 {
    padding-top: 24px !important
}

.p-right-6 {
    padding-right: 24px !important
}

.p-bottom-6 {
    padding-bottom: 24px !important
}

.p-left-6 {
    padding-left: 24px !important
}

.p-all-7 {
    padding: 28px !important
}

.p-x-7 {
    padding-left: 28px !important;
    padding-right: 28px !important
}

.p-y-7 {
    padding-bottom: 28px !important
}

.p-top-7, .p-y-7 {
    padding-top: 28px !important
}

.p-right-7 {
    padding-right: 28px !important
}

.p-bottom-7 {
    padding-bottom: 28px !important
}

.p-left-7 {
    padding-left: 28px !important
}

.p-all-8 {
    padding: 32px !important
}

.p-x-8 {
    padding-left: 32px !important;
    padding-right: 32px !important
}

.p-y-8 {
    padding-bottom: 32px !important
}

.p-top-8, .p-y-8 {
    padding-top: 32px !important
}

.p-right-8 {
    padding-right: 32px !important
}

.p-bottom-8 {
    padding-bottom: 32px !important
}

.p-left-8 {
    padding-left: 32px !important
}

.p-all-9 {
    padding: 36px !important
}

.p-x-9 {
    padding-left: 36px !important;
    padding-right: 36px !important
}

.p-y-9 {
    padding-bottom: 36px !important
}

.p-top-9, .p-y-9 {
    padding-top: 36px !important
}

.p-right-9 {
    padding-right: 36px !important
}

.p-bottom-9 {
    padding-bottom: 36px !important
}

.p-left-9 {
    padding-left: 36px !important
}

.p-all-10 {
    padding: 40px !important
}

.p-x-10 {
    padding-left: 40px !important;
    padding-right: 40px !important
}

.p-y-10 {
    padding-bottom: 40px !important
}

.p-top-10, .p-y-10 {
    padding-top: 40px !important
}

.p-right-10 {
    padding-right: 40px !important
}

.p-bottom-10 {
    padding-bottom: 40px !important
}

.p-left-10 {
    padding-left: 40px !important
}

.p-all-11 {
    padding: 44px !important
}

.p-x-11 {
    padding-left: 44px !important;
    padding-right: 44px !important
}

.p-y-11 {
    padding-bottom: 44px !important
}

.p-top-11, .p-y-11 {
    padding-top: 44px !important
}

.p-right-11 {
    padding-right: 44px !important
}

.p-bottom-11 {
    padding-bottom: 44px !important
}

.p-left-11 {
    padding-left: 44px !important
}

.p-all-12 {
    padding: 48px !important
}

.p-x-12 {
    padding-left: 48px !important;
    padding-right: 48px !important
}

.p-y-12 {
    padding-bottom: 48px !important
}

.p-top-12, .p-y-12 {
    padding-top: 48px !important
}

.p-right-12 {
    padding-right: 48px !important
}

.p-bottom-12 {
    padding-bottom: 48px !important
}

.p-left-12 {
    padding-left: 48px !important
}

.p-all-13 {
    padding: 52px !important
}

.p-x-13 {
    padding-left: 52px !important;
    padding-right: 52px !important
}

.p-y-13 {
    padding-bottom: 52px !important
}

.p-top-13, .p-y-13 {
    padding-top: 52px !important
}

.p-right-13 {
    padding-right: 52px !important
}

.p-bottom-13 {
    padding-bottom: 52px !important
}

.p-left-13 {
    padding-left: 52px !important
}

.p-all-14 {
    padding: 56px !important
}

.p-x-14 {
    padding-left: 56px !important;
    padding-right: 56px !important
}

.p-y-14 {
    padding-bottom: 56px !important
}

.p-top-14, .p-y-14 {
    padding-top: 56px !important
}

.p-right-14 {
    padding-right: 56px !important
}

.p-bottom-14 {
    padding-bottom: 56px !important
}

.p-left-14 {
    padding-left: 56px !important
}

.p-all-15 {
    padding: 60px !important
}

.p-x-15 {
    padding-left: 60px !important;
    padding-right: 60px !important
}

.p-y-15 {
    padding-bottom: 60px !important
}

.p-top-15, .p-y-15 {
    padding-top: 60px !important
}

.p-right-15 {
    padding-right: 60px !important
}

.p-bottom-15 {
    padding-bottom: 60px !important
}

.p-left-15 {
    padding-left: 60px !important
}

.text-left {
    text-align: left !important
}

.text-right {
    text-align: right !important
}

.text-center {
    text-align: center !important
}

.text-justify {
    text-align: justify !important
}

.text-justify-all {
    text-align: justify-all !important
}

.text-start {
    text-align: start !important
}

.text-end {
    text-align: end !important
}

.text-match-parent {
    text-align: match-parent !important
}

.text-inherit {
    text-align: inherit !important
}

.text-initial {
    text-align: initial !important
}

.text-unset {
    text-align: unset !important
}

.is--heading-1 {
    font-weight: 700 !important;
    font-size: 32px !important
}

.is--heading-1, .is--heading-2 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif !important;
    -webkit-font-smoothing: antialiased !important;
    -moz-osx-font-smoothing: grayscale !important;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    line-height: normal !important;
    text-transform: none !important
}

.is--heading-2 {
    font-weight: 400 !important;
    font-size: 24px !important
}

.is--heading-3 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif !important;
    font-weight: 500 !important;
    -webkit-font-smoothing: antialiased !important;
    -moz-osx-font-smoothing: grayscale !important;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    font-size: 22px !important;
    line-height: normal !important;
    text-transform: none !important
}

.is--heading-4 {
    font-size: 20px !important
}

.is--heading-4, .is--heading-5 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif !important;
    font-weight: 600 !important;
    -webkit-font-smoothing: antialiased !important;
    -moz-osx-font-smoothing: grayscale !important;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    line-height: normal !important;
    text-transform: none !important
}

.is--heading-5 {
    font-size: 16px !important
}

.is--heading-6 {
    text-transform: uppercase !important
}

.is--heading-6, .is--heading-7 {
    font-family: Avenir Next W02,Helvetica,Arial,sans-serif !important;
    font-weight: 600 !important;
    -webkit-font-smoothing: antialiased !important;
    -moz-osx-font-smoothing: grayscale !important;
    margin-bottom: 16px;
    margin-top: 0;
    display: block;
    font-size: 14px !important;
    line-height: normal !important
}

.is--heading-7 {
    text-transform: none !important
}

.is--multiline__cell {
    overflow: visible;
    white-space: normal !important
}

.is--single-line {
    white-space: nowrap
}

.has--vertical-spacing > :last-child {
    margin-bottom: 0
}

.has--horizontal-spacing > * + * {
    margin-left: 12px
}

.has--horizontal-spacing--md > * + * {
    margin-left: 24px !important
}

.is--module {
    margin-bottom: 16px;
    margin-top: 0
}

.is--island.is--island {
    margin-bottom: 40px;
    margin-top: 0;
    margin-top: 40px
}

.has--draggable .is--draggable {
    background-size: 0 0
}

.has--draggable .is--draggable--sized:before {
    opacity: 0
}

.has--draggable:hover .is--draggable {
    background-size: auto
}

.has--draggable:hover .is--draggable--sized:before {
    opacity: 1
}

.has--draggable:hover .is--draggable-hover-container .is--draggable--standalone {
    opacity: 0
}

.has--draggable:hover .is--draggable-hover-container:hover .is--draggable--standalone {
    opacity: 1
}

.is--text--regular {
    font-weight: 400 !important
}

.is--text--medium, .is--text--regular {
    font-family: Avenir Next W02 !important
}

.is--text--medium {
    font-weight: 500 !important
}

.is--text--bold, .is--text--demibold {
    font-family: Avenir Next W02 !important;
    font-weight: 600 !important
}

.is--text--error {
    color: #f2545b !important
}

.is--text--help {
    color: #516f90 !important
}

.is--text--success {
    color: #00a38d !important
}

.is--text--disabled {
    color: #b0c1d4
}

.has--on-dark {
    color: #fff
}

.is--medium-contrast {
    background-color: #f5f8fa
}

.is--high-contrast {
    background-color: #33475b;
    color: #fff
}

.is--selected-item {
    background-color: #eaf0f6
}

.customer-data-sidebar--card_is-preview {
    background-color: #fff
}

.customer-data-sidebar--card-section_is-dragging {
    background-color: #f5f8fa
}

.customer-data-sidebar--card-section_is-dragging-infront {
    border-color: #00a4bd;
    border-style: solid;
    border-width: 2px 0 0
}

.customer-data-sidebar--card-section_is-dragging-behind {
    border-color: #00a4bd;
    border-style: solid;
    border-width: 0 0 2px
}

.customer-data-sidebar--card-section_is-dragging .customer-data-sidebar--card {
    opacity: 0
}

.chicklets-datePassed {
    color: #d94c53
}

.customer-data-sidebar--save-bar {
    background-color: #f5f8fa;
    border-top: 1px solid #cbd6e2;
    padding: 1rem 140px 1rem 3.25rem
}

.private-form__set--floating .private-form__label--floating.private-form__label--floating-as-placeholder {
    font-size: .75rem
}

.read-only .private-form__label--floating.private-form__label--floating-as-placeholder {
    cursor: default
}

.private-form__set--floating.floating-field-with-border {
    border-top: 1px dashed #dfe3eb;
    border-bottom: none
}

    .private-form__set--floating.floating-field-with-border:first-child {
        border-top-color: transparent
    }

    .private-form__set--floating.floating-field-with-border:hover {
        border-top-color: #dfe3eb;
        border-top-style: solid
    }

        .private-form__set--floating.floating-field-with-border:hover + .private-form__set--floating {
            border-top-style: solid
        }

    .private-form__set--floating.floating-field-with-border:last-child {
        border-bottom: 1px solid transparent
    }

        .private-form__set--floating.floating-field-with-border:last-child:hover {
            border-bottom-color: #dfe3eb
        }



.EmbeddedObjectCreatorDialog-panel .private-panel__container.private-panel__container--with-body {
    padding: 0
}

    .EmbeddedObjectCreatorDialog-panel .private-panel__container.private-panel__container--with-body .is--module {
        padding: 0;
        display: flex;
        height: 100vh;
        margin: 0
    }

        .EmbeddedObjectCreatorDialog-panel .private-panel__container.private-panel__container--with-body .is--module iframe {
            height: 100%
        }

.container {
    margin-left: auto;
    margin-right: auto;
    padding-left: 16px;
    padding-right: 16px
}

@media (min-width:544px) {
    .container {
        max-width: 576px
    }
}

@media (min-width:768px) {
    .container {
        max-width: 720px
    }
}

@media (min-width:992px) {
    .container {
        max-width: 940px
    }
}

@media (min-width:1200px) {
    .container {
        max-width: 1140px
    }
}

.container-fluid {
    margin-left: auto;
    margin-right: auto;
    padding-left: 16px;
    padding-right: 16px
}

.row {
    display: flex;
    flex-wrap: wrap;
    margin-left: -16px;
    margin-right: -16px
}

.col-lg-1, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-lg-10, .col-lg-11, .col-lg-12, .col-md-1, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-md-10, .col-md-11, .col-md-12, .col-sm-1, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-sm-10, .col-sm-11, .col-sm-12, .col-xl-1, .col-xl-2, .col-xl-3, .col-xl-4, .col-xl-5, .col-xl-6, .col-xl-7, .col-xl-8, .col-xl-9, .col-xl-10, .col-xl-11, .col-xl-12, .col-xs-1, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9, .col-xs-10, .col-xs-11, .col-xs-12 {
    position: relative;
    padding-left: 16px;
    padding-right: 16px
}

    .col-lg-1:empty, .col-lg-2:empty, .col-lg-3:empty, .col-lg-4:empty, .col-lg-5:empty, .col-lg-6:empty, .col-lg-7:empty, .col-lg-8:empty, .col-lg-9:empty, .col-lg-10:empty, .col-lg-11:empty, .col-lg-12:empty, .col-md-1:empty, .col-md-2:empty, .col-md-3:empty, .col-md-4:empty, .col-md-5:empty, .col-md-6:empty, .col-md-7:empty, .col-md-8:empty, .col-md-9:empty, .col-md-10:empty, .col-md-11:empty, .col-md-12:empty, .col-sm-1:empty, .col-sm-2:empty, .col-sm-3:empty, .col-sm-4:empty, .col-sm-5:empty, .col-sm-6:empty, .col-sm-7:empty, .col-sm-8:empty, .col-sm-9:empty, .col-sm-10:empty, .col-sm-11:empty, .col-sm-12:empty, .col-xl-1:empty, .col-xl-2:empty, .col-xl-3:empty, .col-xl-4:empty, .col-xl-5:empty, .col-xl-6:empty, .col-xl-7:empty, .col-xl-8:empty, .col-xl-9:empty, .col-xl-10:empty, .col-xl-11:empty, .col-xl-12:empty, .col-xs-1:empty, .col-xs-2:empty, .col-xs-3:empty, .col-xs-4:empty, .col-xs-5:empty, .col-xs-6:empty, .col-xs-7:empty, .col-xs-8:empty, .col-xs-9:empty, .col-xs-10:empty, .col-xs-11:empty, .col-xs-12:empty {
        min-height: 1px
    }

.col-xs-1 {
    flex: 0 0 8.33333%;
    max-width: 8.33333%
}

.col-xs-2 {
    flex: 0 0 16.66667%;
    max-width: 16.66667%
}

.col-xs-3 {
    flex: 0 0 25%;
    max-width: 25%
}

.col-xs-4 {
    flex: 0 0 33.33333%;
    max-width: 33.33333%
}

.col-xs-5 {
    flex: 0 0 41.66667%;
    max-width: 41.66667%
}

.col-xs-6 {
    flex: 0 0 50%;
    max-width: 50%
}

.col-xs-7 {
    flex: 0 0 58.33333%;
    max-width: 58.33333%
}

.col-xs-8 {
    flex: 0 0 66.66667%;
    max-width: 66.66667%
}

.col-xs-9 {
    flex: 0 0 75%;
    max-width: 75%
}

.col-xs-10 {
    flex: 0 0 83.33333%;
    max-width: 83.33333%
}

.col-xs-11 {
    flex: 0 0 91.66667%;
    max-width: 91.66667%
}

.col-xs-12 {
    flex: 0 0 100%;
    max-width: 100%
}

.col-xs-pull-0 {
    right: auto
}

.col-xs-pull-1 {
    right: 8.33333%
}

.col-xs-pull-2 {
    right: 16.66667%
}

.col-xs-pull-3 {
    right: 25%
}

.col-xs-pull-4 {
    right: 33.33333%
}

.col-xs-pull-5 {
    right: 41.66667%
}

.col-xs-pull-6 {
    right: 50%
}

.col-xs-pull-7 {
    right: 58.33333%
}

.col-xs-pull-8 {
    right: 66.66667%
}

.col-xs-pull-9 {
    right: 75%
}

.col-xs-pull-10 {
    right: 83.33333%
}

.col-xs-pull-11 {
    right: 91.66667%
}

.col-xs-pull-12 {
    right: 100%
}

.col-xs-push-0 {
    left: auto
}

.col-xs-push-1 {
    left: 8.33333%
}

.col-xs-push-2 {
    left: 16.66667%
}

.col-xs-push-3 {
    left: 25%
}

.col-xs-push-4 {
    left: 33.33333%
}

.col-xs-push-5 {
    left: 41.66667%
}

.col-xs-push-6 {
    left: 50%
}

.col-xs-push-7 {
    left: 58.33333%
}

.col-xs-push-8 {
    left: 66.66667%
}

.col-xs-push-9 {
    left: 75%
}

.col-xs-push-10 {
    left: 83.33333%
}

.col-xs-push-11 {
    left: 91.66667%
}

.col-xs-push-12 {
    left: 100%
}

.col-xs-offset-0 {
    margin-left: 0
}

.col-xs-offset-1 {
    margin-left: 8.33333%
}

.col-xs-offset-2 {
    margin-left: 16.66667%
}

.col-xs-offset-3 {
    margin-left: 25%
}

.col-xs-offset-4 {
    margin-left: 33.33333%
}

.col-xs-offset-5 {
    margin-left: 41.66667%
}

.col-xs-offset-6 {
    margin-left: 50%
}

.col-xs-offset-7 {
    margin-left: 58.33333%
}

.col-xs-offset-8 {
    margin-left: 66.66667%
}

.col-xs-offset-9 {
    margin-left: 75%
}

.col-xs-offset-10 {
    margin-left: 83.33333%
}

.col-xs-offset-11 {
    margin-left: 91.66667%
}

.col-xs-offset-12 {
    margin-left: 100%
}

@media (min-width:544px) {
    .col-sm-1 {
        flex: 0 0 8.33333%;
        max-width: 8.33333%
    }

    .col-sm-2 {
        flex: 0 0 16.66667%;
        max-width: 16.66667%
    }

    .col-sm-3 {
        flex: 0 0 25%;
        max-width: 25%
    }

    .col-sm-4 {
        flex: 0 0 33.33333%;
        max-width: 33.33333%
    }

    .col-sm-5 {
        flex: 0 0 41.66667%;
        max-width: 41.66667%
    }

    .col-sm-6 {
        flex: 0 0 50%;
        max-width: 50%
    }

    .col-sm-7 {
        flex: 0 0 58.33333%;
        max-width: 58.33333%
    }

    .col-sm-8 {
        flex: 0 0 66.66667%;
        max-width: 66.66667%
    }

    .col-sm-9 {
        flex: 0 0 75%;
        max-width: 75%
    }

    .col-sm-10 {
        flex: 0 0 83.33333%;
        max-width: 83.33333%
    }

    .col-sm-11 {
        flex: 0 0 91.66667%;
        max-width: 91.66667%
    }

    .col-sm-12 {
        flex: 0 0 100%;
        max-width: 100%
    }

    .col-sm-pull-0 {
        right: auto
    }

    .col-sm-pull-1 {
        right: 8.33333%
    }

    .col-sm-pull-2 {
        right: 16.66667%
    }

    .col-sm-pull-3 {
        right: 25%
    }

    .col-sm-pull-4 {
        right: 33.33333%
    }

    .col-sm-pull-5 {
        right: 41.66667%
    }

    .col-sm-pull-6 {
        right: 50%
    }

    .col-sm-pull-7 {
        right: 58.33333%
    }

    .col-sm-pull-8 {
        right: 66.66667%
    }

    .col-sm-pull-9 {
        right: 75%
    }

    .col-sm-pull-10 {
        right: 83.33333%
    }

    .col-sm-pull-11 {
        right: 91.66667%
    }

    .col-sm-pull-12 {
        right: 100%
    }

    .col-sm-push-0 {
        left: auto
    }

    .col-sm-push-1 {
        left: 8.33333%
    }

    .col-sm-push-2 {
        left: 16.66667%
    }

    .col-sm-push-3 {
        left: 25%
    }

    .col-sm-push-4 {
        left: 33.33333%
    }

    .col-sm-push-5 {
        left: 41.66667%
    }

    .col-sm-push-6 {
        left: 50%
    }

    .col-sm-push-7 {
        left: 58.33333%
    }

    .col-sm-push-8 {
        left: 66.66667%
    }

    .col-sm-push-9 {
        left: 75%
    }

    .col-sm-push-10 {
        left: 83.33333%
    }

    .col-sm-push-11 {
        left: 91.66667%
    }

    .col-sm-push-12 {
        left: 100%
    }

    .col-sm-offset-0 {
        margin-left: 0
    }

    .col-sm-offset-1 {
        margin-left: 8.33333%
    }

    .col-sm-offset-2 {
        margin-left: 16.66667%
    }

    .col-sm-offset-3 {
        margin-left: 25%
    }

    .col-sm-offset-4 {
        margin-left: 33.33333%
    }

    .col-sm-offset-5 {
        margin-left: 41.66667%
    }

    .col-sm-offset-6 {
        margin-left: 50%
    }

    .col-sm-offset-7 {
        margin-left: 58.33333%
    }

    .col-sm-offset-8 {
        margin-left: 66.66667%
    }

    .col-sm-offset-9 {
        margin-left: 75%
    }

    .col-sm-offset-10 {
        margin-left: 83.33333%
    }

    .col-sm-offset-11 {
        margin-left: 91.66667%
    }

    .col-sm-offset-12 {
        margin-left: 100%
    }
}

@media (min-width:768px) {
    .col-md-1 {
        flex: 0 0 8.33333%;
        max-width: 8.33333%
    }

    .col-md-2 {
        flex: 0 0 16.66667%;
        max-width: 16.66667%
    }

    .col-md-3 {
        flex: 0 0 25%;
        max-width: 25%
    }

    .col-md-4 {
        flex: 0 0 33.33333%;
        max-width: 33.33333%
    }

    .col-md-5 {
        flex: 0 0 41.66667%;
        max-width: 41.66667%
    }

    .col-md-6 {
        flex: 0 0 50%;
        max-width: 50%
    }

    .col-md-7 {
        flex: 0 0 58.33333%;
        max-width: 58.33333%
    }

    .col-md-8 {
        flex: 0 0 66.66667%;
        max-width: 66.66667%
    }

    .col-md-9 {
        flex: 0 0 75%;
        max-width: 75%
    }

    .col-md-10 {
        flex: 0 0 83.33333%;
        max-width: 83.33333%
    }

    .col-md-11 {
        flex: 0 0 91.66667%;
        max-width: 91.66667%
    }

    .col-md-12 {
        flex: 0 0 100%;
        max-width: 100%
    }

    .col-md-pull-0 {
        right: auto
    }

    .col-md-pull-1 {
        right: 8.33333%
    }

    .col-md-pull-2 {
        right: 16.66667%
    }

    .col-md-pull-3 {
        right: 25%
    }

    .col-md-pull-4 {
        right: 33.33333%
    }

    .col-md-pull-5 {
        right: 41.66667%
    }

    .col-md-pull-6 {
        right: 50%
    }

    .col-md-pull-7 {
        right: 58.33333%
    }

    .col-md-pull-8 {
        right: 66.66667%
    }

    .col-md-pull-9 {
        right: 75%
    }

    .col-md-pull-10 {
        right: 83.33333%
    }

    .col-md-pull-11 {
        right: 91.66667%
    }

    .col-md-pull-12 {
        right: 100%
    }

    .col-md-push-0 {
        left: auto
    }

    .col-md-push-1 {
        left: 8.33333%
    }

    .col-md-push-2 {
        left: 16.66667%
    }

    .col-md-push-3 {
        left: 25%
    }

    .col-md-push-4 {
        left: 33.33333%
    }

    .col-md-push-5 {
        left: 41.66667%
    }

    .col-md-push-6 {
        left: 50%
    }

    .col-md-push-7 {
        left: 58.33333%
    }

    .col-md-push-8 {
        left: 66.66667%
    }

    .col-md-push-9 {
        left: 75%
    }

    .col-md-push-10 {
        left: 83.33333%
    }

    .col-md-push-11 {
        left: 91.66667%
    }

    .col-md-push-12 {
        left: 100%
    }

    .col-md-offset-0 {
        margin-left: 0
    }

    .col-md-offset-1 {
        margin-left: 8.33333%
    }

    .col-md-offset-2 {
        margin-left: 16.66667%
    }

    .col-md-offset-3 {
        margin-left: 25%
    }

    .col-md-offset-4 {
        margin-left: 33.33333%
    }

    .col-md-offset-5 {
        margin-left: 41.66667%
    }

    .col-md-offset-6 {
        margin-left: 50%
    }

    .col-md-offset-7 {
        margin-left: 58.33333%
    }

    .col-md-offset-8 {
        margin-left: 66.66667%
    }

    .col-md-offset-9 {
        margin-left: 75%
    }

    .col-md-offset-10 {
        margin-left: 83.33333%
    }

    .col-md-offset-11 {
        margin-left: 91.66667%
    }

    .col-md-offset-12 {
        margin-left: 100%
    }
}

@media (min-width:992px) {
    .col-lg-1 {
        flex: 0 0 8.33333%;
        max-width: 8.33333%
    }

    .col-lg-2 {
        flex: 0 0 16.66667%;
        max-width: 16.66667%
    }

    .col-lg-3 {
        flex: 0 0 25%;
        max-width: 25%
    }

    .col-lg-4 {
        flex: 0 0 33.33333%;
        max-width: 33.33333%
    }

    .col-lg-5 {
        flex: 0 0 41.66667%;
        max-width: 41.66667%
    }

    .col-lg-6 {
        flex: 0 0 50%;
        max-width: 50%
    }

    .col-lg-7 {
        flex: 0 0 58.33333%;
        max-width: 58.33333%
    }

    .col-lg-8 {
        flex: 0 0 66.66667%;
        max-width: 66.66667%
    }

    .col-lg-9 {
        flex: 0 0 75%;
        max-width: 75%
    }

    .col-lg-10 {
        flex: 0 0 83.33333%;
        max-width: 83.33333%
    }

    .col-lg-11 {
        flex: 0 0 91.66667%;
        max-width: 91.66667%
    }

    .col-lg-12 {
        flex: 0 0 100%;
        max-width: 100%
    }

    .col-lg-pull-0 {
        right: auto
    }

    .col-lg-pull-1 {
        right: 8.33333%
    }

    .col-lg-pull-2 {
        right: 16.66667%
    }

    .col-lg-pull-3 {
        right: 25%
    }

    .col-lg-pull-4 {
        right: 33.33333%
    }

    .col-lg-pull-5 {
        right: 41.66667%
    }

    .col-lg-pull-6 {
        right: 50%
    }

    .col-lg-pull-7 {
        right: 58.33333%
    }

    .col-lg-pull-8 {
        right: 66.66667%
    }

    .col-lg-pull-9 {
        right: 75%
    }

    .col-lg-pull-10 {
        right: 83.33333%
    }

    .col-lg-pull-11 {
        right: 91.66667%
    }

    .col-lg-pull-12 {
        right: 100%
    }

    .col-lg-push-0 {
        left: auto
    }

    .col-lg-push-1 {
        left: 8.33333%
    }

    .col-lg-push-2 {
        left: 16.66667%
    }

    .col-lg-push-3 {
        left: 25%
    }

    .col-lg-push-4 {
        left: 33.33333%
    }

    .col-lg-push-5 {
        left: 41.66667%
    }

    .col-lg-push-6 {
        left: 50%
    }

    .col-lg-push-7 {
        left: 58.33333%
    }

    .col-lg-push-8 {
        left: 66.66667%
    }

    .col-lg-push-9 {
        left: 75%
    }

    .col-lg-push-10 {
        left: 83.33333%
    }

    .col-lg-push-11 {
        left: 91.66667%
    }

    .col-lg-push-12 {
        left: 100%
    }

    .col-lg-offset-0 {
        margin-left: 0
    }

    .col-lg-offset-1 {
        margin-left: 8.33333%
    }

    .col-lg-offset-2 {
        margin-left: 16.66667%
    }

    .col-lg-offset-3 {
        margin-left: 25%
    }

    .col-lg-offset-4 {
        margin-left: 33.33333%
    }

    .col-lg-offset-5 {
        margin-left: 41.66667%
    }

    .col-lg-offset-6 {
        margin-left: 50%
    }

    .col-lg-offset-7 {
        margin-left: 58.33333%
    }

    .col-lg-offset-8 {
        margin-left: 66.66667%
    }

    .col-lg-offset-9 {
        margin-left: 75%
    }

    .col-lg-offset-10 {
        margin-left: 83.33333%
    }

    .col-lg-offset-11 {
        margin-left: 91.66667%
    }

    .col-lg-offset-12 {
        margin-left: 100%
    }
}

@media (min-width:1200px) {
    .col-xl-1 {
        flex: 0 0 8.33333%;
        max-width: 8.33333%
    }

    .col-xl-2 {
        flex: 0 0 16.66667%;
        max-width: 16.66667%
    }

    .col-xl-3 {
        flex: 0 0 25%;
        max-width: 25%
    }

    .col-xl-4 {
        flex: 0 0 33.33333%;
        max-width: 33.33333%
    }

    .col-xl-5 {
        flex: 0 0 41.66667%;
        max-width: 41.66667%
    }

    .col-xl-6 {
        flex: 0 0 50%;
        max-width: 50%
    }

    .col-xl-7 {
        flex: 0 0 58.33333%;
        max-width: 58.33333%
    }

    .col-xl-8 {
        flex: 0 0 66.66667%;
        max-width: 66.66667%
    }

    .col-xl-9 {
        flex: 0 0 75%;
        max-width: 75%
    }

    .col-xl-10 {
        flex: 0 0 83.33333%;
        max-width: 83.33333%
    }

    .col-xl-11 {
        flex: 0 0 91.66667%;
        max-width: 91.66667%
    }

    .col-xl-12 {
        flex: 0 0 100%;
        max-width: 100%
    }

    .col-xl-pull-0 {
        right: auto
    }

    .col-xl-pull-1 {
        right: 8.33333%
    }

    .col-xl-pull-2 {
        right: 16.66667%
    }

    .col-xl-pull-3 {
        right: 25%
    }

    .col-xl-pull-4 {
        right: 33.33333%
    }

    .col-xl-pull-5 {
        right: 41.66667%
    }

    .col-xl-pull-6 {
        right: 50%
    }

    .col-xl-pull-7 {
        right: 58.33333%
    }

    .col-xl-pull-8 {
        right: 66.66667%
    }

    .col-xl-pull-9 {
        right: 75%
    }

    .col-xl-pull-10 {
        right: 83.33333%
    }

    .col-xl-pull-11 {
        right: 91.66667%
    }

    .col-xl-pull-12 {
        right: 100%
    }

    .col-xl-push-0 {
        left: auto
    }

    .col-xl-push-1 {
        left: 8.33333%
    }

    .col-xl-push-2 {
        left: 16.66667%
    }

    .col-xl-push-3 {
        left: 25%
    }

    .col-xl-push-4 {
        left: 33.33333%
    }

    .col-xl-push-5 {
        left: 41.66667%
    }

    .col-xl-push-6 {
        left: 50%
    }

    .col-xl-push-7 {
        left: 58.33333%
    }

    .col-xl-push-8 {
        left: 66.66667%
    }

    .col-xl-push-9 {
        left: 75%
    }

    .col-xl-push-10 {
        left: 83.33333%
    }

    .col-xl-push-11 {
        left: 91.66667%
    }

    .col-xl-push-12 {
        left: 100%
    }

    .col-xl-offset-0 {
        margin-left: 0
    }

    .col-xl-offset-1 {
        margin-left: 8.33333%
    }

    .col-xl-offset-2 {
        margin-left: 16.66667%
    }

    .col-xl-offset-3 {
        margin-left: 25%
    }

    .col-xl-offset-4 {
        margin-left: 33.33333%
    }

    .col-xl-offset-5 {
        margin-left: 41.66667%
    }

    .col-xl-offset-6 {
        margin-left: 50%
    }

    .col-xl-offset-7 {
        margin-left: 58.33333%
    }

    .col-xl-offset-8 {
        margin-left: 66.66667%
    }

    .col-xl-offset-9 {
        margin-left: 75%
    }

    .col-xl-offset-10 {
        margin-left: 83.33333%
    }

    .col-xl-offset-11 {
        margin-left: 91.66667%
    }

    .col-xl-offset-12 {
        margin-left: 100%
    }
}

.col-xs-first {
    order: -1
}

.col-xs-last {
    order: 1
}

@media (min-width:544px) {
    .col-sm-first {
        order: -1
    }

    .col-sm-last {
        order: 1
    }
}

@media (min-width:768px) {
    .col-md-first {
        order: -1
    }

    .col-md-last {
        order: 1
    }
}

@media (min-width:992px) {
    .col-lg-first {
        order: -1
    }

    .col-lg-last {
        order: 1
    }
}

@media (min-width:1200px) {
    .col-xl-first {
        order: -1
    }

    .col-xl-last {
        order: 1
    }
}

.row-xs-top {
    align-items: flex-start
}

.row-xs-center {
    align-items: center
}

.row-xs-bottom {
    align-items: flex-end
}

@media (min-width:544px) {
    .row-sm-top {
        align-items: flex-start
    }

    .row-sm-center {
        align-items: center
    }

    .row-sm-bottom {
        align-items: flex-end
    }
}

@media (min-width:768px) {
    .row-md-top {
        align-items: flex-start
    }

    .row-md-center {
        align-items: center
    }

    .row-md-bottom {
        align-items: flex-end
    }
}

@media (min-width:992px) {
    .row-lg-top {
        align-items: flex-start
    }

    .row-lg-center {
        align-items: center
    }

    .row-lg-bottom {
        align-items: flex-end
    }
}

@media (min-width:1200px) {
    .row-xl-top {
        align-items: flex-start
    }

    .row-xl-center {
        align-items: center
    }

    .row-xl-bottom {
        align-items: flex-end
    }
}

.col-xs-top {
    align-self: flex-start
}

.col-xs-center {
    align-self: center
}

.col-xs-bottom {
    align-self: flex-end
}

@media (min-width:544px) {
    .col-sm-top {
        align-self: flex-start
    }

    .col-sm-center {
        align-self: center
    }

    .col-sm-bottom {
        align-self: flex-end
    }
}

@media (min-width:768px) {
    .col-md-top {
        align-self: flex-start
    }

    .col-md-center {
        align-self: center
    }

    .col-md-bottom {
        align-self: flex-end
    }
}

@media (min-width:992px) {
    .col-lg-top {
        align-self: flex-start
    }

    .col-lg-center {
        align-self: center
    }

    .col-lg-bottom {
        align-self: flex-end
    }
}

@media (min-width:1200px) {
    .col-xl-top {
        align-self: flex-start
    }

    .col-xl-center {
        align-self: center
    }

    .col-xl-bottom {
        align-self: flex-end
    }
}

.flex-shrink-0, .no-shrink {
    display: flex;
    flex-shrink: 0 !important
}

.flex-grow-1 {
    display: flex;
    flex-grow: 1 !important
}

.flex-no-wrap {
    display: flex;
    flex-wrap: nowrap !important
}

.flex-wrap {
    display: flex;
    flex-wrap: wrap !important
}

.flex-wrap-reverse {
    display: flex;
    flex-wrap: wrap-reverse !important
}

.flex-column {
    display: flex;
    flex-direction: column !important
}

.flex-row {
    display: flex;
    flex-direction: row !important
}

.justify-start {
    display: flex;
    justify-content: flex-start !important
}

.justify-end {
    display: flex;
    justify-content: flex-end !important
}

.justify-between {
    display: flex;
    justify-content: space-between !important
}

.justify-around {
    display: flex;
    justify-content: space-around !important
}

.justify-center {
    display: flex;
    justify-content: center !important
}

.align-start {
    display: flex;
    align-items: flex-start !important
}

.align-end {
    display: flex;
    align-items: flex-end !important
}

.align-center {
    display: flex;
    align-items: center !important
}

.align-stretch {
    display: flex;
    align-items: stretch !important
}

.align-baseline {
    display: flex;
    align-items: baseline !important
}

.align-self-start {
    display: flex;
    align-self: flex-start !important
}

.align-self-end {
    display: flex;
    align-self: flex-end !important
}

.align-self-center {
    display: flex;
    align-self: center !important
}

.align-self-stretch {
    display: flex;
    align-self: stretch !important
}

.align-self-baseline {
    display: flex;
    align-self: baseline !important
}

.datepicker-stacked .entire-unit, .datepicker-stacked .reporting-date-range--entire-unit {
    display: flex;
    align-self: baseline
}

.mini-loading-placeholder {
    display: inline-block;
    transform: scale(.5)
}

.reporting-loading-overlay {
    background-color: #fff;
    padding: 0
}

.FilterEditorFieldSelect {
    min-height: 400px
}

.splash-message {
    padding: 40px;
    margin: 24px auto;
    text-align: center
}

    .splash-message .loading-message .uiLoading {
        margin: 8px auto
    }

.uiDateRangePicker {
    display: inline-flex;
    align-items: center
}

    .uiDateRangePicker.form-style .uiDropdown__button {
        width: 200px
    }

    .uiDateRangePicker .private-form__toggle__text {
        padding-right: 0;
        font-size: 14px
    }

    .uiDateRangePicker .reporting-date-range--entire-unit {
        align-self: center
    }

        .uiDateRangePicker .reporting-date-range--entire-unit .private-checkbox__text {
            font-size: 14px
        }

.datepicker-stacked {
    flex-direction: column;
    width: 100%
}

    .datepicker-stacked.form-style .uiDropdown__button {
        width: 100%
    }

    .datepicker-stacked .custom-dates .hs-pickadate:first-child, .datepicker-stacked .date-type {
        margin-bottom: 8px
    }

.range-type {
    max-height: 300px;
    overflow-y: scroll
}

.reporting-tooltip {
    position: fixed;
    transform: translate(-50%,calc(-100% - 16px));
    display: inline-block;
    z-index: 10;
    border: 1px solid #cbd6e2;
    border-radius: 3px;
    overflow: hidden
}

    .reporting-tooltip .reporting-tooltip-title {
        background-color: #516f90;
        color: #fff;
        white-space: nowrap;
        padding: 8px
    }

    .reporting-tooltip .reporting-tooltip-body {
        color: #516f90;
        background-color: #fff;
        padding: 8px
    }

.report-loading-spinner-grow {
    height: 100%
}

.report-status-error, .report-status-loaded, .report-status-loading {
    display: flex;
    flex-direction: column;
    flex-grow: 1
}

.chart-holder {
    flex-grow: 1
}

.table-report .private-table .private-table-sort-toggle {
    padding-left: .5rem
}

.table-report .private-table td {
    height: 2.9rem;
    white-space: nowrap
}

    .table-report .private-table td.checkbox-col {
        width: 1rem
    }

    .table-report .private-table td .private-button {
        line-height: normal
    }

.table-report .private-table tfoot th {
    height: 2.9rem
}

.table-report .private-table td:not(.row-key), .table-report .private-table th:not(.row-key) {
    text-align: right
}

.table-report .private-table th:not(.checkbox-col) {
    min-width: 120px
}

.table-report .private-table .pivot-parent-cell {
    margin-bottom: 0
}

    .table-report .private-table .pivot-parent-cell .private-accordion__text-wrapper > .private-truncated-string {
        table-layout: auto
    }

.datawell-contents {
    display: flex;
    overflow: auto
}

    .datawell-contents .info-list {
        width: 100%;
        margin: auto;
        padding-left: 12px;
        padding-right: 12px;
        display: flex;
        justify-content: center;
        flex-flow: row wrap
    }

        .datawell-contents .info-list .info-item {
            display: flex;
            flex-direction: column;
            font-size: 16px;
            text-align: center;
            min-width: 120px;
            max-width: 150px;
            margin: 8px
        }

            .datawell-contents .info-list .info-item .info-value {
                font-size: 24px;
                font-weight: 400;
                white-space: nowrap;
                color: #425b76;
                flex-grow: 1
            }

            .datawell-contents .info-list .info-item .info-label {
                font-size: 16px;
                letter-spacing: .015em;
                line-height: 1;
                vertical-align: middle;
                text-transform: uppercase;
                -webkit-hyphens: none;
                -ms-hyphens: none;
                hyphens: none;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                width: 100%;
                margin: 0;
                padding-bottom: 4px;
                color: #425b76
            }

                .datawell-contents .info-list .info-item .info-label .icon {
                    margin-right: 4px
                }

.highcharts-tooltip {
    z-index: 11
}

    .highcharts-tooltip .custom-highcharts-tooltip {
        min-width: 150px;
        box-shadow: 0 3px 8px rgba(0,0,0,.1)
    }

        .highcharts-tooltip .custom-highcharts-tooltip .tooltip-header {
            background-color: #425b76;
            color: #fff;
            border-radius: 3px 3px 0 0;
            padding: 8px
        }

        .highcharts-tooltip .custom-highcharts-tooltip .tooltip-footer {
            padding: 8px;
            color: #425b76;
            background-color: #fff
        }

        .highcharts-tooltip .custom-highcharts-tooltip .series-symbol, .highcharts-tooltip .custom-highcharts-tooltip .series-symbol-outline {
            border-radius: 50%;
            width: 8px;
            height: 8px;
            display: inline-block;
            margin-right: 4px
        }

        .highcharts-tooltip .custom-highcharts-tooltip .series-symbol-outline {
            border-width: 2px;
            border-style: solid
        }

        .highcharts-tooltip .custom-highcharts-tooltip .tooltip-body {
            padding: 8px;
            color: #425b76;
            background-color: #fff
        }

            .highcharts-tooltip .custom-highcharts-tooltip .tooltip-body.piechart-tooltip-body, .highcharts-tooltip .custom-highcharts-tooltip .tooltip-body .tooltip-list-container {
                display: flex
            }

            .highcharts-tooltip .custom-highcharts-tooltip .tooltip-body .tooltip-label {
                flex-grow: 1
            }

            .highcharts-tooltip .custom-highcharts-tooltip .tooltip-body .selected {
                font-weight: 700
            }

            .highcharts-tooltip .custom-highcharts-tooltip .tooltip-body .value {
                color: #516f90;
                font-weight: 500;
                align-self: flex-end;
                padding-left: 4px
            }

.delta-percentage {
    font-size: .875rem;
    margin-left: 12px
}

.widget {
    height: 100%;
    display: flex;
    flex-direction: column
}

    .widget .widget-setting-hints > :not(:first-child) {
        padding-left: 8px;
        margin-left: 8px;
        border-left: 1px solid #cbd6e2
    }

    .widget .widget-header {
        color: #33475b;
        padding-top: 0;
        padding-bottom: 0
    }

        .widget .widget-header.private-header--width-constrained .private-header__title {
            display: flex;
            flex-basis: 0;
            flex-grow: 1;
            align-items: center;
            overflow: hidden
        }

            .widget .widget-header.private-header--width-constrained .private-header__title + .private-header__toolbar {
                flex-grow: 0
            }

        .widget .widget-header .widget-actions-container > :not(:last-child), .widget .widget-header .widget-actions > :not(:last-child) {
            margin-right: 12px
        }

        .widget .widget-header .title-container {
            margin-right: 8px;
            overflow: hidden
        }

            .widget .widget-header .title-container .widget-title {
                margin-bottom: 0;
                font-size: 20px;
                color: #425b76
            }

            .widget .widget-header .title-container .drilldown-title {
                font-weight: 500;
                margin-left: 8px;
                font-size: 14px;
                color: #33475b
            }

            .widget .widget-header .title-container .uiButton {
                overflow: hidden;
                color: #213364;
                cursor: pointer;
                display: inline-block
            }

                .widget .widget-header .title-container .uiButton .widget-title-text {
                    white-space: nowrap;
                    text-overflow: ellipsis;
                    margin-bottom: 0
                }

                .widget .widget-header .title-container .uiButton:hover {
                    text-decoration: underline
                }

        .widget .widget-header > .actions-container {
            flex-shrink: 0
        }

    .widget .widget-subheader {
        display: flex;
        align-items: baseline;
        padding-top: 12px;
        border-top: 1px solid #f2f5f8
    }

        .widget .widget-subheader div {
            margin-right: 12px
        }

    .widget .widget-body {
        flex-grow: 1;
        padding-bottom: 20px;
        max-height: 100%;
        width: 100%;
        display: flex;
        flex-direction: column;
        position: relative;
        overflow-y: auto
    }

    .widget .widget-caption {
        border-bottom-left-radius: inherit;
        border-bottom-right-radius: inherit;
        display: block;
        color: #425b76;
        margin: -40px;
        margin-bottom: -40px !important;
        margin-top: 40px;
        overflow: hidden;
        padding: 20px 32px
    }

        .widget .widget-caption.private-caption--info {
            background-color: #e5f5f8
        }

        .widget .widget-caption.private-caption--warning {
            background-color: #fef8f0
        }

        .widget .widget-caption.private-caption--success {
            background-color: #e5f8f6
        }

        .widget .widget-caption.private-caption--danger {
            background-color: #fdedee
        }

    .widget.default-report-widget .widget-body {
        padding: 0;
        display: flex;
        flex-direction: column
    }

.delta-component .delta-value .delta-percent {
    font-style: normal;
    font-size: 14px
}

    .delta-component .delta-value .delta-percent .icon {
        font-size: 10px
    }

        .delta-component .delta-value .delta-percent .icon.icon-down:before {
            color: #f04b51
        }

        .delta-component .delta-value .delta-percent .icon.icon-up:before {
            color: #00bda5
        }

.value-component {
    font-size: 22px;
    font-weight: 400;
    color: #33475b
}

.truncate-text-flex-item {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap
}

.funnel-bar-contents .funnel-bar-row {
    width: 100%;
    display: flex;
    flex-grow: 1;
    min-height: 30px
}

    .funnel-bar-contents .funnel-bar-row.header-container {
        font-weight: 700;
        color: #516f90;
        font-size: 11px;
        flex-grow: 0;
        margin-left: 0;
        margin-right: 0
    }

.funnel-bar-contents .funnel-bar-header {
    flex-grow: 1
}

.funnel-bar-contents .funnel-wrapper {
    height: 95%
}

.funnel-bar-contents .funnel-bar {
    margin: 4px 0 0;
    flex-grow: 1;
    font-size: 13px;
    height: 95%
}

    .funnel-bar-contents .funnel-bar .funnel-bar-stage {
        display: flex;
        align-items: center;
        background: #f5f8fa
    }

    .funnel-bar-contents .funnel-bar .funnel-bar-percent {
        position: relative;
        background: #f5f8fa;
        border-radius: 3px;
        padding: 8px
    }

        .funnel-bar-contents .funnel-bar .funnel-bar-percent .percent-value {
            visibility: hidden
        }

    .funnel-bar-contents .funnel-bar .funnel-bar-band, .funnel-bar-contents .funnel-bar .outer-funnel-value {
        position: absolute;
        top: 0;
        bottom: 0;
        border-radius: 3px;
        color: #fff;
        display: flex;
        align-items: center;
        -webkit-print-color-adjust: exact
    }

    .funnel-bar-contents .funnel-bar .outer-funnel-value {
        color: #425b76;
        margin-right: 8px
    }

.funnel-bar-contents .conversion-column {
    height: 100%;
    width: 110px;
    padding-left: 12px;
    padding-right: 12px;
    display: flex;
    flex-direction: column
}

    .funnel-bar-contents .conversion-column .funnel-bar-conversion {
        font-weight: 700;
        position: relative;
        min-height: 28px;
        margin-top: 12px
    }

        .funnel-bar-contents .conversion-column .funnel-bar-conversion .conversion-value {
            z-index: 1;
            position: absolute;
            margin-top: 4px
        }

.reporting-chevron {
    top: 0;
    height: 100%;
    width: 100%
}

    .reporting-chevron:before {
        left: 0;
        width: 51%;
        transform: skew(0deg,12deg)
    }

    .reporting-chevron:after, .reporting-chevron:before {
        content: "";
        position: absolute;
        top: 0;
        height: 100%;
        background-color: #eaf0f6
    }

    .reporting-chevron:after {
        right: 0;
        width: 50%;
        transform: skew(0deg,-12deg)
    }

* + .reporting-filter-editor {
    margin-top: 24px;
    padding-top: 16px;
    border-top: 1px solid #dfe3eb
}

.reporting-filter-editor > * {
    width: 100%
}

.reporting-filter-editor > .report-filter-editor-header {
    flex-grow: 0;
    flex-shrink: 0;
    width: 100%
}







/*# sourceMappingURL=project.css.map*/

        </style>
            <table style="width:100%;" align="center">  
                    
                <tr>  
                    
                    <td align="center"> 
              
                        
                        


                            <asp:Button align="center" ID="newProjTrigger" Text="New Project" runat="server" OnClick="newProjbutt" CssClass="uiButton private-button private-button--primary private-button--sm add-obj private-button--non-link" />
                            <asp:Button align="center" ID="submitButton" Text="Submit" runat="server" OnClick="subButt" Visible="false" Enabled="false" CssClass="uiButton private-button private-button--secondary private-button--sm private-button--non-link" />
                            <asp:TextBox align="center" ID="tb" Text="Project name" runat="server" Visible="false" Enabled="false"></asp:TextBox>
                            <asp:TextBox align="center" ID="tb2" Text="Project description" runat="server" Visible="false" Enabled="false"></asp:TextBox>

                            


                            <asp:GridView align="center" ID="projects" class="UITable__Table-sc-50rdel-1 jwPJOH table private-table UIStickyHeaderTable__Table-zz8pro-1 fEpNVH table-more-condensed table-bordered table-condensed private-table--condensed" PageSize="25" Font-Size="16px" AllowPaging="True" AutoGenerateColumns="False" pagersettings-Mode = "Numeric" pagersettings-Position="TopAndBottom" AllowSorting="True" Runat="Server" EmptyDataText="No current projects" AutoGenerateDeleteButton="false" OnRowDeleting="OnRowDeleting" OnRowDataBound="OnRowDataBound" OnPageIndexChanging="projects_PageIndexChanging" > <PagerSettings Mode="NumericFirstLast" FirstPageText="First" LastPageText="Last" />
                                <Columns>
                                    <asp:TemplateField HeaderText="View"><ItemTemplate><a href='users.aspx?id=<%#Eval("id")%>&name=<%#Eval("name")%>'>View</a></ItemTemplate></asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <span onclick="return confirm('Are you sure to Delete the record?')">
                                                <asp:LinkButton ID="delete" runat="Server" Text="Delete" CommandName="Delete"></asp:LinkButton>
                                            </span>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="id" HeaderText="id" ><ItemStyle Wrap="true" /></asp:BoundField>
                                    <asp:BoundField DataField="name" HeaderText="name"><ItemStyle Wrap="true" /></asp:BoundField>
                                    <asp:BoundField DataField="description" HeaderText="description" ><ItemStyle Wrap="true" /></asp:BoundField>
                                    <asp:BoundField DataField="created_date" HeaderText="created date" ><ItemStyle Wrap="true" /></asp:BoundField>
                                </Columns>
                            </asp:GridView>
                            <br/>
                            <asp:TextBox align="center" ID="searchbar" Text="Search Query" runat="server" class="FilterBar__FilterBarSectionGeneric-sc-1pq4ioh-2 FilterBar__Start-sc-1pq4ioh-3 oBwUy"></asp:TextBox>
                            <asp:Button align="center" ID="searchbutton" Text="Search" runat="server" OnClick="searchbutton_Click" CssClass="uiButton private-button private-button--secondary private-button--sm private-button--non-link" />
                        
                    </td> 
                    
                </tr>   
</table>
        </form>
    </body>