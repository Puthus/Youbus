<%@ Page Title="" Language="C#" MasterPageFile="~/MP_CompwsHome.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        #content{
            background-color:#dddaef;
            background-image:url(Pics/busStop.png); 
            background-repeat:no-repeat; 
            background-size:contain;
            background-position: center;
        }
        #Text{
            text-align:center;
            padding:50px;
            font-weight:bolder;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" Runat="Server" >
    <div id="PgCnt">
        <div id="Text">
            <h2 style="font-weight: bold; color: #ff992e; font-size: x-large;">Welcome Back</h2><br />
            <h4>some text goes here ...</h4>

        </div>
    </div>
</asp:Content>

