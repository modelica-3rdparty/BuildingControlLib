within BuildingControlLib.BuildingControl.VDI3813.SensorFunctions;
block DewpointMonitoring
  "Sensor function to retrieve dewpoint state from physical sensor"

  /***   ***   ***   ***   ***   ***   ***   ***   ***   ***/
  // Extend from PartialFunctionBlock and insert specific functionality
  extends Interfaces.Partial.PartialFunction(      redeclare
      BuildingControlLib.BuildingControl.VDI3813.SensorFunctions.Internal.DewpointMonitoringFunctionality
      functionality(PAR_CAL=PAR_CAL));

  /***   ***   ***   ***   ***   ***   ***   ***   ***   ***/
  // Connectors
   BuildingControlLib.BuildingControl.VDI3813.Interfaces.PhysicalBooleanInput
    B "Physical signal of dewpoint contact (true = dewpoint reached / false = dewpoint not reached)." annotation (Placement(transformation(extent={{-10,90},{10,110}}),
        iconTransformation(extent={{-20,80},{20,120}})));
   BuildingControlLib.BuildingControl.VDI3813.Interfaces.BooleanOutput
    B_DEW
    "Boolean dewpoint state of rooms or room segments (true = dewpoint reached / false = dewpoint not reached)."
    annotation (Placement(transformation(extent={{100,60},{120,80}}),
        iconTransformation(extent={{100,-20},{160,20}})));
  /***   ***   ***   ***   ***   ***   ***   ***   ***   ***/
  // Parameter definition
  parameter Boolean PAR_CAL = true
    "For specifying the logic of the dewpoint detector.";
equation

  connect(B, functionality.B) annotation (Line(
      points={{0,100},{0,38}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
  connect(B_DEW, functionality.B_DEW) annotation (Line(
      points={{110,70},{80,70},{80,0},{49.4,0}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}),      graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}),
        graphics),  preferredView="info",
Documentation(info="<html>
<h4><span style=\"color:#008000\">Overview</span></h4>
<p>Block that implements function &QUOT;Dewpoint monitoring&QUOT; from VDI 3813 <a href=\"modelica://BuildingControlLib.UsersGuide.References\">[1, section 6.1.4, p. 12-13]</a>. </p>
<h4><span style=\"color:#008000\">Functional Description</span></h4>
<p>&QUOT;The sensor function <i>Dewpoint monitoring</i> (RA-FL section 2, column 3; informative function block Figure 5) provides information on the risk of dew formation at the measuring site in terms of the states &ldquo;dewpoint reached&rdquo; or &ldquo;dewpoint not reached&rdquo;.&QUOT; <a href=\"modelica://BuildingControlLib.UsersGuide.References\">[1, section 6.1.4, p. 12-13]</a></p>
<p>The calibration parameter PAR_CAL is used to choose the right contact logic.</p>
<p>By default PAR_CAL ist true which leads to a positive logic. That means if dewpoint limit is reached B is true and B_DEW is set to true. If dewpoint limit is not reached B is false and B_DEW is set to false.</p>
<p>If PAR_CAL is set to false the logic is complementary/inverted. If dewpoint limit is reached B is false and B_DEW is set to true etc..</p>
<p><b>Fig. 1: </b>&QUOT;Informative representation of the sensor function <i>Dewpoint monitoring</i>&QUOT;, <a href=\"modelica://BuildingControlLib.UsersGuide.References\">[1, section 6.1.4, Figure 5, p. 13]</a></p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"0\"><tr>
<td><p><img src=\"modelica://BuildingControlLib/Resources/Images/docVDI3813_DewpointMonitoring.png\" alt=\"docVDI3813_DewpointMonitoring.png\"/> </p></td>
</tr>
</table>

</html>",
        revisions="<html>
<ul>
<li>March 07, 2017&nbsp; by Georg Ferdinand Schneider &amp; Georg Ambrosius Pe&szlig;ler:<br>Implemented.</li>
</ul>
</html>"));
end DewpointMonitoring;
