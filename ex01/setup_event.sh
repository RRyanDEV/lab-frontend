#!/bin/bash

mkdir TechConnect2026 #Cria pasta

cd TechConnect2026    #Entra na pasta

# Cria as subpastas
mkdir styles 
mkdir scripts


echo "<!DOCTYPE html>
<html lang='pt-BR'>
<head>
    <meta charset='UTF-8'>
    <title>TechConnect 2026</title>
    <link rel='stylesheet' href='styles/main.css'>
</head>
<body>
    <header>
        <h1>TechConnect 2026</h1>
        <p>O maior evento de tecnologia do futuro</p>
    </header>
    <main>
        <div id='countdown'>Calculando tempo...</div>
        <button>Inscreva-se Agora</button>
    </main>
    <footer>
        <a href='#'>Sobre o Evento</a> | <a href='#'>Palestrantes</a> | <a href='#'>Contato</a>
    </footer>
    <script src='scripts/countdown.js'></script>
</body>
</html>" > index.html


echo "body { font-family: 'Segoe UI', sans-serif; text-align: center; background: #1a1a2e; color: #fff; margin: 0; padding: 0; }
header { background: #16213e; padding: 40px; border-bottom: 2px solid #0f3460; }
h1 { color: #e94560; }
#countdown { font-size: 3em; margin: 40px 0; font-weight: bold; }
button { padding: 15px 30px; font-size: 1.2em; background-color: #e94560; color: white; border: none; border-radius: 5px; cursor: pointer; }
footer { margin-top: 50px; padding: 20px; background: #0f3460; }
a { color: #fff; text-decoration: none; margin: 0 10px; }" > styles/main.css


echo "const DataDoEvento = new Date('Dec 31, 2026 09:00:00').getTime();
setInterval(function() {
    const agora = new Date().getTime();
    const distancia = DataDoEvento - agora;
    const dias = Math.floor(distancia / (1000 * 60 * 60 * 24));
    const horas = Math.floor((distancia % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    const minutos = Math.floor((distancia % (1000 * 60 * 60)) / (1000 * 60));
    const segundos = Math.floor((distancia % (1000 * 60)) / 1000);
    document.getElementById('countdown').innerHTML = dias + 'd ' + horas + 'h ' + minutos + 'm ' + segundos + 's';
}, 1000);" > scripts/countdown.js