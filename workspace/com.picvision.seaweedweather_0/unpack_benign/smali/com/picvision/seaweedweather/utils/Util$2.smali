.class Lcom/picvision/seaweedweather/utils/Util$2;
.super Ljava/lang/Object;
.source "Util.java"

# interfaces
.implements Lcom/picvision/seaweedweather/utils/DownloadManagerAsync$OnDownloadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Landroid/content/Context;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/picvision/seaweedweather/utils/Util$2;->val$context:Landroid/content/Context;

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;Ljava/lang/Object;)V
    .locals 9
    .param p1, "manager"    # Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;
    .param p2, "result"    # Ljava/lang/Object;

    .prologue
    .line 293
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 294
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 295
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v5

    .line 296
    .local v5, "xr":Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;

    invoke-direct {v1}, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;-><init>()V

    .line 297
    .local v1, "gwh":Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;
    new-instance v6, Ljava/io/FileInputStream;

    const-string v7, "/data/data/com.picvision.seaweedweather/test.xml"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/util/Xml$Encoding;->UTF_8:Landroid/util/Xml$Encoding;

    invoke-static {v6, v7, v1}, Landroid/util/Xml;->parse(Ljava/io/InputStream;Landroid/util/Xml$Encoding;Lorg/xml/sax/ContentHandler;)V

    .line 298
    invoke-virtual {v1}, Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;->getRecommends()Ljava/util/List;

    move-result-object v4

    .line 299
    .local v4, "ws":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend;>;"
    iget-object v6, p0, Lcom/picvision/seaweedweather/utils/Util$2;->val$context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    .end local v1    # "gwh":Lcom/picvision/seaweedweather/xml/handlers/RecommendHandler;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v4    # "ws":Ljava/util/List;, "Ljava/util/List<Lcom/picvision/seaweedweather/model/Recommend;>;"
    .end local v5    # "xr":Lorg/xml/sax/XMLReader;
    :goto_0
    return-void

    .line 300
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
