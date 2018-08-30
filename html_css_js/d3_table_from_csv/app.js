// initiate csv reading 
d3.csv("sample.csv").then(function (data){
    // create table within body
    var table = d3.select('body')
        .append('table')
    
    // declare column names (for header)
    var columns = ["Position", "Track Name", "Artist"]

    // create and populate header (using columns as data)
    table.append('thead')
        .append('tr')
        .selectAll('td')
        .data(columns)
        .enter()
        .append('td')
        .text(function (d) {
            return d
        })
        
    // create and populate tbody with csv as data
    table.append('tbody')
        .selectAll('tr')
        .data(data)
        .enter()
        .append('tr')
        .html(function (d) {
            return `<td>${d.Position}</td><td>${d["Track Name"]}</td><td>${d.Artist}</td>`
        })
})