# Unicode Regex in oXygen

Unicode groups assigned character points to blocks and scripts:

- The regular expression `\p{Cyrillic}+` should match characters that are assigned to the Cyrillic script. Some regex flavors require the `\p{IsCyrillic}+` notation. The Cyrillic _script_ should match all the Cyrillic _blocks_.
- `\p{InCyrillic}+`, `\p{InCyrillicExtended-A}`, `\p{InCyrillicExtended-B}` should each match the corresponding Cyrillic block.

I'm puzzled by the following inconsistencies in oXygen.

## Script matching

### oXygen search

In oXygen Search, I'm getting the expected results, with `\p{IsCyrillic}+` matching Cyrillic script characters from all three Cyrillic blocks: Cyrillic, Cyrillic Extended-A and Cyrillic Extended-B.

![](https://i.imgur.com/KzIwOTe.png)

*oXygen search works as expected.*

### XPath matching

In XSLT, `{IsCyrillic}+` will match Cyrillic characters only in the Cyrillic block, but will _not_ match those that are in Cyrillic Extended-A and Cyrillic Extended-B.

![](https://i.imgur.com/tPVBbLg.png)

*xPath seems to match the block instead of the script.*

## Block matching

### oXygen search

*Works as expected. Blocks are correctly matched.*

![](https://i.imgur.com/023d5GU.png)

### XPath matching

*Block matching doesn't work at all because the character category is not recognized.*

![](https://i.imgur.com/ii6jRxK.png)

How can I make sense of this?
