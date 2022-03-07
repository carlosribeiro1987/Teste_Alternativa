# Teste_Alternativa

Teste técnico Alternativa Sistemas

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

-   **`id`** <small>(inteiro, 32 bits)</small>: ID da categoria . Informado na URL da requisição.

#### Criar categoria: **`/api/Categorias`**

**Método:** **`POST`**
**Retorno:** Objeto JSON contendo a categorias criada.
**Parâmetros:**

-   **`name`** <small>(string, max. 50 caracteres)</small>: Nome da categoria . Informado no corpo requisição.
-   **`description`** <small>(string, max. 1024 caracteres)</small>: Descrição da categoria .Informado no corpo requisição.

#### Alterar categoria existente: **`/api/Categorias/{id}`**

**Método:** **`PUT`**
**Retorno:** Objeto JSON contendo a categorias alterada.
**Parâmetros:**

-   **`id`** <small>(inteiro, 32 bits)</small>: ID da categoria. Informado na URL da requisição.
-   **`categoria`** <small>Objeto do tipo `categoria`</small>: Informado no corpo da requisição.
    Parâmetros do objeto `categoria`
    -   **`id`** <small>(inteiro, 32bits)</small>: ID da categoria.
    -   **`name`** <small>(string, max. 50 caracteres)</small>: Nome da categoria.
    -   **`description`** <small>(string, max. 1024 caracteres)</small>: Descrição da categoria.

#### Excluir categoria: **`/api/Categorias/{id}`**

**Método:** **`DELETE`**
**Retorno:** Nenhum.
**Parâmetros:**

-   **`id`** <small>(inteiro, 32 bits)</small>: ID da categoria. Informado na URL da requisição.

> **Observação**
> Não será possível excluir uma categoria se houver produtos relacionados a ela.

---

### Produtos

#### Listar todos os produtos: **`/api/Produtos`**

**Método:** **`GET`**
**Retorno:** Objeto JSON contendo os produtos cadastrados.
**Parâmetros:** Nenhum.

#### Listar categoria específica: **`/api/Produtos/{id}`**

**Método:** **`GET`**
**Retorno:** Objeto JSON contendo o produto consultado (caso exista).
**Parâmetros:**

-   **`id`** <small>(inteiro, 32 bits)</small>: ID da categoria. Informado na URL da requisição.

#### Criar produto: **`/api/Produtos`**

**Método:** **`POST`**
**Retorno:** Objeto JSON contendo o produto criado.
**Parâmetros:**

-   **`name`** <small>(string, max. 50 caracteres)</small>: Nome do produto. Informado no corpo requisição.
-   **`description`** <small>(string,max. 1024 caracteres)</small>: Descrição do produto. Informado no corpo requisição.
-   **`value`** <small>(decimal, precisão [10,2])</small>: Valor do produto.
-

#### Alterar produto existente:: **`/api/Produtos/{id}`**

**Método:** **`PUT`**
**Retorno:** Objeto JSON contendo o produto alterado.
**Parâmetros:**

-   **`id`** ID do produto (Inteiro (32 bits). Informado na URL da requisição.

#### Excluir categoria: **`/api/Produtos/{id}`**

**Método:** **`DELETE`**
**Retorno:** Nenhum.
**Parâmetros:**

-   **`id`** - ID da categoria.
    -   Tipo: Inteiro (32 bits).
    -   Informado na URL da requisição.
