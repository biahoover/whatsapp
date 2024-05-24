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
		fbq('track', 'Purchase');
    </script>
	
	
</head>
<body>

    <script>
        // Função para registrar o evento de compra
        function registerPurchaseEvent() {
            fbq('track', 'Purchase');
        }

        // Verifica se o evento já foi registrado
        function hasPurchaseEventRegistered() {
            return localStorage.getItem('purchaseEventRegistered') === 'true';
        }

        // Marca o evento como registrado
        function setPurchaseEventRegistered() {
            localStorage.setItem('purchaseEventRegistered', 'true');
        }

        // Executa o registro do evento de compra uma única vez
        if (!hasPurchaseEventRegistered()) {
            registerPurchaseEvent();
            setPurchaseEventRegistered();
        }

        // Manipulador de clique para o link
        document.getElementById('accessLink').addEventListener('click', function() {
            if (!hasPurchaseEventRegistered()) {
                registerPurchaseEvent();
                setPurchaseEventRegistered();
            }
        });
    </script>

    <!-- Pixel de Facebook para rastreamento -->
    <noscript>
        <img height="1" width="1" style="display:none"
             src="https://www.facebook.com/tr?id=951503763143037&ev=Purchase&noscript=1"/>
    </noscript>
	
	<h3>
	
	<span style="color:white;"><center style="background-color:none;">SEU ACESSO AOS CONTEÚDOS SERÁ ENTREGUE NO SEU WHATSAPP AGORA MESMO!</center></span>
	
	</h3>
		
</body>
</html>
