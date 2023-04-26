
<%@ page import="Model.creditModel" %>
<% creditModel model=(creditModel)request.getAttribute("creditModel");%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">   
    <link rel="stylesheet" href="style/bootstrap.min.css">
    <title>Credit Bancaire</title>
</head>
<body>

    <div class="container">
        <div class=" card " >
            <div class="card-header bg-primary text-light">Simulateur de credit</div>
            <div class="card-body" >
                <form action="" method="post">
                    <div class="form-group">
                        <label class="control-label" for="montant" >Montant</label>
                        <input class="form-control" type="text" name="montant" id="" value="<%= model.getMontant() %>">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="taux" >getTaux</label>
                        <input class="form-control" type="taux" name="taux" id="" value="<%= model.getTaux()%>">
                    </div>
                    <div class="form-group">
                        <label class="control-label" for="duree" >Duree</label>
                        <input class="form-control" type="duree" name="duree" id="" value="<%= model.getDuree()%>">
                    </div>
                    <br>
                    <div class="form-group">
                        <button class="btn btn-primary">Calculer</button>
                    </div>
                </form>
                <br>
                <div>
                    <label for="mensualite">Mensualite :</label>
                    <label for=""><% out.println(model.getMensualite()); %></label>
                </div>
                
            </div>
        </div>
    </div>
</body>
</html>