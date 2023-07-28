<%@ Page Title="Destinations" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Destinations.aspx.vb" Inherits="EncounterEvents.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">   
    <p style="font-size: xx-large">
        Tour Our Destinations</p>
    <p style="font-size: xx-large; vertical-align: top;">
        <asp:Image ID="imgDestination" runat="server" Height="250px" Width="250px" />
&nbsp;<span id="venueTitle" style="font-size: x-large; vertical-align: top;">This destination</span></p>
    <p id="venueInfo" style="font-size: large; vertical-align: top;">
        This venue&#39;s info&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
    </p>
    <p style="font-size: xx-large; vertical-align: top;"></p>
    <p><a runat="server" href="~/Destinations" class="btn btn-primary btn-lg" id="btnTour" style="text-align: right">Next &raquo;</a></p>
    <p style="font-size: xx-large; vertical-align: top;"></p>
    
     <script type="text/javascript">
         let destPic = document.querySelector("#imgDestination");
         let destTitle = document.querySelector("#venueTitle");
         let destInfo = document.querySelector("#venueInfo");

         let destinations = [
                {
                 "title": "Beautiful Bavaria",
                 "imgURL": "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f8/Schloss_Neuschwanstein_2013.jpg/375px-Schloss_Neuschwanstein_2013.jpg",
                 "info": "This stunning castle..."
                },
                {
                 "title":"Stunning Scotland",
                 "imgURL":"https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Dunrobin_Castle_-Sutherland_-Scotland-26May2008_%282%29.jpg/375px-Dunrobin_Castle_-Sutherland_-Scotland-26May2008_%282%29.jpg",
                 "info": "Known as the \"Jewel..."
                },
                {
                 "title":"Rich Japan",
                 "imgURL":"https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Himeji_castle_in_may_2015.jpg/450px-Himeji_castle_in_may_2015.jpg",
                 "info":"Himeji Castle stands..."
                },
                {  
                 "title": "Brilliant Brittany",
                 "imgURL": "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c9/La_Bretesche.jpg/420px-La_Bretesche.jpg",
                 "info": "The Château de la Br..."
                }
         ];
     </script>

</asp:Content>


