
// Service worker

if ('serviceWorker' in navigator) {
    window.addEventListener('load', function() {
      navigator.serviceWorker.register('assets/js/worker.js').then(function(registration) {
        // Registration was successful
        console.log('ServiceWorker registration successful with scope: ', registration.scope);
      }, function(err) {
        // registration failed :(
        console.log('ServiceWorker registration failed: ', err);
      });
    });
  }

// link to a image file
var iconUrl = 'favicon/android-icon-48x48.png';

// create the <img> html element
// on first load it will request the image
// second time it will load it from cache directly thanks to the service worker
var imgElement = document.createElement('img');
imgElement.src = iconUrl;

const login = document.getElementById('login');
const checkVisitor = document.getElementById('nameTitle');
const progressBar = document.getElementById('myBar');
progressBar.style.display = 'none';
const content = document.getElementById('content');
content.style.display = 'none';
function hideMenuLog() {

    document.getElementById('loggedin').style.display = 'none';
}

if (login.id == 'login') {

    log = document.getElementById('login');
    console.log(log.id);
    if (log.id == 'login') {

        log.addEventListener('submit', function (e) {
            e.preventDefault();
            //serialize data function
            var myObj = {};
            // get value from the input text
            var myImputs = document.getElementsByClassName('loginDetails');

            for (loop = 0; loop < myImputs.length; loop++) {
                myObj[myImputs[loop]['name']] = myImputs[loop]['value'];
            }
            console.log(myObj);
            const uri = 'php/model/read.php?req_func=login';
            let h = new Headers();
            h.append('Accept', 'application/json');
            let req = new Request(uri, {
                method: 'POST',
                headers: h,
                mod: 'cors',
                body: JSON.stringify(myObj)

            });

            fetch(req)

                .then((response) => {
                    if (response.ok) {
                        return response.json();
                    }
                })
                .then((jsonData) => {
                    var ourData = jsonData.message;
                    console.log(ourData);
                    if (ourData == 'logged') {
                        log.style.display = 'none';
                        document.getElementById('loggedin').style.display = 'block';
                        /*listHtmlInfo += templateHtmlInfo.replace(/{{id2}}/g, "loggged")

                        document.getElementById('renderID').innerHTML = listHtmlInfo;*/
                    }

                })
                .catch((err) => {
                    console.log('ERROR:', err.message);
                });
        });
    }
}
var loggedin = document.getElementById('loggedin');
loggedin.addEventListener('submit', function (e) {
    e.preventDefault();
    if (loggedin.id == 'loggedin') {
        document.getElementById('loggedin').style.display = 'none';
        document.getElementById('login').style.display = 'block';
    }
});
// Onload hero bar
function hero() {
    progressBar.style.display = 'block';
    move();
}

window.onload = hero();

//var progressFind = document.getElementById('find');
//progressFind.addEventListener('click', () => {
//    progressBar.style.display = 'block';
//    move();
//
//});

// Populate dropdown with grades
gradeOP = document.getElementById('choose_grade');

