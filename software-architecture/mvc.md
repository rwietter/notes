# Model View Controller

A arquitetura MVC visa separar as responsabilidades em diferentes camadas:
- Model
- View
- Controller

Quando o usuário faz uma request, o controller responsável pela request do client informará ao servidor o que fazer com a request. Ele atua entre a Model e o View. O Controller socilita ao model que irá conter a lógica de negócio para retornar as informações necessárias solicitadas pela requisição. O Model é responsável pelo acesso ao banco de dados e validações. Então, o model retorna os dados requisitado para o controller que irá interagir com a View para renderizar os dados para o client, ou seja, a view só está preocupada em como os dados serão exibidos para o client. A view retornar uma representação visual para o controller que irá renderizar os dados para o client.

Observações, o model e a view nunca devem interagir entre si:
- Client -> Controller -> Model
- Model -> Controller
- Controller -> View
- View -> Controller -> Client

  
![MVC](assets/The-Spring-MVC-architecture-as-depicted-in-16.png)
