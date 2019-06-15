<html>
    <head>
        <style>
            body {
                background: #eeeeee;
                font-family: Meiryo;
            }
            span{
                position: absolute;
                left: 0px;
                bottom: 15px;
                background: black;

            }
            p{
                opacity: 0.5;
            }
            .img{
                position: relative;
                width: 800px;
            }
            .absolute {
                position: absolute;
                right: 230px;
                bottom: 180px;
            }
            .mozi{
                position: absolute;
                top: 0px;
                color: white;
                background: rgba(0,0,0,.6);
                width: 800px;
                padding: 1em 0;
            }
            .mozi p {
                margin: 0;
                padding: 0 0.8em;
                text-align: center;
            }
        </style>
        <title>Typing Z</title>
    </head>
    <body>
        <figure class="img">
            <img src="./img/bgimg.png">
            <img src="./img/{{teki}}" class="absolute" width="300" height="400">
            <figcaption class="mozi"><p>{{text}}</p></figcaption>
            <div style="background-color: black; height:150px; width:800px;">
                <center><div style="color: white; font-size: xx-large;">{{waza1}}</div>
                    <div style="color: white;">{{waza2}}</div><br>
                    <form>
                        <input type=”text” id="nyuuryoku" style=”border-width:0px;border:None;background-color:transparent;color:White;font-size:30px;text-align:center;”>
                        <input type="submit" onClick="CheckEmail_1()" style="background-color:black;border:None;">
                        <script type="text/javascript">
                            document.getElementById('nyuuryoku').focus();
                              function CheckEmail_1() {
                                  var waza2 = "{{waza2}}";
                                  var waza = nyuuryoku.value;
                                    if (waza2 != waza){
                                      alert("間違ってるよ！！！！！");
                                    }else{
                                      return folse;
                                    }
                                  };
                        </script>
                    </form>
                </center>
        </figure>
        </div>
    </body>
</html>
