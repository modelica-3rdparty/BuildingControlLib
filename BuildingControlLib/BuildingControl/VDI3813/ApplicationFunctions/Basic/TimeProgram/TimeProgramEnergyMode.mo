within BuildingControlLib.BuildingControl.VDI3813.ApplicationFunctions.Basic.TimeProgram;
block TimeProgramEnergyMode
  "Model that contains time schedules for the energy mode of the controlled area"
/***   ***   ***   ***   ***   ***   ***   ***   ***   ***/
  // Extend from PartialFunctionBlock and insert specific functionality
extends
    BuildingControlLib.BuildingControl.VDI3813.Interfaces.Partial.PartialFunction(
        redeclare
      BuildingControlLib.BuildingControl.VDI3813.ApplicationFunctions.Internal.TimeProgramEnergyModeFunctionality
        functionality( offset = offset,
                       startTimeWSCH = startTimeWSCH,
                       startTimeESCH = startTimeESCH,
                       startTimeCAL = startTimeCAL,
                       PAR_ESCH = PAR_ESCH,
                       PAR_WSCH = PAR_WSCH,
                       PAR_CAL = PAR_CAL));

  /***   ***   ***   ***   ***   ***   ***   ***   ***   ***/
  // Connector
  BuildingControlLib.BuildingControl.VDI3813.Interfaces.RealInput D_ACT "Current date and time." annotation (Placement(transformation(extent={{-100,20},{-60,60}})));
  BuildingControlLib.BuildingControl.VDI3813.Interfaces.EnergyModeOutput M_BMS "Valid energy mode for the current time (defined in schedules by operator)." annotation (
      Placement(transformation(extent={{100,20},{122,60}}), iconTransformation(
          extent={{100,20},{140,60}})));
  /***   ***   ***   ***   ***   ***   ***   ***   ***   ***/
  // Parameter
  parameter Real offset[:]={0.0} "Offset of  output signal";
  parameter Real startTimeWSCH[5] = {0,0,0,0,3.0}
    "Array with start time and value format: {{days,hours,minutes,seconds,startValue}}";
  parameter Real PAR_WSCH[:,5] = {
            functionality.weeklySchedule.startTime,
            {0,7,30,0,3.0},
            {0,7,30,0,2.0},
            {0,8,0,0,2.0},
            {0,8,0,0,1.0},
            {0,18,0,0,1.0},
            {0,18,0,0,3.0},
            {1,7,30,0,3.0},
            {1,7,30,0,2.0},
            {1,8,0,0,2.0},
            {1,8,0,0,1.0},
            {1,18,0,0,1.0},
            {1,18,0,0,3.0},
            {2,7,30,0,3.0},
            {2,7,30,0,2.0},
            {2,8,0,0,2.0},
            {2,8,0,0,1.0},
            {2,18,0,0,1.0},
            {2,18,0,0,3.0},
            {3,7,30,0,3.0},
            {3,7,30,0,2.0},
            {3,8,0,0,2.0},
            {3,8,0,0,1.0},
            {3,18,0,0,1.0},
            {3,18,0,0,3.0},
            {4,7,30,0,3.0},
            {4,7,30,0,2.0},
            {4,8,0,0,2.0},
            {4,8,0,0,1.0},
            {4,18,0,0,1.0},
            {4,18,0,0,3.0},
            functionality.weeklySchedule.endValue}
    "Time/value pairs of weekly schedule in regular operation. Format: {{days,hours,minutes,seconds,value}}. Need to leave endValue parameter as last item. Discontinuities allowed by introducing values in table twice ";

  parameter Real startTimeESCH[5] = {0,0,0,0,3.0}
    "Array with start time and value format: {{days,hours,minutes,seconds,startValue}}";
  parameter Real PAR_ESCH[:,5] = {
            functionality.exceptionSchedule.startTime,
            {0,9,30,0,3.0},
            {0,9,30,0,2.0},
            {0,10,0,0,2.0},
            {0,10,0,0,1.0},
            {0,13,0,0,1.0},
            {0,13,0,0,3.0},
            functionality.exceptionSchedule.endValue}
    "Time/value pairs of exception schedule. Format: {{days,hours,minutes,seconds,value}}. Need to leave endValue parameter as last item. Discontinuities allowed by introducing values in table twice ";

 parameter Real startTimeCAL[5] = {0,0,0,0,-1.0}
    "Array with start time and value format: {{days,hours,minutes,seconds,startValue}}";
  parameter Real PAR_CAL[:,5] = {
            functionality.exceptionCalendar.startTime,
            {5,0,0,0,-1.0},
            {5,0,0,0,1.0},
            {6,0,0,0,1.0},
            {6,0,0,0,-1.0},
            functionality.exceptionCalendar.endValue}
    "Time/value pairs of of yearly exception calendar. Format: {{days,hours,minutes,seconds,value}}. Need to leave endValue parameter as last item. Discontinuities allowed by introducing values in table twice ";
equation
  connect(D_ACT, functionality.D_ACT) annotation (Line(
      points={{-80,40},{-60,40},{-60,15.2},{-30.4,15.2}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
  connect(functionality.M_BMS, M_BMS) annotation (Line(
      points={{45.6,15.2},{74.8,15.2},{74.8,40},{111,40}},
      color={0,0,0},
      thickness=1,
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics), Icon(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics),preferredView="info",
    Documentation(info="<html>
<h4><span style=\"color: #008000\">Overview</span></h4>
<p>Block that implements function of &QUOT;Time program&QUOT; from VDI 3813 <a href=\"modelica://BuildingControlLib.UsersGuide.References\">[1, section 6.5.4, p. 35 - 37]</a>. </p>
<h4><span style=\"color: #008000\">Functional Description</span></h4>
<p>&QUOT;The function <i>Time program</i> (RA-FL section 6, column 3; informative function block Figure 25) allows time-controlled generation of output information, thus influencing or controlling application functions or actuator functions.The time program contains the time and date functions as well as calendar entries including exception days (e. g. holidays). The respective switching operations are generated via a default week schedule and exception day schedules with switching point/value pairs. Such a time program can be implemented and maintained either directly via an interaction interface, or it is transferred by a management communication function to an operating device or external system.&QUOT;<a href=\"modelica://BuildingControlLib.UsersGuide.References\">[1, section 6.5.4, p. 35 - 37]</a></p>
<p>The block checks execptionCalendar if there is an execption case. If true then the time/value pair from the exception schedule is chosen. If false then time/value pair from the normal weekly schedule is chosen. Note time/value pairs need to be entered following the convention {{days,hours,minutes,seconds,value}}.</p>
<p><b>Fig. 1: </b>&QUOT;Informative representation of the application function <i>Time program</i>&QUOT;, <a href=\"modelica://BuildingControlLib.UsersGuide.References\">[1, section 6.5.4, Figure 25, p. 36]</a></p>
<table cellspacing=\"0\" cellpadding=\"2\" border=\"0\"><tr>
<td><p><img src=\"modelica://BuildingControlLib/Resources/Images/docVDI3813_TimeProgram.PNG\" alt=\"docVDI3813_TimeProgram.PNG\"/> </p></td>
</tr>
</table>

</html>", revisions="<html>
<ul>
<li>March 07, 2017&nbsp; by Georg Ferdinand Schneider &amp; Georg Ambrosius Pe&szlig;ler:<br>Implemented.</li>
</ul>
</html>
"));
end TimeProgramEnergyMode;
