# The `statmisc` `R` Package

**Miscellaneous Statistic Functions**

This package was created to complement one of the courses I am teaching. It provides basic statistical funcions, basic graphs, and datasets used in the course. 

To install and load this package you will need to run the following code
```
install.packages("devtools")
library(devtools)
install_github("DenisseUrenda/statmisc")
library(statmisc)
```
:warning: **Warning:** This package is not complete and will be constantly updated. Every time you use it, run the previous code to get the lastest updated version.

Some functions like `mode()` and `range()` from base R will be overwrote. To use any of them, write
```
base::mode(x)   # Storage mode of the R object x
base::range(x)  # Same as c(min(x),max(x))
```
In contrast to the `mode` and `range` from base R, these two functions will compute the statistical mode (number(s) or category(s) with highest frequency) and the actual range of data $r = x_{(n)} - x_{(1)}$.

You can also access to the data available in the package by typing
```
data(package = "statmisc")
```
Some of the data is borrowed from books like [Douglas Lind](https://www.amazon.com/-/es/Douglas-Lind/dp/1260187500/ref=d_pd_sbs_sccl_1_4/143-7816604-4992163?pd_rd_w=3pWa9&content-id=amzn1.sym.3676f086-9496-4fd7-8490-77cf7f43f846&pf_rd_p=3676f086-9496-4fd7-8490-77cf7f43f846&pf_rd_r=T9R0G61RHJ5HPHDE7A19&pd_rd_wg=YYH4G&pd_rd_r=b6313bad-697b-4224-a190-b7e7381440d9&pd_rd_i=1260187500&psc=1), [William Navidi](https://www.amazon.com/-/es/William-Navidi-dp-1259717607/dp/1259717607/ref=dp_ob_image_bk), [Wayne Daniel](https://www.amazon.com.mx/Biostatistics-Foundation-Analysis-Health-Sciences/dp/1118302796).

To access and have a quick look of an specific dataset, you can run
```
data(Applewood)
head(Applewood, n = 5)
```
You will get something similar to

|Age |Profit|Location |Vehicle-Type| Previous|
|:--:|:----:|--------:|-----------:|:-------:|
|21  | 1387 | Tionesta|      Sedan |       0 |
|23  | 1754 |Sheffield|        SUV |       1 |
|24  | 1817 |Sheffield|     Hybrid |       1 |
|25  | 1040 |Sheffield|    Compact |       0 |
|26  | 1273 |     Kane|      Sedan |       1 |

Have fun learning statistics and `R`.
