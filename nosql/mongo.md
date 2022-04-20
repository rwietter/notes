## MongoDB

MongoDB é um banco de documentos baseado em collections que armazenam BJSON. Além dos tipos genéricos e objetos, ele permite minKey, maxKey, Timestamp, BinData, ObjectId, Data, Regular Expressions.

É possível participar collections em partes menores via Sharding, ou seja, digamos que tenho uma collection de 3 TB, posso dividir ela por data em três collections em diferentes máquinas que dão 1TB cada.

ObjectId é um campo cujo MongoDB utiliza para identificar o registro e caso ele não passo passado explicitamente, o MongoDB vai fazer isso de forma implícita automaticamente.

```ts
dB.collection.count();
dB.collection.find();
dB.collection.findOne();

// Where
dB.collection.find({ '_id': 73, 'name': 'John Doe' }).pretty();

// Find by name and only includes name and age
dB.collection.find({ 'name': 'John Doe' }, { 'name': true, 'age': true }).pretty();
```

