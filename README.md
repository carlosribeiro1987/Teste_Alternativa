# API Teste - Alternativa Sistemas

API simples para cadastro de produtos e categorias.

### Criando o Banco de dados:

Crie uma nova consulta com o conteúdo do [arquivo de script do banco de dados]("http://github.com/) e clique em **Executar Script**.

---

### Categorias

#### Listar todas as categorias: **`/api/Categorias`**

**Método:** **`GET`**
**Retorno:** Objeto JSON contendo as categorias cadastradas.
**Parâmetros:** Nenhum.

#### Listar categoria específica: **`/api/Categorias/{id}`**

**Método:** **`GET`**
**Retorno:** Objeto JSON contendo a categoria consultada (caso exista).
**Parâmetros:**

-   **`id`** <small>(**inteiro**, 32 bits)</small>: ID da categoria . Informado na URL da requisição.

#### Criar categoria: **`/api/Categorias`**

**Método:** **`POST`**
**Retorno:** Objeto JSON contendo a categorias criada.
**Parâmetros:**

-   **`name`** <small>(**string**, max. 50 caracteres)</small>: Nome da categoria . Informado no corpo requisição.
-   **`description`** <small>(**string**, max. 1024 caracteres)</small>: Descrição da categoria .Informado no corpo requisição.

#### Alterar categoria existente: **`/api/Categorias/{id}`**

**Método:** **`PUT`**
**Retorno:** Objeto JSON contendo a categorias alterada.
**Parâmetros:**

-   **`id`** <small>(inteiro, 32 bits)</small>: ID da categoria. Informado na URL da requisição.
-   **`categoria`** <small>Objeto contendo as alterações da categoria</small>: Informado no corpo da requisição.
    Parâmetros do objeto `categoria`
    -   **`id`** <small>(**inteiro**, 32bits)</small>: ID da categoria.
    -   **`name`** <small>(string, max. 50 caracteres)</small>: Nome da categoria.
    -   **`description`** <small>(string, max. 1024 caracteres)</small>: Descrição da categoria.

#### Excluir categoria: **`/api/Categorias/{id}`**

**Método:** **`DELETE`**
**Retorno:** Nenhum.
**Parâmetros:**

-   **`id`** <small>(**inteiro**, 32 bits)</small>: ID da categoria. Informado na URL da requisição.

> **Observação**
> Não será possível excluir uma categoria se houver produtos relacionados a ela.

---

### Produtos

#### Listar todos os produtos: **`/api/Produtos`**

**Método:** **`GET`**
**Retorno:** Objeto JSON contendo os produtos cadastrados.
**Parâmetros:** Nenhum.

#### Listar produto específico: **`/api/Produtos/{id}`**

**Método:** **`GET`**
**Retorno:** Objeto JSON contendo o produto consultado (caso exista).
**Parâmetros:**

-   **`id`** <small>(**inteiro**, 32 bits)</small>: ID da categoria. Informado na URL da requisição.

#### Criar produto: **`/api/Produtos`**

**Método:** **`POST`**
**Retorno:** Objeto JSON contendo o produto criado.
**Parâmetros:**

-   **`name`** <small>(**string**, max. 50 caracteres)</small>: Nome do produto. Informado no corpo requisição.
-   **`description`** <small>(**string**,max. 1024 caracteres)</small>: Descrição do produto. Informado no corpo requisição.
-   **`value`** <small>(**decimal**, precisão [10,2])</small>: Valor do produto.
-   **`brand`** <small>(**string**, máx 50 caracteres)</small>: Marca do produto.
-   **`categoryId`** <small>(**inteiro**, 32 bits)</small>: ID da categoria do produto.

#### Alterar produto existente: **`/api/Produtos/{id}`**

**Método:** **`PUT`**
**Retorno:** Objeto JSON contendo o produto alterado.
**Parâmetros:**

-   **`id`** ID do produto (**inteiro**, 32 bits). Informado na URL da requisição.
-   **`produto`** <small>Objeto contendo as alterações do produto.</small>: Informado no corpo da requisição. Parâmetros do objeto `produto`:
    -   **`id`** <small>(**inteiro**, 32bits)</small>: ID do produto.
    -   **`name`** <small>(string, max. 50 caracteres)</small>: Nome do produto.
    -   **`description`** <small>(string, máx. 1024 caracteres)</small>: Descrição do produto.
    -   **`value`** <small>(**decimal**, precisão [10,2])</small>: Valor do produto.
    -   **`brand`** <small>(**string**, máx 50 caracteres)</small>: Marca do produto.
    -   **`categoryId`** <small>(**inteiro**, 32 bits)</small>: ID da categoria do produto.

#### Excluir produto: **`/api/Produtos/{id}`**

**Método:** **`DELETE`**
**Retorno:** Nenhum.
**Parâmetros:**

-   **`id`** <small>(**inteiro**, 32 bits)</small>: ID da categoria. Informado na URL da requisição.