//check if role id exist
if (gradeOP.id == 'choose_grade') {

    var mediums = document.getElementById('find');
    mediums.addEventListener('click', function () {

        //set dropdown
        let dropdown = gradeOP;
        dropdown.length = 0;

        //create option dropdown
        let defaultOption = document.createElement('option');
        defaultOption.text = 'Choose Grade';

        dropdown.add(defaultOption);
        dropdown.selectedIndex = 0;
        //if role id exist AJAX query database  

        const uri = 'php/model/read.php?req_func=readGrades';
        let h = new Headers();
        h.append('Accept', 'application/json');
        let req = new Request(uri, {
            method: 'GET',
            headers: h,
            mod: 'cors'
        });
        fetch(req)
            .then((response) => {
                if (response.ok) {
                    return response.json();
                } else {
                    throw new Error('We connected to the server, but it returned an error.');
                }
            })
            .then((jsonData) => {
                var ourData = jsonData;
                renderGrades(ourData);
                //loop throughout data
                function renderGrades(data) {
                    for (let i = 0; i < data.length; i++) {
                        option = document.createElement('option');
                        option.text = data[i].gradeName;
                        option.value = data[i].gradeID;
                        dropdown.add(option);
                    }

                }
                console.log(jsonData);

            })
            .catch((err) => {
                console.log('ERROR:', err.message);
            });
    });
    gradeOP.addEventListener('click', function () {
        myImputs = gradeOP.options[gradeOP.selectedIndex].value;
        keyValue = 'gradeID';
        var myObj = {};
        myObj[keyValue] = myImputs;
        console.log(myObj);

        const uri = 'php/model/read.php?req_func=getGrade';
        let h = new Headers();
        h.append('Accept', 'application/json');
        let req = new Request(uri, {
            method: 'POST',
            headers: h,
            mod: 'cors',
            body: JSON.stringify(myObj)

        });

        fetch(req)

            .then((response) => {
                if (response.ok) {
                    return response.json();
                }
            })
            .then((jsonData) => {
                var ourData = jsonData.message;
                console.log(ourData);



            })
            .catch((err) => {
                console.log('ERROR:', err.message);
            });
    });


}

//*<script> to populate dropdown <select> with Mediums*

mediumOP = document.getElementById('choose_medium');

//check if role id exist
if (mediumOP.id == 'choose_medium') {

    var mediums = document.getElementById('find');
    mediums.addEventListener('click', function () {
        //set dropdown
        let dropdown = mediumOP;
        dropdown.length = 0;

        //create option dropdown
        let defaultOption = document.createElement('option');
        defaultOption.text = 'Choose Medium';

        dropdown.add(defaultOption);
        dropdown.selectedIndex = 0;
        //if role id exist AJAX query database  

        const uri = 'php/model/read.php?req_func=readMediums';
        let h = new Headers();
        h.append('Accept', 'application/json');
        let req = new Request(uri, {
            method: 'GET',
            headers: h,
            mod: 'cors'
        });
        fetch(req)
            .then((response) => {
                if (response.ok) {
                    return response.json();
                } else {
                    throw new Error('We connected to the server, but it returned an error.');
                }
            })
            .then((jsonData) => {
                var ourData = jsonData;
                renderMediums(ourData);
                //loop throughout data
                function renderMediums(data) {
                    for (let i = 0; i < data.length; i++) {
                        option = document.createElement('option');
                        option.text = data[i].mediumName;
                        option.value = data[i].mediumID;
                        dropdown.add(option);
                    }

                }
                console.log(jsonData);

            })
            .catch((err) => {
                console.log('ERROR:', err.message);
            });
    });
    mediumOP.addEventListener('click', function () {
        myImputs = mediumOP.options[mediumOP.selectedIndex].value;
        keyValue = 'mediumID';
        var myObj = {};
        myObj[keyValue] = myImputs;
        console.log(myObj);

        const uri = 'php/model/read.php?req_func=getMedium';
        let h = new Headers();
        h.append('Accept', 'application/json');
        let req = new Request(uri, {
            method: 'POST',
            headers: h,
            mod: 'cors',
            body: JSON.stringify(myObj)

        });

        fetch(req)

            .then((response) => {
                if (response.ok) {
                    return response.json();
                }
            })
            .then((jsonData) => {
                var ourData = jsonData.message;
                console.log(ourData);



            })
            .catch((err) => {
                console.log('ERROR:', err.message);
            });
    });


}

//*<script> to populate dropdown <select> with Product Names*

productOP = document.getElementById('choose_product');

