.class public Lcom/waps/DisplayAd;
.super Ljava/lang/Object;


# static fields
.field private static final n:[B


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/view/View;

.field final c:Ljava/lang/String;

.field private d:Lcom/waps/t;

.field private e:Lcom/waps/DisplayAdNotifier;

.field private f:Lcom/waps/r;

.field private g:Landroid/content/Context;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private o:[B

.field private p:I

.field private q:I

.field private r:Z

.field private s:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x7b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/waps/DisplayAd;->n:[B

    return-void

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3et
        -0x1t
        0x3et
        -0x1t
        0x3ft
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x3at
        0x3bt
        0x3ct
        0x3dt
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x18t
        0x19t
        -0x1t
        -0x1t
        -0x1t
        -0x1t
        0x3ft
        -0x1t
        0x1at
        0x1bt
        0x1ct
        0x1dt
        0x1et
        0x1ft
        0x20t
        0x21t
        0x22t
        0x23t
        0x24t
        0x25t
        0x26t
        0x27t
        0x28t
        0x29t
        0x2at
        0x2bt
        0x2ct
        0x2dt
        0x2et
        0x2ft
        0x30t
        0x31t
        0x32t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    const-string v1, ""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/waps/DisplayAd;->d:Lcom/waps/t;

    iput-object v0, p0, Lcom/waps/DisplayAd;->f:Lcom/waps/r;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/DisplayAd;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/DisplayAd;->i:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/waps/DisplayAd;->j:Ljava/lang/String;

    const-string v0, "Display Ad"

    iput-object v0, p0, Lcom/waps/DisplayAd;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    new-instance v0, Lcom/waps/r;

    invoke-direct {v0}, Lcom/waps/r;-><init>()V

    iput-object v0, p0, Lcom/waps/DisplayAd;->f:Lcom/waps/r;

    iget-object v0, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    iget-object v1, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3gwap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cmwap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/waps/DisplayAd;->f:Lcom/waps/r;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/waps/r;->a(Z)V

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/waps/DisplayAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/waps/DisplayAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/waps/DisplayAd;)Lcom/waps/r;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->f:Lcom/waps/r;

    return-object v0
.end method

.method static synthetic access$400(Lcom/waps/DisplayAd;)Lcom/waps/DisplayAdNotifier;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->e:Lcom/waps/DisplayAdNotifier;

    return-object v0
.end method

.method static synthetic access$500(Lcom/waps/DisplayAd;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/waps/DisplayAd;->buildResponse(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/waps/DisplayAd;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/waps/DisplayAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/waps/DisplayAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/waps/DisplayAd;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/waps/DisplayAd;->k:Ljava/lang/String;

    return-object v0
.end method

.method private buildResponse(Ljava/lang/String;)Z
    .locals 14

    const/4 v12, 0x0

    const-string v0, ""

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "ClickUrl"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/DisplayAd;->k:Ljava/lang/String;

    const-string v1, "AdPackage"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/DisplayAd;->l:Ljava/lang/String;

    const-string v1, "NewBrowser"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/DisplayAd;->m:Ljava/lang/String;

    const-string v1, "Image"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, v2, v3, v1}, Lcom/waps/DisplayAd;->decodeBase64([BII)V

    iget-object v1, p0, Lcom/waps/DisplayAd;->o:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/waps/DisplayAd;->p:I

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/waps/DisplayAd;->a:Landroid/graphics/Bitmap;

    const-string v1, "ShowType"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v2, ""

    const-string v2, ""

    const-string v2, ""

    const-string v2, ""

    const-string v2, ""

    const-string v2, ""

    const-string v2, ""

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Fcolor"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "Bcolor"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "Mcolor"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "AppName"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "AppWords"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "AppMore"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "W"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "H"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "Mark"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/waps/DisplayAd;->getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    iget-object v8, p0, Lcom/waps/DisplayAd;->a:Landroid/graphics/Bitmap;

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lcom/waps/DisplayAd;->getView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iget-object v0, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    new-instance v1, Lcom/waps/s;

    invoke-direct {v1, p0}, Lcom/waps/s;-><init>(Lcom/waps/DisplayAd;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/waps/DisplayAd;->e:Lcom/waps/DisplayAdNotifier;

    iget-object v1, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/waps/DisplayAdNotifier;->getDisplayAdResponse(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_1
    iput-object v1, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/waps/DisplayAd;->o:[B
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return v0

    :cond_0
    :try_start_2
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waps/DisplayAd;->g:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/waps/DisplayAd;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/waps/DisplayAd;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/waps/DisplayAd;->b:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/waps/DisplayAd;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move v1, v12

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v13, v1

    move v1, v0

    move-object v0, v13

    goto :goto_2
.end method

.method private getARGB(Ljava/lang/String;)[I
    .locals 4

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private getNodeTrimValue(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    const-string v7, ""

    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Element;

    const-string v0, ""

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    move-object v3, v7

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    const-string v0, ""

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_2
    move-object v0, v6

    goto :goto_1

    :cond_3
    move-object v0, v6

    goto :goto_1
.end method

.method private getView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/view/View;
    .locals 17

    new-instance v2, Landroid/widget/LinearLayout;

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v3, Landroid/widget/RelativeLayout;

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setGravity(I)V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v6

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v7

    const/4 v8, 0x3

    aget v7, v7, v8

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x5

    const/4 v7, 0x5

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/RelativeLayout;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    const/4 v7, -0x2

    invoke-direct {v5, v6, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v7, -0x2

    const/4 v8, -0x2

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/ImageView;

    move-object v0, v7

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setId(I)V

    move-object v0, v7

    move-object/from16 v1, p8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v8, Landroid/widget/LinearLayout;

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/4 v9, 0x5

    const/4 v10, 0x0

    const/4 v11, 0x7

    const/4 v12, 0x0

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v9, 0x10

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v9, Landroid/widget/RelativeLayout;

    move-object v0, v9

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    new-instance v10, Landroid/widget/TextView;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v10

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41800000    # 16.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v12

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v13

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v14

    const/4 v15, 0x3

    aget v14, v14, v15

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v11, Landroid/widget/TextView;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v11

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v12, 0x41800000    # 16.0f

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v13

    const/4 v14, 0x1

    aget v13, v13, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v14

    const/4 v15, 0x2

    aget v14, v14, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v15

    const/16 v16, 0x3

    aget v15, v15, v16

    invoke-static {v12, v13, v14, v15}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v12, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v13, -0x2

    const/4 v14, -0x2

    invoke-direct {v12, v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v13, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v14, -0x2

    const/4 v15, -0x2

    invoke-direct {v13, v14, v15}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v14, 0x9

    invoke-virtual {v12, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v14, 0xb

    invoke-virtual {v13, v14}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v9, v10, v12}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v9, v11, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v10, Landroid/widget/TextView;

    move-object v0, v10

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v10

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v11, 0x41700000    # 15.0f

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextSize(F)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v11

    const/4 v12, 0x0

    aget v11, v11, v12

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v12

    const/4 v13, 0x1

    aget v12, v12, v13

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v13

    const/4 v14, 0x2

    aget v13, v13, v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/waps/DisplayAd;->getARGB(Ljava/lang/String;)[I

    move-result-object v14

    const/4 v15, 0x3

    aget v14, v14, v15

    invoke-static {v11, v12, v13, v14}, Landroid/graphics/Color;->argb(IIII)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/widget/ImageView;->getId()I

    move-result v10

    invoke-virtual {v5, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/16 v9, 0x9

    invoke-virtual {v6, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    invoke-virtual {v4, v7, v6}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v8, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v5, Landroid/widget/TextView;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setGravity(I)V

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setId(I)V

    new-instance v6, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v7, 0xf

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v7, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v8, -0x2

    const/4 v9, -0x2

    invoke-direct {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    new-instance v8, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v8, 0xb

    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v8, 0x0

    invoke-virtual {v5}, Landroid/widget/TextView;->getId()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v4, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-object v2
.end method


# virtual methods
.method decodeBase64([BII)V
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/waps/DisplayAd;->o:[B

    iput v1, p0, Lcom/waps/DisplayAd;->p:I

    iput-boolean v1, p0, Lcom/waps/DisplayAd;->r:Z

    iput v1, p0, Lcom/waps/DisplayAd;->q:I

    if-gez p3, :cond_0

    iput-boolean v5, p0, Lcom/waps/DisplayAd;->r:Z

    :cond_0
    move v0, v1

    move v1, p2

    :goto_0
    if-ge v0, p3, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_3

    iput-boolean v5, p0, Lcom/waps/DisplayAd;->r:Z

    :cond_1
    iget-boolean v0, p0, Lcom/waps/DisplayAd;->r:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/waps/DisplayAd;->q:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/waps/DisplayAd;->s:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/waps/DisplayAd;->s:I

    iget v0, p0, Lcom/waps/DisplayAd;->q:I

    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    if-ltz v1, :cond_4

    sget-object v3, Lcom/waps/DisplayAd;->n:[B

    array-length v3, v3

    if-ge v1, v3, :cond_4

    sget-object v3, Lcom/waps/DisplayAd;->n:[B

    aget-byte v1, v3, v1

    if-ltz v1, :cond_4

    iget v3, p0, Lcom/waps/DisplayAd;->q:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/waps/DisplayAd;->q:I

    rem-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/waps/DisplayAd;->q:I

    iget v3, p0, Lcom/waps/DisplayAd;->s:I

    shl-int/lit8 v3, v3, 0x6

    add-int/2addr v1, v3

    iput v1, p0, Lcom/waps/DisplayAd;->s:I

    iget v1, p0, Lcom/waps/DisplayAd;->q:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/waps/DisplayAd;->o:[B

    iget v3, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/waps/DisplayAd;->p:I

    iget v4, p0, Lcom/waps/DisplayAd;->s:I

    shr-int/lit8 v4, v4, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget-object v1, p0, Lcom/waps/DisplayAd;->o:[B

    iget v3, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/waps/DisplayAd;->p:I

    iget v4, p0, Lcom/waps/DisplayAd;->s:I

    shr-int/lit8 v4, v4, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    iget-object v1, p0, Lcom/waps/DisplayAd;->o:[B

    iget v3, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/waps/DisplayAd;->p:I

    iget v4, p0, Lcom/waps/DisplayAd;->s:I

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :pswitch_0
    iget v0, p0, Lcom/waps/DisplayAd;->s:I

    shl-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/waps/DisplayAd;->s:I

    iget-object v0, p0, Lcom/waps/DisplayAd;->o:[B

    iget v1, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/waps/DisplayAd;->p:I

    iget v2, p0, Lcom/waps/DisplayAd;->s:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/waps/DisplayAd;->o:[B

    iget v1, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/waps/DisplayAd;->p:I

    iget v2, p0, Lcom/waps/DisplayAd;->s:I

    shr-int/lit8 v2, v2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/waps/DisplayAd;->o:[B

    iget v1, p0, Lcom/waps/DisplayAd;->p:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/waps/DisplayAd;->p:I

    iget v2, p0, Lcom/waps/DisplayAd;->s:I

    shr-int/lit8 v2, v2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDisplayAdDataFromServer(Ljava/lang/String;Ljava/lang/String;Lcom/waps/DisplayAdNotifier;)V
    .locals 2

    iput-object p1, p0, Lcom/waps/DisplayAd;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/waps/DisplayAd;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "display/ad?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/waps/DisplayAd;->h:Ljava/lang/String;

    iput-object p2, p0, Lcom/waps/DisplayAd;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/waps/DisplayAd;->e:Lcom/waps/DisplayAdNotifier;

    new-instance v0, Lcom/waps/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/waps/t;-><init>(Lcom/waps/DisplayAd;Lcom/waps/s;)V

    iput-object v0, p0, Lcom/waps/DisplayAd;->d:Lcom/waps/t;

    iget-object v0, p0, Lcom/waps/DisplayAd;->d:Lcom/waps/t;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/waps/t;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
