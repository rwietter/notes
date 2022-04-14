### Curiosidades

- No **Svelte**, componentes _child_ são chamados de _slot_

### Props

Para usar props como no React, em vez de passar como atributo do componente, exportamos como variável:

```js
import { onMount } from "svelte";

// exporta a variável para transforma-la em uma prop
export let url = "https://academy.valentinog.com/api/link/";
export let title = "A list of links";
let data = [];

onMount(async function () {
  const response = await fetch(url);
  const json = await response.json();
  data = json;
});

// App.svelte
import Fetch from "./Fetch.svelte";

const props = {
  url: "https://jsonplaceholder.typicode.com/todos",
  title: "A list of todos",
};

// A url padrão será substituida por está
<Fetch {...props} />;
```

---

### Passando dados do componente owner para o slot

```jsx
// Fetch component
import { onMount } from "svelte";

export let url = "https://academy.valentinog.com/api/link/";
export let title = "A list of links";
let data = [];

onMount(async function() {
  const response = await fetch(url);
  const json = await response.json();
  data = json;
});

// {data} é um atalho para data={data}
<Slot {data} />
```

```jsx
// Slot component
import Fetch from "./Fetch.svelte";
const props = {
  url: "https://jsonplaceholder.typicode.com/todos"
};

// "let:data" é como encaminhar os dados internos de um componente um nível para cima.
<Fetch {...props} let:data>
  <h1>A list of todos</h1>
  <ul>
    {#each data as link}
      <li>{link.title}</li>
    {/each}
  </ul>
</Fetch>
```

---

### Manipulando eventos e modificadores de eventos

```jsx
// Form component
<script>
  export let handleSubmit = function(event) {
    // faz algo
  };
</script>

// Eventos -> on:event
<form on:submit={handleSubmit}>
  <label for="search">Search:</label>
  <input type="search" id="search" required />
  <button type="submit">Search</button>
</form>
```

```jsx
// App component
<script>
  import Form from "./Form.svelte";
</script>


<Form />
```

**Modificadores de ventos**

- Para usar um modificador de evento, basta utilizar esse operador "|" após a declaração do evento

```jsx
<form on:submit|preventDefault={handleSubmit}>
  <label for="search">Search:</label>
  <input type="search" id="search" required />
  <button type="submit">Search</button>
</form>
```