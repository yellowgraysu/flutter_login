

window.nestedHello = function () {
    console.log("Hello World!");
}

window.myControls = {
    promisParse: function (text) {
        return new Promise(
            (resolve, reject) => {
                setTimeout(function () {
                    if (text.length < 5) {
                        resolve('Hello! ' + text);
                    } else {
                        reject('Nope.');
                    }
                }, 3000);

            }
        )
    },
    readModel: function (model) {
        console.log(model['name']);
        console.log(model['id']);
        console.log(model['abc']);
    }
}