
---
title: Character processing
date: 2019-05-27 12:00:00
tags: tips
category: tools
---

```
# delete 17 front
sed 's/.\{17\}//' b.txt > c.txt

# insert after 5
sed 's/.\{5\}/&\ \ \ /' c.txt > d.txt
```
