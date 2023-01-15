.class public Lcom/picvision/seaweedweather/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field private static final DAYTIME_BEGIN_HOUR:I = 0x6

.field private static final DAYTIME_END_HOUR:I = 0x12

.field private static citylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Citys;",
            ">;"
        }
    .end annotation
.end field

.field private static download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

.field private static final wImgOtherBg:Ljava/util/regex/Pattern;

.field private static final wImgRainBg:Ljava/util/regex/Pattern;

.field private static final wImgSnowBg:Ljava/util/regex/Pattern;

.field private static weather:Lcom/picvision/seaweedweather/model/Weather;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 71
    new-instance v0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;-><init>()V

    sput-object v0, Lcom/picvision/seaweedweather/utils/Util;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    .line 73
    const-string v0, "\u96e8"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/picvision/seaweedweather/utils/Util;->wImgRainBg:Ljava/util/regex/Pattern;

    .line 74
    const-string v0, "\u96ea"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/picvision/seaweedweather/utils/Util;->wImgSnowBg:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "\u775b\uff5c\u9634\uff5c\u4e91"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/picvision/seaweedweather/utils/Util;->wImgOtherBg:Ljava/util/regex/Pattern;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CreatImage(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "bitAdress"    # I

    .prologue
    .line 208
    const/4 v0, 0x0

    .line 209
    .local v0, "bitmaptemp":Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 211
    return-object v0
.end method

.method public static createProgressDialog(Landroid/content/Context;I)Landroid/app/ProgressDialog;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "Style"    # I

    .prologue
    .line 128
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, "pd":Landroid/app/ProgressDialog;
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 130
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMax(I)V

    .line 131
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 132
    const-string v1, "\u8bf7\u8010\u5fc3\u7b49\u5f85..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 133
    const-string v1, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 134
    new-instance v1, Lcom/picvision/seaweedweather/utils/Util$1;

    invoke-direct {v1}, Lcom/picvision/seaweedweather/utils/Util$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 149
    return-object v0
.end method

.method private static final cutText(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 9
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "displayWidth"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Paint;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 656
    .local v0, "arraylist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    .line 657
    .local v5, "textLong":F
    int-to-float v6, p2

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    .line 658
    const/4 v2, 0x1

    .line 659
    .local v2, "flag":Z
    const/4 v4, 0x0

    .line 660
    .local v4, "templocation":F
    const/4 v1, 0x0

    .line 661
    .local v1, "breakTimes":I
    :goto_0
    if-nez v2, :cond_0

    .line 678
    .end local v1    # "breakTimes":I
    .end local v2    # "flag":Z
    .end local v4    # "templocation":F
    :goto_1
    return-object v0

    .line 662
    .restart local v1    # "breakTimes":I
    .restart local v2    # "flag":Z
    .restart local v4    # "templocation":F
    :cond_0
    const/4 v6, 0x1

    int-to-float v7, p2

    const/4 v8, 0x0

    invoke-virtual {p0, p1, v6, v7, v8}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v6

    int-to-float v4, v6

    .line 663
    const/4 v6, 0x0

    float-to-int v7, v4

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 665
    .local v3, "tempText":Ljava/lang/String;
    float-to-int v6, v4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 666
    const/4 v2, 0x0

    .line 673
    :goto_2
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 670
    :cond_1
    float-to-int v6, v4

    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 671
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 676
    .end local v1    # "breakTimes":I
    .end local v2    # "flag":Z
    .end local v3    # "tempText":Ljava/lang/String;
    .end local v4    # "templocation":F
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static getBg(Ljava/lang/String;)I
    .locals 3
    .param p0, "weathrinfo"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "icon":I
    if-nez p0, :cond_0

    .line 518
    const v0, 0x7f02009c

    .line 528
    :goto_0
    return v0

    .line 520
    :cond_0
    const-string v1, "\u96ea"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 521
    const v0, 0x7f02007e

    goto :goto_0

    .line 523
    :cond_1
    const-string v1, "\u96e8"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 524
    const v0, 0x7f020072

    goto :goto_0

    .line 526
    :cond_2
    const v0, 0x7f02009c

    goto :goto_0
.end method

.method public static getDayofWeek(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/content/Context;
    .param p1, "day"    # I

    .prologue
    .line 558
    const/4 v0, 0x0

    .line 559
    .local v0, "week":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 585
    :goto_0
    return-object v0

    .line 561
    :pswitch_0
    const v1, 0x7f060014

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 562
    goto :goto_0

    .line 564
    :pswitch_1
    const v1, 0x7f06000e

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 565
    goto :goto_0

    .line 567
    :pswitch_2
    const v1, 0x7f06000f

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 568
    goto :goto_0

    .line 570
    :pswitch_3
    const v1, 0x7f060010

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    goto :goto_0

    .line 573
    :pswitch_4
    const v1, 0x7f060011

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 574
    goto :goto_0

    .line 576
    :pswitch_5
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 577
    goto :goto_0

    .line 579
    :pswitch_6
    const v1, 0x7f060013

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 580
    goto :goto_0

    .line 559
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private static final getEnterText(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 648
    const-string v1, "\\|\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 649
    .local v0, "texts":[Ljava/lang/String;
    return-object v0
.end method

.method public static getImageNumber(I)I
    .locals 1
    .param p0, "num"    # I

    .prologue
    .line 532
    if-nez p0, :cond_0

    .line 533
    const v0, 0x7f020066

    .line 553
    :goto_0
    return v0

    .line 534
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 535
    const v0, 0x7f020067

    goto :goto_0

    .line 536
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 537
    const v0, 0x7f020068

    goto :goto_0

    .line 538
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 539
    const v0, 0x7f020069

    goto :goto_0

    .line 540
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 541
    const v0, 0x7f02006a

    goto :goto_0

    .line 542
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 543
    const v0, 0x7f02006b

    goto :goto_0

    .line 544
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 545
    const v0, 0x7f02006c

    goto :goto_0

    .line 546
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 547
    const v0, 0x7f02006d

    goto :goto_0

    .line 548
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 549
    const v0, 0x7f02006e

    goto :goto_0

    .line 550
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 551
    const v0, 0x7f02006f

    goto :goto_0

    .line 553
    :cond_9
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static final getLineBreakText(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;

    .prologue
    .line 642
    const-string v1, "\\|"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "texts":[Ljava/lang/String;
    return-object v0
.end method

.method public static getProvince()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Province;",
            ">;"
        }
    .end annotation

    .prologue
    .line 260
    const-class v3, Lcom/picvision/seaweedweather/main;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const-string v4, "cityList.xml"

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 261
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    .line 263
    .local v2, "provinceList":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Province;>;"
    :try_start_0
    invoke-static {v1}, Lcom/picvision/seaweedweather/utils/SaxReadxml;->getProvince(Ljava/io/InputStream;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 270
    :goto_0
    return-object v2

    .line 266
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getSpListFromXML(Ljava/io/File;)Ljava/util/List;
    .locals 11
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Sp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 364
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 365
    .local v0, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 366
    .local v0, "xr":Lorg/xml/sax/XMLReader;
    new-instance v0, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;

    .end local v0    # "xr":Lorg/xml/sax/XMLReader;
    invoke-direct {v0}, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;-><init>()V

    .line 367
    .local v0, "recommend":Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    .end local p0    # "path":Ljava/io/File;
    invoke-static {v1, p0, v0}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 368
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->getSpList()Ljava/util/List;

    move-result-object v2

    .line 369
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Sp;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 370
    .local v4, "size":I
    const/4 p0, 0x0

    .end local v0    # "recommend":Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;
    .local p0, "i":I
    :goto_0
    if-lt p0, v4, :cond_0

    move-object p0, v2

    .line 391
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Sp;>;"
    .end local v4    # "size":I
    .end local p0    # "i":I
    :goto_1
    return-object p0

    .line 371
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Sp;>;"
    .restart local v4    # "size":I
    .restart local p0    # "i":I
    :cond_0
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picvision/seaweedweather/model/Sp;

    .line 372
    .local v0, "temp":Lcom/picvision/seaweedweather/model/Sp;
    const-string v1, "test"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "sp:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Sp;->getSpName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Sp;->getRecommendList()Ljava/util/List;

    move-result-object v7

    .line 374
    .local v7, "temp1":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend;>;"
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    .line 375
    .local v5, "size1":I
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_2
    if-lt v0, v5, :cond_1

    .line 370
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 376
    :cond_1
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/picvision/seaweedweather/model/Recommend;

    .line 377
    .local v1, "re":Lcom/picvision/seaweedweather/model/Recommend;
    const-string v3, "test"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "recommend:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/picvision/seaweedweather/model/Recommend;->getRName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {v1}, Lcom/picvision/seaweedweather/model/Recommend;->getPics()Ljava/util/List;

    move-result-object v3

    .line 379
    .local v3, "pic":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend$RPic;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    .line 380
    .local v6, "size2":I
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_3
    if-lt v1, v6, :cond_2

    .line 375
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 381
    :cond_2
    const-string v9, "test"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v8, "pic:"

    invoke-direct {v10, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/picvision/seaweedweather/model/Recommend$RPic;

    invoke-virtual {v8}, Lcom/picvision/seaweedweather/model/Recommend$RPic;->getUrl()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 386
    .end local v0    # "j":I
    .end local v1    # "k":I
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Sp;>;"
    .end local v3    # "pic":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend$RPic;>;"
    .end local v4    # "size":I
    .end local v5    # "size1":I
    .end local v6    # "size2":I
    .end local v7    # "temp1":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend;>;"
    .end local p0    # "i":I
    :catch_0
    move-exception p0

    .line 388
    .local p0, "e":Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 391
    const/4 p0, 0x0

    goto :goto_1
.end method

.method public static final getTextString(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/lang/String;
    .locals 10
    .param p0, "paint"    # Landroid/graphics/Paint;
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "displayWidth"    # I

    .prologue
    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    .local v0, "builder":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .end local p1    # "text":Ljava/lang/String;
    invoke-static {p1}, Lcom/picvision/seaweedweather/utils/Util;->getEnterText(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 606
    .local v2, "enterTexts":[Ljava/lang/String;
    array-length v1, v2

    .line 607
    .local v1, "enterSize":I
    const/4 p1, 0x0

    .local p1, "i":I
    move v3, p1

    .end local p1    # "i":I
    .local v3, "i":I
    :goto_0
    if-lt v3, v1, :cond_0

    .line 637
    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/String;

    .line 638
    .end local v2    # "enterTexts":[Ljava/lang/String;
    .local p0, "enterTexts":[Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0    # "enterTexts":[Ljava/lang/String;
    return-object p0

    .line 608
    .restart local v2    # "enterTexts":[Ljava/lang/String;
    .local p0, "paint":Landroid/graphics/Paint;
    :cond_0
    const/4 p1, 0x0

    check-cast p1, [Ljava/lang/String;

    .line 609
    .local p1, "lineBreakTexts":[Ljava/lang/String;
    if-nez v3, :cond_1

    .line 610
    aget-object p1, v2, v3

    .end local p1    # "lineBreakTexts":[Ljava/lang/String;
    invoke-static {p1}, Lcom/picvision/seaweedweather/utils/Util;->getLineBreakText(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .restart local p1    # "lineBreakTexts":[Ljava/lang/String;
    move-object v6, p1

    .line 614
    .end local p1    # "lineBreakTexts":[Ljava/lang/String;
    .local v6, "lineBreakTexts":[Ljava/lang/String;
    :goto_1
    array-length p1, v6

    .line 615
    .local p1, "breakSize":I
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-lt v4, p1, :cond_2

    .line 635
    const/4 p1, 0x0

    check-cast p1, [Ljava/lang/String;

    .line 607
    .end local p1    # "breakSize":I
    add-int/lit8 p1, v3, 0x1

    .end local v3    # "i":I
    .local p1, "i":I
    move v3, p1

    .end local p1    # "i":I
    .restart local v3    # "i":I
    goto :goto_0

    .line 612
    .end local v4    # "j":I
    .end local v6    # "lineBreakTexts":[Ljava/lang/String;
    .local p1, "lineBreakTexts":[Ljava/lang/String;
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "lineBreakTexts":[Ljava/lang/String;
    const-string v4, "\n"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v4, v2, v3

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/picvision/seaweedweather/utils/Util;->getLineBreakText(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .restart local p1    # "lineBreakTexts":[Ljava/lang/String;
    move-object v6, p1

    .end local p1    # "lineBreakTexts":[Ljava/lang/String;
    .restart local v6    # "lineBreakTexts":[Ljava/lang/String;
    goto :goto_1

    .line 616
    .restart local v4    # "j":I
    .local p1, "breakSize":I
    :cond_2
    const-string v5, ""

    .line 617
    .local v5, "lineBreakText":Ljava/lang/String;
    if-nez v4, :cond_3

    .line 618
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "lineBreakText":Ljava/lang/String;
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v6, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 622
    .restart local v5    # "lineBreakText":Ljava/lang/String;
    :goto_3
    invoke-static {p0, v5, p2}, Lcom/picvision/seaweedweather/utils/Util;->cutText(Landroid/graphics/Paint;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v8

    .line 623
    .local v8, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 624
    .local v7, "textSize":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_4
    if-lt v5, v7, :cond_4

    .line 615
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 620
    .end local v7    # "textSize":I
    .end local v8    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "lineBreakText":Ljava/lang/String;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5    # "lineBreakText":Ljava/lang/String;
    const-string v7, "\n"

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v6, v4

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .restart local v5    # "lineBreakText":Ljava/lang/String;
    goto :goto_3

    .line 625
    .local v5, "k":I
    .restart local v7    # "textSize":I
    .restart local v8    # "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    if-nez v5, :cond_5

    .line 626
    const-string v9, ""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    :cond_5
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 629
    if-ge v5, v7, :cond_6

    .line 630
    const-string v9, "\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 624
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4
.end method

.method public static getWeatherImageBg(Ljava/lang/String;Z)I
    .locals 6
    .param p0, "WeatherCond"    # Ljava/lang/String;
    .param p1, "isDayTime"    # Z

    .prologue
    const/4 v3, -0x1

    const-string v5, "\u96ea"

    const-string v4, "\u96e8"

    .line 472
    const/4 v0, 0x0

    .line 473
    .local v0, "icon":I
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 474
    .local v1, "rdom":Ljava/util/Random;
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 512
    :goto_0
    return v0

    .line 476
    :pswitch_0
    if-nez p0, :cond_0

    .line 477
    const v0, 0x7f020011

    goto :goto_0

    .line 478
    :cond_0
    const-string v2, "\u96ea"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 479
    if-eqz p1, :cond_1

    const v2, 0x7f020034

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_1
    const v2, 0x7f020063

    move v0, v2

    goto :goto_1

    .line 480
    :cond_2
    const-string v2, "\u96e8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_4

    .line 481
    if-eqz p1, :cond_3

    const v2, 0x7f02007c

    move v0, v2

    :goto_2
    goto :goto_0

    :cond_3
    const v2, 0x7f020074

    move v0, v2

    goto :goto_2

    .line 483
    :cond_4
    if-eqz p1, :cond_5

    const v2, 0x7f020010

    move v0, v2

    .line 485
    :goto_3
    goto :goto_0

    .line 483
    :cond_5
    const v2, 0x7f020040

    move v0, v2

    goto :goto_3

    .line 487
    :pswitch_1
    if-nez p0, :cond_6

    .line 488
    const v0, 0x7f020012

    goto :goto_0

    .line 489
    :cond_6
    const-string v2, "\u96ea"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_8

    .line 490
    if-eqz p1, :cond_7

    const v2, 0x7f020035

    move v0, v2

    :goto_4
    goto :goto_0

    :cond_7
    const v2, 0x7f020064

    move v0, v2

    goto :goto_4

    .line 491
    :cond_8
    const-string v2, "\u96e8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_a

    .line 492
    if-eqz p1, :cond_9

    const v2, 0x7f02007d

    move v0, v2

    :goto_5
    goto :goto_0

    :cond_9
    const v2, 0x7f020075

    move v0, v2

    goto :goto_5

    .line 494
    :cond_a
    if-eqz p1, :cond_b

    const v2, 0x7f020011

    move v0, v2

    .line 497
    :goto_6
    goto :goto_0

    .line 494
    :cond_b
    const v2, 0x7f020041

    move v0, v2

    goto :goto_6

    .line 499
    :pswitch_2
    if-nez p0, :cond_c

    .line 500
    const v0, 0x7f020010

    goto :goto_0

    .line 501
    :cond_c
    const-string v2, "\u96ea"

    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_e

    .line 502
    if-eqz p1, :cond_d

    const v2, 0x7f020020

    move v0, v2

    :goto_7
    goto/16 :goto_0

    :cond_d
    const v2, 0x7f020065

    move v0, v2

    goto :goto_7

    .line 503
    :cond_e
    const-string v2, "\u96e8"

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-eq v2, v3, :cond_10

    .line 504
    if-eqz p1, :cond_f

    const v2, 0x7f020073

    move v0, v2

    :goto_8
    goto/16 :goto_0

    :cond_f
    const v2, 0x7f020076

    move v0, v2

    goto :goto_8

    .line 506
    :cond_10
    if-eqz p1, :cond_11

    const v2, 0x7f020012

    move v0, v2

    :goto_9
    goto/16 :goto_0

    :cond_11
    const v2, 0x7f020042

    move v0, v2

    goto :goto_9

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static isDaytime()Z
    .locals 3

    .prologue
    .line 465
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 466
    .local v0, "time":Landroid/text/format/Time;
    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 467
    iget v1, v0, Landroid/text/format/Time;->hour:I

    const/4 v2, 0x6

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/text/format/Time;->hour:I

    const/16 v2, 0x12

    if-gt v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static loadImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "imgUrl"    # Ljava/lang/String;

    .prologue
    .line 396
    :try_start_0
    new-instance v4, Ljava/net/URL;

    invoke-direct {v4, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 397
    .local v4, "url":Ljava/net/URL;
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;

    .line 398
    .local v1, "conn":Ljava/net/HttpURLConnection;
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->connect()V

    .line 400
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 402
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .local v0, "bm":Landroid/graphics/Bitmap;
    move-object v5, v0

    .line 409
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    .end local v1    # "conn":Ljava/net/HttpURLConnection;
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v5

    .line 404
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 405
    .local v2, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v2}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 409
    .end local v2    # "e":Ljava/net/MalformedURLException;
    :goto_1
    const/4 v5, 0x0

    goto :goto_0

    .line 406
    :catch_1
    move-exception v5

    move-object v2, v5

    .line 407
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static makeSureUpdate(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "Url"    # Ljava/lang/String;

    .prologue
    .line 415
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v7, ""

    invoke-direct {v1, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 417
    .local v1, "downLoad":Ljava/lang/StringBuffer;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 418
    .local v5, "url":Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 419
    .local v6, "urlConn":Ljava/net/URLConnection;
    invoke-virtual {v6}, Ljava/net/URLConnection;->connect()V

    .line 420
    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 422
    .local v3, "in":Ljava/io/InputStream;
    :goto_0
    const/16 v7, 0x14

    new-array v0, v7, [B

    .line 423
    .local v0, "buf":[B
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 424
    .local v4, "numread":I
    if-gtz v4, :cond_0

    .line 429
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 430
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 432
    .end local v0    # "buf":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "numread":I
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlConn":Ljava/net/URLConnection;
    :goto_1
    return-object v7

    .line 427
    .restart local v0    # "buf":[B
    .restart local v3    # "in":Ljava/io/InputStream;
    .restart local v4    # "numread":I
    .restart local v5    # "url":Ljava/net/URL;
    .restart local v6    # "urlConn":Ljava/net/URLConnection;
    :cond_0
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    .end local v0    # "buf":[B
    .end local v3    # "in":Ljava/io/InputStream;
    .end local v4    # "numread":I
    .end local v5    # "url":Ljava/net/URL;
    .end local v6    # "urlConn":Ljava/net/URLConnection;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 432
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "error"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method public static saveFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .param p0, "filePath"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 78
    const/4 v1, 0x0

    .line 79
    .local v1, "flag":Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 89
    .end local v0    # "file":Ljava/io/File;
    :cond_0
    :goto_0
    const-string v0, "test"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "filePath = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const/4 v3, 0x0

    .line 92
    .local v3, "statusCode":I
    :try_start_0
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 93
    .local v0, "client":Lorg/apache/http/client/HttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v2, p1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 94
    .local v2, "get":Lorg/apache/http/client/methods/HttpGet;
    invoke-interface {v0, v2}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1

    .line 95
    .local p1, "response":Lorg/apache/http/HttpResponse;
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    .line 96
    .local v0, "statusLine":Lorg/apache/http/StatusLine;
    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .line 97
    .end local v3    # "statusCode":I
    .local v4, "statusCode":I
    const/16 v0, 0xc8

    if-ne v4, v0, :cond_3

    .line 98
    .end local v0    # "statusLine":Lorg/apache/http/StatusLine;
    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p1

    .line 99
    .local p1, "entity":Lorg/apache/http/HttpEntity;
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v2

    .line 100
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_3

    .line 101
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance p1, Ljava/lang/StringBuilder;

    .end local p1    # "entity":Lorg/apache/http/HttpEntity;
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ".temp"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 102
    .local v3, "out":Ljava/io/FileOutputStream;
    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 103
    .local p1, "buf":[B
    const/4 v0, -0x1

    .line 104
    .local v0, "ch":I
    :goto_1
    invoke-virtual {v2, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v5, :cond_2

    .line 107
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 108
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 109
    new-instance p1, Ljava/io/File;

    .end local p1    # "buf":[B
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0    # "ch":I
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "is":Ljava/io/InputStream;
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".temp"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    .local p1, "tempfile":Ljava/io/File;
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 111
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 112
    const/4 p0, 0x1

    .line 124
    .end local v1    # "flag":Z
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local v4    # "statusCode":I
    .end local p1    # "tempfile":Ljava/io/File;
    .local p0, "flag":Z
    :goto_2
    return p0

    .line 83
    .local v0, "file":Ljava/io/File;
    .restart local v1    # "flag":Z
    .local p0, "filePath":Ljava/lang/String;
    .local p1, "url":Ljava/lang/String;
    :cond_1
    const/4 v0, 0x0

    const-string v2, "/"

    .end local v0    # "file":Ljava/io/File;
    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "path":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "folder":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .end local v2    # "path":Ljava/lang/String;
    if-nez v2, :cond_0

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto/16 :goto_0

    .line 105
    .local v0, "ch":I
    .local v2, "is":Ljava/io/InputStream;
    .restart local v3    # "out":Ljava/io/FileOutputStream;
    .restart local v4    # "statusCode":I
    .local p1, "buf":[B
    :cond_2
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v3, p1, v5, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 116
    .end local v0    # "ch":I
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "out":Ljava/io/FileOutputStream;
    .end local p1    # "buf":[B
    :catch_0
    move-exception p0

    move p1, v4

    .line 118
    .end local v4    # "statusCode":I
    .local p0, "e":Lorg/apache/http/client/ClientProtocolException;
    .local p1, "statusCode":I
    :goto_3
    invoke-virtual {p0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    move p0, v1

    .end local v1    # "flag":Z
    .local p0, "flag":Z
    goto :goto_2

    .line 119
    .end local p1    # "statusCode":I
    .restart local v1    # "flag":Z
    .local v3, "statusCode":I
    .local p0, "filePath":Ljava/lang/String;
    :catch_1
    move-exception p0

    move p1, v3

    .line 121
    .end local v3    # "statusCode":I
    .local p0, "e":Ljava/io/IOException;
    .restart local p1    # "statusCode":I
    :goto_4
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .end local p0    # "e":Ljava/io/IOException;
    .end local p1    # "statusCode":I
    :cond_3
    move p0, v1

    .end local v1    # "flag":Z
    .local p0, "flag":Z
    goto :goto_2

    .line 119
    .restart local v1    # "flag":Z
    .restart local v4    # "statusCode":I
    .local p0, "filePath":Ljava/lang/String;
    :catch_2
    move-exception p0

    move p1, v4

    .end local v4    # "statusCode":I
    .restart local p1    # "statusCode":I
    goto :goto_4

    .line 116
    .end local p1    # "statusCode":I
    .restart local v3    # "statusCode":I
    :catch_3
    move-exception p0

    move p1, v3

    .end local v3    # "statusCode":I
    .restart local p1    # "statusCode":I
    goto :goto_3
.end method

.method public static search(Ljava/io/File;)Ljava/util/List;
    .locals 8
    .param p0, "path"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 342
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    .line 343
    .local v4, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v3

    .line 344
    .local v3, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 345
    .local v5, "xr":Lorg/xml/sax/XMLReader;
    new-instance v2, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;

    invoke-direct {v2}, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;-><init>()V

    .line 346
    .local v2, "recommend":Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v7, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v6, v7, v2}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 347
    invoke-virtual {v2}, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->getRecommends()Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend;>;"
    move-object v6, v1

    .line 354
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend;>;"
    .end local v2    # "recommend":Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;
    .end local v3    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v4    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v5    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    return-object v6

    .line 349
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 351
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 354
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;
    .locals 8
    .param p0, "path"    # Ljava/io/File;

    .prologue
    .line 320
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 321
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 322
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 323
    .local v5, "xr":Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;

    invoke-direct {v1}, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;-><init>()V

    .line 324
    .local v1, "gwh":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v7, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v6, v7, v1}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 326
    invoke-virtual {v1}, Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;->getWeather()Lcom/picvision/seaweedweather/model/Weather;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .local v4, "ws":Lcom/picvision/seaweedweather/model/Weather;
    move-object v6, v4

    .line 333
    .end local v1    # "gwh":Lcom/picvision/seaweedweather/xml/handlers/WeatherHandler;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v4    # "ws":Lcom/picvision/seaweedweather/model/Weather;
    .end local v5    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    return-object v6

    .line 328
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 330
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 333
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static searchWeather(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Recommend;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "http://211.95.79.112/weatherServer/GetProducts.jsp?version=1.0.0&gender=1"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 285
    .local v1, "url":Ljava/net/URL;
    sget-object v2, Lcom/picvision/seaweedweather/utils/Util;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "/data/data/com.picvision.seaweedweather/test.xml"

    invoke-virtual {v2, v3, v4}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->download(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "URL"

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    sget-object v2, Lcom/picvision/seaweedweather/utils/Util;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    new-instance v3, Lcom/picvision/seaweedweather/utils/Util$2;

    invoke-direct {v3, p0}, Lcom/picvision/seaweedweather/utils/Util$2;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;->setOnDownloadCompleteListener(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    .end local v1    # "url":Ljava/net/URL;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 307
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static settingTime(I)I
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 438
    const/4 v0, 0x0

    .line 439
    .local v0, "time":I
    packed-switch p0, :pswitch_data_0

    .line 459
    :goto_0
    return v0

    .line 441
    :pswitch_0
    const/4 v0, 0x0

    .line 442
    goto :goto_0

    .line 444
    :pswitch_1
    const v0, 0xea60

    .line 445
    goto :goto_0

    .line 447
    :pswitch_2
    const v0, 0x1d4c0

    .line 448
    goto :goto_0

    .line 450
    :pswitch_3
    const v0, 0x2bf20

    .line 451
    goto :goto_0

    .line 453
    :pswitch_4
    const v0, 0x57e40

    .line 454
    goto :goto_0

    .line 456
    :pswitch_5
    const v0, 0xafc80

    goto :goto_0

    .line 439
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static setwHeight(Landroid/content/Context;D)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "percentage"    # D

    .prologue
    .line 589
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 590
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 591
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    .line 592
    .local v2, "wHeight":I
    int-to-double v3, v2

    mul-double/2addr v3, p1

    double-to-int v3, v3

    return v3
.end method

.method public static setwWidth(Landroid/content/Context;D)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "percentage"    # D

    .prologue
    .line 596
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    .line 597
    .local v1, "manager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 598
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    .line 599
    .local v2, "wWidth":I
    int-to-double v3, v2

    mul-double/2addr v3, p1

    double-to-int v3, v3

    return v3
.end method

.method public static vectorToBriefInfos(Ljava/util/Vector;)[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;
    .locals 6
    .param p0, "vector"    # Ljava/util/Vector;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 182
    const/4 v3, 0x0

    .line 183
    .local v3, "size":I
    const/4 v2, 0x0

    check-cast v2, [Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    .line 184
    .local v2, "objs":[Lcom/picvision/seaweedweather/model/Weather$BriefInfo;
    if-eqz p0, :cond_2

    move v1, v5

    .line 185
    .local v1, "isCorrect":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 187
    if-lez v3, :cond_3

    move v1, v5

    .line 189
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 190
    new-array v2, v3, [Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    .line 191
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v3, :cond_4

    .line 195
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    .line 196
    const/4 p0, 0x0

    .line 197
    return-object v2

    .end local v1    # "isCorrect":Z
    :cond_2
    move v1, v4

    .line 184
    goto :goto_0

    .restart local v1    # "isCorrect":Z
    :cond_3
    move v1, v4

    .line 187
    goto :goto_1

    .line 192
    .restart local v0    # "i":I
    :cond_4
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

    aput-object v4, v2, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static vectorToExplanations(Ljava/util/Vector;)[Lcom/picvision/seaweedweather/model/Weather$Explanation;
    .locals 6
    .param p0, "vector"    # Ljava/util/Vector;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 158
    const/4 v3, 0x0

    .line 159
    .local v3, "size":I
    const/4 v2, 0x0

    check-cast v2, [Lcom/picvision/seaweedweather/model/Weather$Explanation;

    .line 160
    .local v2, "objs":[Lcom/picvision/seaweedweather/model/Weather$Explanation;
    if-eqz p0, :cond_2

    move v1, v5

    .line 161
    .local v1, "isCorrect":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v3

    .line 163
    if-lez v3, :cond_3

    move v1, v5

    .line 165
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 166
    new-array v2, v3, [Lcom/picvision/seaweedweather/model/Weather$Explanation;

    .line 167
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-lt v0, v3, :cond_4

    .line 171
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p0}, Ljava/util/Vector;->removeAllElements()V

    .line 172
    const/4 p0, 0x0

    .line 173
    return-object v2

    .end local v1    # "isCorrect":Z
    :cond_2
    move v1, v4

    .line 160
    goto :goto_0

    .restart local v1    # "isCorrect":Z
    :cond_3
    move v1, v4

    .line 163
    goto :goto_1

    .line 168
    .restart local v0    # "i":I
    :cond_4
    invoke-virtual {p0, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/picvision/seaweedweather/model/Weather$Explanation;

    aput-object v4, v2, v0

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public static zoomImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "bgimage"    # Landroid/graphics/Bitmap;
    .param p1, "newWidth"    # I
    .param p2, "newHeight"    # I

    .prologue
    const/4 v1, 0x0

    .line 234
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 235
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 239
    .local v4, "height":I
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 243
    .local v5, "matrix":Landroid/graphics/Matrix;
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v9, v0, v2

    .line 244
    .local v9, "scaleWidth":F
    int-to-float v0, p2

    int-to-float v2, v4

    div-float v8, v0, v2

    .line 248
    .local v8, "scaleHeight":F
    invoke-virtual {v5, v9, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 250
    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    .line 249
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 251
    .local v7, "bitmap":Landroid/graphics/Bitmap;
    return-object v7
.end method
