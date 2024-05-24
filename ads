<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
    <!-- Insira o código do Pixel do Facebook aqui -->
    <script>
        !function(f,b,e,v,n,t,s)
        {if(f.fbq)return;n=f.fbq=function(){n.callMethod?
        n.callMethod.apply(n,arguments):n.queue.push(arguments)};
        if(!f._fbq)f._fbq=n;n.push=n;n.loaded=!0;n.version='2.0';
        n.queue=[];t=b.createElement(e);t.async=!0;
        t.src=v;s=b.getElementsByTagName(e)[0];
        s.parentNode.insertBefore(t,s)}(window,document,'script',
        'https://connect.facebook.net/en_US/fbevents.js');
        fbq('init', '951503763143037');
		fbq('track', 'PageView');
    </script>
  <!-- Pixel de Facebook para rastreamento -->
    <noscript>
        <img height="1" width="1" style="display:none"
             src="https://www.facebook.com/tr?id=951503763143037&ev=PageView&noscript=1"/>
    </noscript>
	
	<style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: none;
        }
        .pulse-button {
            display: inline-block;
            padding: 15px 30px;
            font-size: 16px;
            color: white;
            background-color: #408dff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            outline: none;
            text-align: center;
            text-decoration: none;
            -webkit-animation: pulse 1.5s infinite;
            animation: pulse 1.5s infinite;
        }

        @-webkit-keyframes pulse {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1);
                opacity: 1;
            }
            50% {
                -webkit-transform: scale(1.1);
                transform: scale(1.1);
                opacity: 0.8;
            }
            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                opacity: 1;
            }
        }

        @keyframes pulse {
            0% {
                -webkit-transform: scale(1);
                transform: scale(1);
                opacity: 1;
            }
            50% {
                -webkit-transform: scale(1.1);
                transform: scale(1.1);
                opacity: 0.8;
            }
            100% {
                -webkit-transform: scale(1);
                transform: scale(1);
                opacity: 1;
            }
        }
    </style>
	
</head>
<body>

    <script>
        // Função para gerar uma identificação única do dispositivo
        function generateDeviceID() {
            // Aqui você pode implementar a lógica para gerar um ID único, por exemplo, um hash do userAgent
            // Por simplicidade, vamos usar um timestamp
            return Date.now().toString();
        }

        // Função para obter o valor de um cookie
        function getCookie(name) {
            const value = `; ${document.cookie}`;
            const parts = value.split(`; ${name}=`);
            if (parts.length === 2) return parts.pop().split(';').shift();
        }

        // Função para definir um cookie
        function setCookie(name, value, days) {
            let expires = "";
            if (days) {
                const date = new Date();
                date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
                expires = "; expires=" + date.toUTCString();
            }
            document.cookie = name + "=" + (value || "") + expires + "; path=/";
        }

        // Função para redirecionar para o link do WhatsApp com base na identificação única do dispositivo
        function redirectToWhatsApp() {
            const deviceID = getCookie('deviceID');
            let whatsappLink;

            // Verifica se o dispositivo já possui uma identificação única
            if (deviceID) {
                // Aqui você pode implementar a lógica para determinar qual link de WhatsApp redirecionar com base no ID do dispositivo
                // Por simplicidade, vamos usar uma lógica de hash para distribuir entre os links
                const hash = parseInt(deviceID, 10) % 4; // Assume que há 4 links de WhatsApp
                whatsappLink = `https://api.whatsapp.com/send?phone=5519996292460&text=Oii%20Bia,%20Quero%20saber%20sobre%20seus%20conteúdos%20🌶`; // Substitua pelos seus links
            } else {
                // Gera uma nova identificação única do dispositivo e salva no cookie
                const newDeviceID = generateDeviceID();
                setCookie('deviceID', newDeviceID, 30); // O cookie expira em 30 dias
                // Redireciona para o primeiro link de WhatsApp
                whatsappLink = `https://api.whatsapp.com/send?phone=5519996292460&text=Oii%20Bia,%20Quero%20saber%20sobre%20seus%20conteúdos%20🌶`; // Substitua pelos seus links
            }

            // Redireciona para o link de WhatsApp determinado
            window.location.href = whatsappLink;
        }
    </script>
	
<h3>
	
	<span style="color:white;"><center style="background

