
    function perehod(id){

        var id = id;
  
        const request = new XMLHttpRequest();
        const url = "hide_product.php";
        const params = "id=" + id;
        request.open("POST", url, true);
        //В заголовке говорим что тип передаваемых данных закодирован. 
        request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        request.addEventListener("readystatechange", () => {
        
        if(request.readyState === 4 && request.status === 200) {       
                 var ajaxDisplay1 = document.getElementById('products');
                ajaxDisplay1.innerHTML = request.responseText; // в виде текста
        }
        });
        //	Вот здесь мы и передаем строку с данными, которую формировали выше. И собственно выполняем запрос. 
        request.send(params);
        
    }

    function stepDown(value, edit){   // уменьшить кол-во товаров на 1
        var value = value;
        var id = edit;
        value = value - 1;
        step(value, id);
    }

    function stepUp(value, edit){ // увеличить кол-во товаров на 1
        var value = value;
        var id = edit;
        value = value + 1;
        step(value, id);
    }

    function step(value, id){

        const request = new XMLHttpRequest();
        const url = "edit_quantity.php";
        const params = "value=" + value + "&id=" + id;
        request.open("POST", url, true);
        //В заголовке говорим что тип передаваемых данных закодирован. 
        request.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        request.addEventListener("readystatechange", () => {
        
        if(request.readyState === 4 && request.status === 200) {       
                 var ajaxDisplay1 = document.getElementById('products');
                ajaxDisplay1.innerHTML = request.responseText; // в виде текста
        }
        });
        //	Вот здесь мы и передаем строку с данными, которую формировали выше. И собственно выполняем запрос. 
        request.send(params);

    }