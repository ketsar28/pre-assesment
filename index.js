let dataArrays = ['cook', 'save', 'taste', 'aves', 'vase', 'state', 'map'];

const anagramResult = (datas) => {
    let result = [];
    datas.forEach(data => {
        let refactor = data.split("").sort().join("");
        if(result[refactor]) {
            result[refactor].push(data);
        } else {
            result[refactor] = [data];
        }
    });
    return Object.values(result);
}

const endResult = anagramResult(dataArrays);
console.log(endResult);