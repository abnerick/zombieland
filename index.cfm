<html>
    <head>
        <title>Zombieland</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" type="text/css" href="css/zombieland.css"> 
    </head>
    <body class="indigo-skin">
        <header>
            <nav class="navbar">
              <span class="navbar-brand mb-0 h1">Zombieland</span>
            </nav>
        </header>

        <cfscript>
            cfquery(name="zombiedata",datasource="zombieds") {
                echo("select * from zombie");
            }
        </cfscript>


        <div class="container">
            
            <h1>Zombies</h1>

            <div>
              <img src="images/lego-zombie.jpg" class="zombie" />
            </div> 
          
            <div>
              <table class="table">
                <thead class="thead-dark">
                    <th> Name </th>
                </thead>
                <cfoutput query="zombiedata">
                    <tr>
                        <td> #name#</td>
                    </tr>
                </cfoutput>
              </table>
            </div>
                
            </div>

            <footer class="page-footer font-small pt-4">
                <div class="text-center py-3"> Created by <a href="https://github.com/abnerick/"> @abnerick</a>
                 </div>
            </footer>
    </body>
</html>

