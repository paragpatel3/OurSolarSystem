using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Linq;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {   

    }

    protected void solarSystem_Click(object sender, ImageMapEventArgs e)
    {
        switch (e.PostBackValue)
        {
            case "theSun":
                {
                    lblNameV.Text = "The Sun";
                    picDiv.ImageUrl = "images/theSun.gif";                    
                    picDiv.Visible = true;
                    lblDistV.Text = "0";
                    lblMassV.Text = "2.0 × 10^30";
                    lblNatV.Text = "0";
                    break;
                }
            case "mercury":
                {
                    lblNameV.Text = "Mercury";
                    picDiv.ImageUrl = "images/mercury.gif";
                    picDiv.Visible = true;
                    lblDistV.Text = "0.4";
                    lblMassV.Text = "3.0 × 10^23";
                    lblNatV.Text = "0";
                    break;
                }
            case "venus":
                {
                    lblNameV.Text = "Venus";
                    picDiv.ImageUrl = "images/venus.gif";
                    picDiv.Visible = true;
                    lblDistV.Text = "0.7";
                    lblMassV.Text = "5.0 × 10^24";
                    lblNatV.Text = "0";
                    break;
                }
            case "earth":
                {
                    lblNameV.Text = "Earth";
                    picDiv.ImageUrl = "images/earth.gif";
                    picDiv.Visible = true;
                    lblDistV.Text = "1";
                    lblMassV.Text = "6.0 × 10^24";
                    lblNatV.Text = "1";
                    break;
                }
            case "mars":
                {
                    lblNameV.Text = "Mars";
                    picDiv.ImageUrl = "images/mars.gif";
                    picDiv.Visible = true;
                    lblDistV.Text = "1.5";
                    lblMassV.Text = "6.0 × 10^23";
                    lblNatV.Text = "2";
                    break;
                }
            case "jupiter":
                {
                    lblNameV.Text = "Jupiter";
                    picDiv.ImageUrl = "images/jupiter.gif";
                    picDiv.Visible = true;
                    lblDistV.Text = "5.2";
                    lblMassV.Text = "2.0 × 10^27";
                    lblNatV.Text = "67";
                    break;
                }
            case "saturn":
                {
                    lblNameV.Text = "Saturn";
                    picDiv.ImageUrl = "images/saturn.gif";
                    picDiv.Visible = true;
                    lblDistV.Text = "9.5";
                    lblMassV.Text = "5.5 × 10^26";
                    lblNatV.Text = "62";
                    break;
                }
            case "uranus":
                {
                    lblNameV.Text = "Uranus";
                    picDiv.ImageUrl = "images/uranus.gif";
                    picDiv.Visible = true;
                    lblDistV.Text = "19.2";
                    lblMassV.Text = "9.0 × 10^25";
                    lblNatV.Text = "27";
                    break;
                }
            case "neptune":
                {
                    lblNameV.Text = "Neptune";
                    picDiv.ImageUrl = "images/neptune.gif";
                    picDiv.Visible = true;
                    lblDistV.Text = "30.1";
                    lblMassV.Text = "1.0 × 10^26";
                    lblNatV.Text = "14";
                    break;
                }
        }
    }

}