//check if role id exist
if (productOP.id == 'choose_product') {

    var product = document.getElementById('find');
    product.addEventListener('click', function () {
        //set dropdown
        let dropdown = productOP;
        dropdown.length = 0;

        //create option dropdown
        let defaultOption = document.createElement('option');
        defaultOption.text = 'Choose Product';

        dropdown.add(defaultOption);
        dropdown.selectedIndex = 0;
        productOP.addEventListener('click', function () {

            let dropdown = productOP;
            dropdown.length = 0;

            //create option dropdown
            let defaultOption = document.createElement('option');
            defaultOption.text = 'Choose Product';

            dropdown.add(defaultOption);

            //if (mediumOP.options[mediumOP.selectedIndex].value & gradeOP.options[gradeOP.selectedIndex].value > 0 ) {

            const uri = 'php/model/read.php?req_func=readProducts';
            let h = new Headers();
            h.append('Accept', 'application/json');
            let req = new Request(uri, {
                method: 'GET',
                headers: h,
                mod: 'cors'
            });
            fetch(req)
                .then((response) => {
                    if (response.ok) {
                        return response.json();
                    } else {
                        throw new Error('We connected to the server, but it returned an error.');
                    }
                })
                .then((data) => {
                    // var ourData = jsonData;
                    // renderProducts(ourData);
                    // //loop throughout data
                    // function renderProducts(data) {
                    for (let i = 0; i < data.length; i++) {
                        option = document.createElement('option');
                        option.text = data[i].productName;
                        option.value = data[i].productID;
                        dropdown.add(option);
                    }

                    // }
                    console.log(data);

                })
                .catch((err) => {
                    console.log('ERROR:', err.message);
                });
            //} else {
            //  alert('Choose Grade & Medium First');
            //}
        });

    });


}

//*<script> to populate dropdown <select> with roles*

roleOP = document.getElementById('role');

//check if role id exist
if (roleOP.id == 'role') {

    var roles = document.getElementById('addNewUser');
    roles.addEventListener('click', function () {
        //set dropdown
        let dropdown = roleOP;
        dropdown.length = 0;

        //create option dropdown
        let defaultOption = document.createElement('option');
        defaultOption.text = 'Choose Role';

        dropdown.add(defaultOption);
        dropdown.selectedIndex = 0;


        const uri = 'php/model/read.php?req_func=readRoles';
        let h = new Headers();
        h.append('Accept', 'application/json');
        let req = new Request(uri, {
            method: 'GET',
            headers: h,
            mod: 'cors'
        });
        fetch(req)
            .then((response) => {
                if (response.ok) {
                    return response.json();
                } else {
                    throw new Error('We connected to the server, but it returned an error.');
                }
            })
            .then((jsonData) => {
                var ourData = jsonData;
                renderRoles(ourData);
                //loop throughout data
                function renderRoles(data) {
                    for (let i = 0; i < data.length; i++) {
                        option = document.createElement('option');
                        option.text = data[i].roleName;
                        option.value = data[i].roleID;
                        dropdown.add(option);
                    }

                }
                console.log(jsonData);

            })
            .catch((err) => {
                console.log('ERROR:', err.message);
            });
    });

}

//*read Products from database*

