# Desafio Módulo 3 – Processamento de Dados Simplificado com Power BI

## Descrição do Projeto

Este projeto visa realizar o processamento de dados utilizando o Power BI integrado ao MySQL na Azure. O objetivo é transformar e preparar dados para análise, seguindo diretrizes específicas para garantir a integridade e a utilidade das informações.

## Etapas do Projeto

1. **Criação de Instância na Azure**
   - Configurar uma instância de MySQL no Azure.

2. **Criação do Banco de Dados**
   - Criar um banco de dados utilizando a estrutura disponível no repositório do GitHub.

3. **Integração com Power BI**
   - Integrar o Power BI com o MySQL no Azure para realizar análises de dados.

4. **Verificação e Transformação dos Dados**
   - Identificar e corrigir problemas na base de dados para otimizar a análise.

## Diretrizes para Transformação dos Dados

1. Verifique os cabeçalhos e tipos de dados.
2. Modifique os valores monetários para o tipo `double` preciso.
3. Verifique a existência de valores nulos e considere a remoção deles.
4. Identifique colaboradores sem gerente, caso haja nulos na coluna `Super_ssn`.
5. Verifique a existência de departamentos sem gerentes.
6. Se houver departamentos sem gerentes, preencha as lacunas com dados disponíveis.
7. Analise o número de horas dos projetos.
8. Separe colunas complexas para facilitar a análise.
9. Mescle as tabelas `employee` e `department` para criar uma tabela `employee` com os nomes dos departamentos associados aos colaboradores.
   - **Nota:** Fique atento ao tipo de junção que influenciará os resultados.
10. Elimine colunas desnecessárias durante o processo de mesclagem.
11. Realize a junção dos colaboradores com os respectivos nomes dos gerentes.
   - **SQL:** Caso utilize consulta SQL, especifique a query utilizada.
12. Mescle as colunas de Nome e Sobrenome em uma única coluna para os nomes dos colaboradores.
13. Mescle os nomes de departamentos e localização para garantir que cada combinação departamento-local seja única, facilitando a criação do modelo estrela.
14. **Explicação sobre a Mesclagem vs. Atribuição**  
    A mesclagem é utilizada para combinar informações de diferentes tabelas ou colunas que possuem relacionamentos. Por exemplo, ao mesclar as colunas de nomes de departamentos e suas localizações, garantimos que cada combinação departamento-local seja única. Isso é crucial em contextos como a criação de um modelo estrela, onde queremos evitar duplicatas e garantir que os dados sejam estruturados de maneira eficaz para análises. A atribuição, por outro lado, simplesmente cria uma nova coluna baseada nos valores de outra, sem levar em conta os relacionamentos entre os dados, o que pode resultar em dados redundantes. Portanto, usamos a mesclagem quando queremos manter a integridade dos dados e garantir que as relações entre diferentes conjuntos de dados sejam respeitadas.
15. Agrupe os dados para determinar quantos colaboradores existem por gerente.
16. Elimine colunas que não serão utilizadas nos relatórios de cada tabela.

## Contribuições

Sinta-se à vontade para contribuir com melhorias ou sugestões para este projeto.

## Licença

Este projeto está licenciado sob a [Nome da Licença] - consulte o arquivo LICENSE para mais detalhes.
