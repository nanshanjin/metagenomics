> 一 概述
宏基因组是指环境中所有微生物的遗传物质的总和，包括可培养的和不可培养的微生物。它不需要提取微生物培养,可直接获得DNA。这里的环境不只是指土壤、水体等自然环境，还包括人体中的微环境等，如口腔、肠道等。宏基因组学是研究宏基因组的一门新兴学科，是在微生物基因组学的基础上发展起来的一种研究微生物多样性、开发
新的生理活性物质（或获得新基因）的新理念和新方法。

**宏基因组测序与16S测序的主要区别**

1、16S长度短，不足以从种水平上区分因为微生物，而宏基因组是尽可能提取了所有微生物的DNA，因此它能获得的信息量较大，可以从鉴定到种；
2、宏基因组是获取微生物基因组的全长序列进行测序，因而能通过组装注释获得基因水平的信息，准确分析每个基因参与哪些代谢通路、调控何种酶的合成、如何变化，16S则无法做到。

**宏基因组测序流程**

1、提取环境样品中的所有DNA序列；
2、将其打断成300bp、500bp等小片段；
3、在3’端修复和连接A碱基；
4、连接接头构建文库；
5、文库质检；
6、上机测序。

> 二 样品提取

1、粪便：
不使用抗生素或益生菌；
详细记录各项生活指标和临床指标；
2小时内提取完毕；
置-80oC保存。
2、口腔提取：
唾液、舌苔、牙龈等；
不漱口，不使用抗菌活性的漱口水或牙膏。

> 三 文库构建

宏基因组文库构建与16S的最大差别在于：
+ 16S需要用用引物扩增16S序列中的某些可变区，而在扩增过程中难免会有扩增偏好性，这可能导致有些16S扩增
的次数比正常情况多，有些16S扩增次数少，甚至没有扩增到；
+ 宏基因组获取的是全部的DNA，不需要扩增基因组的某个区域，因此不存在扩增偏好性影响后续的分析。

> 四 上机测序

在测序上，宏基因组测序一般选择illumina Hiseq，它的优点是通量高。因为宏基因组测序量一般在5-10Gb，
可以同时测多个样品，有助于缩短测序时间。通路高还有另一个好处就是能节省成本；宏基因组一般使用pair-end 150bp测序。
> 五 数据分析 

在数据分析上，首先是对原始数据进行质控，接着分两步：
一步是对样品进行物种注释， 进行物种多样性分析；
一步是对样品进行组装，进行基因分析。
宏基因组物种多样性分析方法与16S 类似：先把cleanreads比对到参考序列上，参考序列有多种数据库可选择：
+ 直接比对到NCBI的微生物参考基因组；
+ 比对到Phylogenetic marker genes；
+ 从NCBI的NR库中提起微生物的基因序列做成数据库；
+ 使用mOTU数据库，该数据库是从3496个原核生物参考基因组中提取marker genes，再从263个人肠道宏基因组
中识别出marker genes，结合两者构成的一个数据库。

得到物种丰度列表后，接着进行α多样性分析评估，包括稀释曲线、物种累积曲线和多样性指数等。这些都是
为了说明测序的数据量足够覆盖样品中的微生物，增加测序量不会大幅度增加注释到的物种数量。