//get element btn
var products = document.getElementById('product_information');
if (products.id == 'product_information') {
    products.addEventListener('click', function () {
        const uri = 'php/model/read.php?req_func=readProductInformation';
        let h = new Headers();
        h.append('Accept', 'application/json');
        let req = new Request(uri, {
            method: 'GET',
            headers: h,
            mod: 'cors'
        });
        fetch(req)
            .then((response) => {
                if (response.ok) {
                    return response.json();
                } else {
                    throw new Error('We connected to the server, but it returned an error.');
                }
            })
            .then((jsonData) => {
                var ourData = jsonData;
                console.log(jsonData);
                // renderInfo(ourData);
                var template = document.getElementById("product_details");

                //set template
                var templateHtml = template.innerHTML;

                var listHtml = "";

                //render data
                renderProductInformation(ourData)
                function renderProductInformation(data) {

                    //replace templated {{}} for data
                    for (var key in data) {
                        listHtml += templateHtml
                            .replace(/{{product_name}}/g, data[key]["productName"])
                            .replace(/{{grade_name}}/g, data[key]["gradeName"])
                            .replace(/{{medium_name}}/g, data[key]["mediumName"])
                            .replace(/{{colour_range}}/g, data[key]["colourRange"])
                            .replace(/{{consistency_name}}/g, data[key]["consistencyName"])
                            .replace(/{{product_description}}/g, data[key]["productDescription"])
                            .replace(/{{manufacturer_name}}/g, data[key]["manufacturerName"])
                    }
                    document.getElementById('list').innerHTML = listHtml;
                }
            })
            .catch((err) => {
                console.log('ERROR:', err.message);
            });
    });
}
/*
if (products.id == 'product_information') {
    //add event listener 
    products.addEventListener("click", function () {

        //AJAX query    
        var ourRequest = new XMLHttpRequest();
        ourRequest.open('GET', 'php/model/read.php?req_func=readProductInformation');
        ourRequest.onload = function () {
            if (ourRequest.status >= 200 && ourRequest.status < 400) {
                var ourData = JSON.parse(ourRequest.responseText);
                renderProductInformation(ourData);
            } else {
                console.log("We connected to the server, but it returned an error.");
            }

        };
        //send request back
        ourRequest.send();
    });

    //get script id
    var template = document.getElementById("product_details");

    //set template
    var templateHtml = template.innerHTML;

    var listHtml = "";

    //render data
    function renderProductInformation(data) {

        //replace templated {{}} for data
        for (var key in data) {
            listHtml += templateHtml.replace(/{{id}}/g, data[key]["productID"])
                .replace(/{{product_name}}/g, data[key]["productName"])
                .replace(/{{colour_range}}/g, data[key]["colourRange"])
                .replace(/{{grade}}/g, data[key]["gradeID"])
                .replace(/{{consistency}}/g, data[key]["consistencyID"])
                .replace(/{{product_description}}/g, data[key]["productDescription"])
        }
        document.getElementById('list').innerHTML = listHtml;
    }
};
*/
var nameTitle = document.getElementById("nameTitle").innerHTML;
console.log(nameTitle);
if (nameTitle == 'Welcome Visitor') {
    const checkLog = document.getElementById('login');
    checkLog.addEventListener('submit', function (e) {
        e.preventDefault();
        const uri = 'php/model/read.php?req_func=getUserName';
        let h = new Headers();
        h.append('Accept', 'application/json');
        let req = new Request(uri, {
            method: 'GET',
            headers: h,
            mod: 'cors'
        });
        fetch(req)
            .then((response) => {
                if (response.ok) {
                    return response.json();
                } else {
                    throw new Error('We connected to the server, but it returned an error.');
                }
            })
            .then((jsonData) => {
                var ourData = jsonData;

                // renderInfo(ourData);
                var templateName = document.getElementById('nameTitle');

                //set template
                var templateHtmlName = templateName.innerHTML;
                // console.log(ourData["userName"]);
                var listHtmlName = "";


                //replace templated {{}} for data

                listHtmlName = templateHtmlName.replace("Visitor", ourData["userName"]);


                document.getElementById('nameTitle').innerHTML = listHtmlName;

            })
            .catch((err) => {
                console.log('ERROR:', err.message);
            });



    });
    /*login = document.getElementById('nameTitle')
    if (login.innerHTML !== 'Welcome Visitor') {
        var templateInfo = document.getElementById("userMenu");

        //set template
        var templateHtmlInfo = templateInfo.innerHTML;

        var listHtmlInfo = "";


        listHtmlInfo += templateHtmlInfo.replace(/{{id}}/g, "loggedin")
        /*.replace(/{{email}}/g, data[key]["email"])
        .replace(/{{mobile}}/g, data[key]["mobile"])


        document.getElementById('renderID').innerHTML = listHtmlInfo;
    }*/
}


//nameTitle.onload = function () {};



