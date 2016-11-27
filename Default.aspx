<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>'Our Solar System' by Parag Patel</title>
    
    <link rel="stylesheet" href="style/bootstrap.min.css"/>
    <link rel="stylesheet" href="style/custom.css" />

</head>
<body>
    <form id="form1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server" AsyncPostBackTimeout="0"  />
        
        <div id="welcomeDiv" class="container">

            <div id="resultText"></div>
            <h1 class="jumbotron">Our solar system...</h1>

            <div class="col-sm-3"></div>

                <div id="options" class="col-sm-6">
                    <asp:Button runat="server" id="divLearn" class="btn btn-info" Text="LEARN" OnClientClick="divLearnClicked(); return false;"/>
                    <asp:Button runat="server" id="divQuiz" class="btn btn-primary" data-toggle="modal" data-target="#quizModal" Text="QUIZ" OnClientClick="return false;" />
                </div>

            <div class="col-sm-3"></div>

        </div>
        

        <div id="learnDiv">

            <div class="alert alert-success" style="text-align: center;">
                Click on the various celestial bodies to learn more about them, or go back using the button below.
            </div> 

            <div class="container" id="section">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional" ViewStateMode="Disabled" ChildrenAsTriggers="False">
                    <ContentTemplate>
                        <div id="leftInfo" class="col-sm-3">
                            <asp:Image ID="picDiv" runat="server" Visible="False" />  
                        </div>
                    </ContentTemplate>
                      <Triggers>
                         <asp:AsyncPostBackTrigger ControlID="solarSystem" EventName="Click" />
                     </Triggers>
                    </asp:UpdatePanel> 

                <div class="col-sm-6">
  
                    <asp:ImageMap ID="solarSystem" runat="server" ImageUrl="images/SolarSystemImage.jpg" OnClick="solarSystem_Click" Visible="True" HotSpotMode="PostBack">
                        <asp:CircleHotSpot PostBackValue="theSun" X="314" Y="292" Radius="45" HotSpotMode="PostBack"></asp:CircleHotSpot>
                        <asp:CircleHotSpot PostBackValue="mercury" X="371" Y="284" Radius="9" HotSpotMode="PostBack"></asp:CircleHotSpot>
                        <asp:CircleHotSpot PostBackValue="venus" X="362" Y="238" Radius="10" HotSpotMode="PostBack"></asp:CircleHotSpot>
                        <asp:CircleHotSpot PostBackValue="earth" X="238" Y="227" Radius="19" HotSpotMode="PostBack"></asp:CircleHotSpot>
                        <asp:CircleHotSpot PostBackValue="mars" X="417" Y="355" Radius="13" HotSpotMode="PostBack"></asp:CircleHotSpot>
                        <asp:CircleHotSpot PostBackValue="jupiter" X="163" Y="381" Radius="29" HotSpotMode="PostBack"></asp:CircleHotSpot>
                        <asp:CircleHotSpot PostBackValue="saturn" X="469" Y="158" Radius="25" HotSpotMode="PostBack"></asp:CircleHotSpot>
                        <asp:CircleHotSpot PostBackValue="uranus" X="296" Y="52" Radius="20" HotSpotMode="PostBack"></asp:CircleHotSpot>
                        <asp:CircleHotSpot PostBackValue="neptune" X="43" Y="259" Radius="20" HotSpotMode="PostBack"></asp:CircleHotSpot>
                    </asp:ImageMap>  
                        
                </div>

                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional" ViewStateMode="Disabled" ChildrenAsTriggers="False">
                <ContentTemplate>
                <div id="rightInfo" class="col-sm-3">
                    <div id="name" class="data">
                        <asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>
                        <asp:Label ID="lblNameV" runat="server" Text=""></asp:Label>  
                    </div>
                       <div id="dist" class="data">
                        <asp:Label ID="opener" runat="server" Text="Distance from Sun (AU) : "></asp:Label>
                        <asp:Label ID="lblDistV" runat="server" Text=""></asp:Label>
                    </div>
                       <div id="mass" class="data">
                        <asp:Label ID="lblMass" runat="server" Text="Mass (kg): "></asp:Label>
                           <br />
                        <asp:Label ID="lblMassV" runat="server" Text=""></asp:Label>  
                    </div>
                       <div id="natsat" class="data">
                        <asp:Label ID="lblNat" runat="server" Text="Natural satellites (#): "></asp:Label>
                        <asp:Label ID="lblNatV" runat="server" Text=""></asp:Label>  
                    </div>
                </div>
                  </ContentTemplate>
                   <Triggers>
                   <asp:AsyncPostBackTrigger ControlID="solarSystem" EventName="Click" />
                   </Triggers>
                  </asp:UpdatePanel> 
            </div>
        <asp:Button class="btn btn-default backBtn" ID="goBackButton" runat="server" Text="GO BACK" OnClientClick="goBackClicked(); return false;" />
        </div>
         
            <div id="quizModal" class="modal fade" role="dialog">
                <div class="modal-dialog">

                    <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Our Solar System: The Quiz</h4>
                </div>
                    <div class="modal-body">
                    <strong>A chance to test what you may have learned...</strong>
                        <br />
                        <br />
                        <p>Answer the questions within your own time!</p>
                        <br />
                        <p>Your final score will be shown at the end - <strong>Good Luck!</strong></p>
                    </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <asp:Button runat="server" type="button" class="btn btn-default" data-dismiss="modal" ID="startQuiz" OnClientClick="startQuizClicked(); return false;" Text="Start"></asp:Button>
                  </div>
                </div>
            
              </div>
            </div>

            <div id="quizDiv" runat="server"> 
                       <asp:Label ID="questionNumber" runat="server" Text=""></asp:Label>                 
                       <asp:Label ID="quizQuestion" runat="server" Text=""></asp:Label>
                        <div id="quizAnswers">
                        <ul>
                            <li>
                                <input type="radio" value="1" name="radio" id="1"/>                         
                                <label for="1" class="answer" id="li1"></label>
                            </li>
                            <li>
                                <input type="radio" value="2" name="radio" id="2"/>
                                <label for="2" class="answer" id="li2"></label>
                            </li>
                            <li>
                                <input type="radio" value="3" name="radio" id="3"/>
                                <label for="3" class="answer" id="li3"></label>
                            </li>
                            <li>
                                <input type="radio" value="4" name="radio" id="4"/>
                                <label for="4" class="answer" id="li4"></label>
                            </li>
                        </ul>
                        </div>    
                <br />                
                         <asp:Button class="btn btn-default backBtn" ID="confirmBtn" runat="server" Text="Continue" OnClientClick="confirmBtnClicked(); return false;" />

            </div>
      

  
    </form>
   
            <script src="scripts/jquery-3.1.1.js"></script> 
            <script src="scripts/timer.jquery.min.js"></script>         
            <script src="scripts/bootstrap.min.js"></script>   
            <script src="scripts/javascript.js"></script>   

</body>
</html>
