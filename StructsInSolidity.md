# Structs in Solidity

## Structs
Using structs we can create custom types by grouping variables.
For example

```
enum Color {"Red", "Black", "Green"};

struct Cloth{
    Color clr;
    string fabric;
}
```

We can create new Cloth by invoking the struct and the order of parameter matters.

```
Cloth cloth = Cloth(Color.Red, "Linen");
```


## Returning Structs
When you're returning structs or other reference types like arrays, you have to clarify where the data is coming from using data location keywords: storage, memory, or calldata.

However, for external and public methods, you can't use the storage keyword for the return parameter. The storage keyword would provide a direct reference to a location within the contract's own persistent storage, which cannot be accessed outside of the contract. Use memory or calldata instead to return a copy of the data.

Let's take a look at an example of a struct being returned in memory:

```
struct Hero { uint health }

function postHero(Hero hero) external {
    // take a Hero type as an external argument
    console.log(hero.health); // 100
}

function getHero() external view returns (Hero memory) {
    // return Hero in an external function
    return Hero(100);
}

```
Ref: [Returning Structs](https://university.alchemy.com/course/solidity/sc/64daa11e0264c500022dc1dd/stage/64daa11e0264c500022dc1fe)