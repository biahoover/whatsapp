// Função para carregar e exibir as configurações salvas
function loadSavedSettings() {
    // Simulação de configurações salvas (substitua com a lógica real para recuperar as configurações do arquivo do Google Docs)
    const savedSettings = {
        'siteTitle': 'Meu Site Incrível',
        'siteDescription': 'Um site incrível feito por mim!',
        'ogTitle': 'Título Open Graph',
        'ogDescription': 'Descrição Open Graph',
        // Adicione mais configurações conforme necessário
    };

    const savedSettingsContent = document.getElementById('saved-settings-content');

    // Limpa o conteúdo existente antes de exibir as novas configurações
    savedSettingsContent.innerHTML = '';

    // Itera sobre as configurações salvas e as exibe no painel
    for (const key in savedSettings) {
        if (Object.hasOwnProperty.call(savedSettings, key)) {
            const value = savedSettings[key];

            const settingElement = document.createElement('div');
            settingElement.classList.add('saved-setting');

            const labelElement = document.createElement('label');
            labelElement.textContent = `${key}:`;

            const valueElement = document.createElement('p');
            valueElement.textContent = value;

            settingElement.appendChild(labelElement);
            settingElement.appendChild(valueElement);

            savedSettingsContent.appendChild(settingElement);
        }
    }
}

// Chamada da função para carregar e exibir as configurações salvas quando a página é carregada
window.addEventListener('load', loadSavedSettings);