// render user info
//if role id exist AJAX query database
var userInfo = document.getElementById('manageProfile');
userInfo.addEventListener('click', function () {
    const uri = 'php/model/read.php?req_func=getUserInfo';
    let h = new Headers();
    h.append('Accept', 'application/json');
    let req = new Request(uri, {
        method: 'GET',
        headers: h,
        mod: 'cors'
    });
    fetch(req)
        .then((response) => {
            if (response.ok) {
                return response.json();
            } else {
                throw new Error('We connected to the server, but it returned an error.');
            }
        })
        .then((jsonData) => {
            var ourData = jsonData;

            // renderInfo(ourData);
            var templateInfo = document.getElementById("addUserInfo");

            //set template
            var templateHtmlInfo = templateInfo.innerHTML;

            var listHtmlInfo = "";

            //render data
            renderInfo(ourData);
            function renderInfo(data) {

                //replace templated {{}} for data
                for (var key in data) {
                    listHtmlInfo += templateHtmlInfo.replace(/{{name}}/g, data[key]["userName"])
                        .replace(/{{email}}/g, data[key]["email"])
                        .replace(/{{mobile}}/g, data[key]["mobile"])

                }
                document.getElementById('details').innerHTML = listHtmlInfo;
            }
        })
        .catch((err) => {
            console.log('ERROR:', err.message);
        });
});

const addUser = document.getElementById('addUser');
addUser.addEventListener('submit', function (e) {
    e.preventDefault();
    //serialize data function
    var myObj = {};
    // get value from the input text
    var myImputs = document.getElementsByClassName('addUser');

    for (loop = 0; loop < myImputs.length; loop++) {
        myObj[myImputs[loop]['name']] = myImputs[loop]['value'];
    }
    var userInfo = JSON.stringify(myObj);
    console.log(userInfo);

    var postRequest = new XMLHttpRequest()
    postRequest.open("POST", "php/model/read.php?req_func=addUser", true)
    postRequest.setRequestHeader("Content-type", "application/json")
    postRequest.send(userInfo)
});

//update user details not working

/*const updateUser = document.getElementById('update');
updateUser.addEventListener('submit', function (e) {
    e.preventDefault();
    //serialize data function
    var myObj1 = {};
    // get value from the input text
    var myImputs1 = document.getElementsByClassName('updUser');

    for (loop1 = 0; loop1 < myImputs1.length; loop1++) {
        myObj1[myImputs1[loop1]['name']] = myImputs1[loop1]['value'];
    }
    var userInfo1 = JSON.stringify(myObj1);
    console.log(userInfo1);

    var postRequest1 = new XMLHttpRequest()
    postRequest1.open("POST", "php/model/read.php?req_func=updUser", true)
    postRequest1.setRequestHeader("Content-type", "application/json")
    postRequest1.send(userInfo1)
});*/




//get script id


/*var header = document.getElementById("button");

var btns = header.getElementsByClassName("#btn");

for (var i = 0; i < btns.length; i++) {
    btns[i].addEventListener("click", function () {
        var current = document.getElementsByClassName("active1");
        console.log(current);
        if (current.length > 0) {
            current[0].className = current[0].className.replace(" active1", "");
        }
        this.className += " active1";
    });
}
for (var i = 0; i < btns.length; i++) {

    btns[i].addEventListener("click", function (event) {
        var eventID = event.target.id;
        var homeID = document.getElementById(eventID);
        var z = homeID.getAttribute("class").split(' ');
        var classOne = z[1];


        var content = document.getElementsByClassName(classOne);
        var none = document.getElementsByTagName("div");
        var a;
        var e;
        for (e = 0; e < none.length; e++) {
            none[e].style.display = "none";
        }
        for (a = 0; a < content.length; a++) {
            content[a].style.display = "block";
        }
    });
}*/
function move() {
    progressBar.style.display = 'block';
    var elem = document.getElementById("myBar");
    var width = 10;
    var id = setInterval(frame, 10);
    function frame() {
        if (width >= 100) {
            clearInterval(id);
            progressBar.style.display = 'none';
            content.style.display = 'block';
        } else {
            content.style.display = 'none';
            width++;
            elem.style.width = width + '%';
            elem.innerHTML = width * 1 + '%';

        }
    }
}


