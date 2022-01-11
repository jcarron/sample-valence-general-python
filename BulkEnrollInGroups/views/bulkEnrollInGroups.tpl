<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>Enroll Students in Group App</title>
    <style type="text/css">
    table.plain
    {
        border-color: transparent;
        border-collapse: collapse;
    }

    table td.plain
    {
        paddding: 5px;
        border-color: transparent;
    }

    table th.plain
    {
        padding: 6px 5px;
        text-align: left;
        border-color: transparent;
    }

    tr:hover
    {
        background-color: transparent !important;
    }
    </style>

    <script src="https://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <script type="text/javascript">

    // Button Handling Method
    clearTextArea();
    function enrollInGroup() {
    clearTextArea();
      var orgUnitID = $('#orgUnitIDField').val();
      var groupCategoryID = $('#groupCategoryIDField').val();
      var groupID = $('#groupIDField').val();
      var studentNums = $('#studentNumsField').val();
      $('#result').html('<img src="/static/img/spinning-loading.gif" width="100" height="100">');
      $.ajax({
        type: "POST",
        url: "/enrollInGroup",
        data: JSON.stringify({
          orgUnitID: orgUnitID,
          groupCategoryID: groupCategoryID,
          groupID: groupID,
          studentNums: studentNums
        }),
        contentType: "application/json",
        //dataType:"json",
        success: function(data){
          //console.log(data.text());
          clearTextArea();
          $('#result').html(data);
        },
        error: function(jqXHR, textStatus, errorThrown) {
          clearTextArea();
          $('#resultHeading').html("Error:");
          $('#result').html(textStatus + ', ' + errorThrown);
        }
      });
    }

    function clearTextArea() {
       $("#resultHeading").html("&nbsp;");
       $("#result").html("&nbsp;");
    }

    </script>
</head>
<body>
    <h1>Enroll Students in Group App</h1>
    <form id="configForm" method="post">
        <table>
            <tr>
                <td><h4>Org Unit ID:</h4></td>
                <td><input id="orgUnitIDField" type="text" size=30 value="15265178" /></td>
            </tr>
            <tr>
                <td><h4>Group Category ID:</h4></td>
                <td><input id="groupCategoryIDField" type="text" size=30 value="8888786" /></td>
            </tr>
            <tr>
                <td><h4>Group ID:</h4></td>
                <td><input id="groupIDField" type="text" size=30 value="20230962" /></td>
            </tr>
            <tr>
                <td><h4>Student Numbers (on separate lines):</h4></td>
                <td><textarea id="studentNumsField"  cols=30  rows=5 ></textarea></td>
            </tr>
        </table>
    </form><br /><br />
    To enroll the students in the selected group, click here.
    <input id="enrollInGroup" type="button" value="Enroll Students" onclick="enrollInGroup()" /><br /><br />

    <table style="float:left;" class = "plain">
        <tr class = "plain">
            <td class = "plain">
                <span id = "resultHeading" style = "clear:both;float:left;color: black;" ></span>
                <span id = "result" style = "clear:both;float:left;color: black;text-align:left" ></span>
            </td>
        </tr>
    </table>

</body>
</html>
