const dataDoEvento = new Date('Dec 31, 2026 09:00:00').getTime();
setInterval(function() {
    const agora = new Date().getTime();
    const distancia = dataDoEvento - agora;
    const dias = Math.floor(distancia / (1000 * 60 * 60 * 24));
    const horas = Math.floor((distancia % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    const minutos = Math.floor((distancia % (1000 * 60 * 60)) / (1000 * 60));
    const segundos = Math.floor((distancia % (1000 * 60)) / 1000);
    document.getElementById('countdown').innerHTML = dias + 'd ' + horas + 'h ' + minutos + 'm ' + segundos + 's';
}, 1000);