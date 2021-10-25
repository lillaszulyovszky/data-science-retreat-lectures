const width = 1920, height = 1200

const svg = d3.select('svg');
svg
    .append('text')
    .attr('x', 30)
    .attr('y', 70)
    .style('font-family', 'Monaco')
    .style('font-size', '50px')
    .text('DSR Batch 28');

const nodes = [
    { name: 'Jesús Martínez',    url: 'https://www.linkedin.com/in/chumo',                              imgPath: 'JesusMartinez.png' },
    { name: 'Georgios Michail',    url: 'https://www.linkedin.com/in/georgios-michail-62428075/',       imgPath: 'GeorgiosMichail.png' },
    { name: 'Lilla Szulyovszky',   url: 'https://www.linkedin.com/in/lillaszulyovszky/',                imgPath: 'SulyovszkyLilla.png' },
    { name: 'José Javier Rico',    url: 'https://www.linkedin.com/in/jos%C3%A9-javier-rico-soldado/',   imgPath: 'JoseJavierRico.png' },
    { name: 'Ana Elisa Bergues',   url: 'https://www.linkedin.com/in/ana-elisa-bergues-pupo-53084060/', imgPath: 'AnaElisaBergues.png' },
    { name: 'Igor Isaev',          url: 'https://www.linkedin.com/in/igor-isaev-ab8117113/',            imgPath: 'IgorIsaev.png' },
    { name: 'Corstiaen Versteegh', url: 'https://www.linkedin.com/in/corstiaen-versteegh-9494034/',     imgPath: 'CorstiaenVersteegh.png' },
    { name: 'Sabine Reißer',       url: 'https://www.linkedin.com/in/sabine-rei%C3%9Fer-344556150/',    imgPath: 'SabineReisser.png' },
    { name: 'Eero Olli',           url: 'https://www.linkedin.com/in/eeroolli/',                        imgPath: 'EeroOlli.png' },
    { name: 'Samson Chien',        url: '',                                                             imgPath: 'SamsonChien.png' },
    { name: 'Daniel Bumke',        url: 'https://www.linkedin.com/in/daniel-bumke-b98ba1203/',          imgPath: 'DanielBumke.png' },
    { name: 'Jérémie Joudioux',    url: 'https://www.linkedin.com/in/jeremie-joudioux/',                imgPath: 'JeremieJoudioux.png' },
    { name: 'Hazel Wat',           url: 'https://de.linkedin.com/in/hazelwat',                          imgPath: 'HazelWat.png' },
]

// Simulation settings
const simulation =
    d3.forceSimulation()
    .nodes(nodes)
    .force('charge', d3.forceManyBody().strength(300)) // Nodes are attracted one each other
    .force('center', d3.forceCenter(width / 2, height / 2)) // Attraction to the center of the svg area
    .force('collide', d3.forceCollide().strength(1).radius(140)) // Force that avoids circle overlapping

// Nodes with drag
const nodeGroups =
    svg
    .selectAll('g')
    .data(nodes)
    .enter()
    .append('g')
    .call(drag(simulation));

nodeGroups // images
    .append('image')
    .attr('href', d => d.imgPath)
    .attr('x', '-100')
    .attr('y', '-100')
    .attr('width', '200px');

nodeGroups // surrounding circles
    .append('a')
    .attr('href', d => d.url)
    .attr('target', '_blank')
    .append('circle')
    .attr('fill', 'rgba(0,0,0,0.01)')
    .attr('stroke', 'blue')
    .attr('stroke-width', '1px')
    .attr('r', '100px')
    .on('mouseover', highlightOn)
    .on('mouseout', highlightOff);

nodeGroups // names
    .append('text')
    .style('text-anchor', 'middle')
    .attr('y', 120)
    .style('font-family', 'Monaco')
    .style('font-size', '24px')
    .text(d => d.name);

// Apply these forces to the nodes and update their positions.
simulation.on('tick', tick);

// What happens when a simulation tick passes?
function tick(){
    nodeGroups
    .attr('transform', d => `translate( ${d.x} , ${d.y} )`);
}

// What happens when a circle is dragged?
function drag(simulation){

    function dragstarted(event) {
      if (!event.active) simulation.alphaTarget(0.5).restart();
      event.subject.fx = event.subject.x;
      event.subject.fy = event.subject.y;
    }

    function dragged(event) {
      event.subject.fx = event.x;
      event.subject.fy = event.y;
    }

    function dragended(event) {
      if (!event.active) simulation.alphaTarget(0.5);
      event.subject.fx = null;
      event.subject.fy = null;
    }

    return d3.drag()
        .on('start', dragstarted)
        .on('drag', dragged)
        .on('end', dragended);
  }

// Hover behaviour
function highlightOn(){d3.select(this).attr('stroke-width', '10px');}
function highlightOff(){d3.select(this).attr('stroke-width', '1px');}