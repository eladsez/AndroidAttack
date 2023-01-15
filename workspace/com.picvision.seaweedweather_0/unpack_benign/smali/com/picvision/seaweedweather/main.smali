.class public Lcom/picvision/seaweedweather/main;
.super Landroid/app/Activity;
.source "main.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/picvision/seaweedweather/main$MovePositon;,
        Lcom/picvision/seaweedweather/main$MyOnDownloadCompleteListener;
    }
.end annotation


# static fields
.field private static final AGESETTING:I = 0x2

.field private static final About:I = 0x1

.field private static final CHECK_UPDATE:I = 0x6

.field private static final Community:I = 0x3

.field private static final DATA:I = 0x1

.field private static final DIALOGDISSMISS:I = 0xb

.field private static final DISMISS:I = 0x1

.field private static final DISMISS_DIALOG:I = 0x3

.field private static final GET_WEATHER:I = 0x5

.field private static final Help:I = 0x0

.field private static final IMG_DOWNLOAD:I = 0xa

.field private static final NONETWORK:I = 0x3

.field private static final PROGRESS:I = 0x4

.field private static final RECOMMENDXMLERROR:I = 0x64

.field private static final REPLACE_BG:I = 0x9

.field private static final SEND_INFOR:I = 0x8

.field private static final SHOW:I = 0x0

.field private static final SHOW_DIALOG:I = 0x2

.field private static final SoftUpdate:I = 0x4

.field private static final TONEXT:I = 0x2

.field private static final UPDATE_DILOG:I = 0x7

.field private static provinceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Province;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private DISSMIS_COMMUNITY:Z

.field private adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private adapter2:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private advertView:Lcn/com/picvision/view/AdvertView;

.field alert:Landroid/app/AlertDialog;

.field briefinfo:Lcom/picvision/seaweedweather/model/Weather$BriefInfo;

.field private city:Landroid/widget/TextView;

.field citylist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/picvision/seaweedweather/model/Citys;",
            ">;"
        }
    .end annotation
.end field

.field private clothes:Ljava/lang/String;

.field context:Landroid/content/Context;

.field day:Landroid/widget/ImageView;

.field day2:Landroid/widget/ImageView;

.field dian1:Landroid/widget/ImageView;

.field dian2:Landroid/widget/ImageView;

.field dian3:Landroid/widget/ImageView;

.field displayHight:I

.field displayWidth:I

.field downCount:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field downCountNum:I

.field download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

.field flag:Z

.field gallery:Lcom/picvision/seaweedweather/views/MyGallery;

.field private handler:Landroid/os/Handler;

.field imbg:Landroid/widget/ImageButton;

.field img:Lcom/picvision/seaweedweather/views/MyImageView;

.field img2:Landroid/widget/ImageView;

.field img3:Landroid/widget/ImageView;

.field img4:Landroid/widget/ImageView;

.field imgBtn:Landroid/widget/ImageButton;

.field isHmove:Z

.field iv:Landroid/widget/ImageView;

.field mainbg:Landroid/widget/FrameLayout;

.field private makeUp:Ljava/lang/String;

.field mx:Landroid/graphics/Matrix;

.field private progressDialog:Landroid/app/Dialog;

.field realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

.field private road:Ljava/lang/String;

.field private sp:Landroid/widget/Spinner;

.field private sp2:Landroid/widget/Spinner;

.field srcbmp:Landroid/graphics/Bitmap;

.field private timer:Ljava/util/Timer;

.field private tv:Landroid/widget/TextView;

.field private tv11:Landroid/widget/TextView;

.field private tv2:Landroid/widget/TextView;

.field private tv22:Landroid/widget/TextView;

.field private tv3:Landroid/widget/TextView;

.field private tv4:Landroid/widget/TextView;

.field private umbrella:Ljava/lang/String;

.field private update:[Ljava/lang/String;

.field updateThread:Ljava/lang/Thread;

.field private uv_ray:Ljava/lang/String;

.field private values:[Ljava/lang/String;

.field weather:[Lcom/picvision/seaweedweather/model/Weather;

.field weatherId:I


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    iput-boolean v3, p0, Lcom/picvision/seaweedweather/main;->DISSMIS_COMMUNITY:Z

    .line 106
    iput-boolean v3, p0, Lcom/picvision/seaweedweather/main;->flag:Z

    .line 116
    new-instance v0, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    invoke-direct {v0}, Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/main;->download:Lcom/picvision/seaweedweather/utils/DownloadManagerAsync;

    .line 117
    new-array v0, v4, [Lcom/picvision/seaweedweather/model/Weather;

    iput-object v0, p0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/picvision/seaweedweather/main;->advertView:Lcn/com/picvision/view/AdvertView;

    .line 135
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u624b\u52a8"

    aput-object v1, v0, v3

    const-string v1, "1\u5c0f\u65f6"

    aput-object v1, v0, v5

    const-string v1, "2\u5c0f\u65f6"

    aput-object v1, v0, v6

    const-string v1, "3\u5c0f\u65f6"

    aput-object v1, v0, v4

    const/4 v1, 0x4

    const-string v2, "6\u5c0f\u65f6"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "12\u5c0f\u65f6"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/picvision/seaweedweather/main;->update:[Ljava/lang/String;

    .line 136
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u57ce\u5e021:"

    aput-object v1, v0, v3

    const-string v1, "\u57ce\u5e022:"

    aput-object v1, v0, v5

    const-string v1, "\u57ce\u5e023:"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/picvision/seaweedweather/main;->values:[Ljava/lang/String;

    .line 142
    iput v3, p0, Lcom/picvision/seaweedweather/main;->downCountNum:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/picvision/seaweedweather/main;->downCount:Ljava/util/ArrayList;

    .line 172
    new-instance v0, Lcom/picvision/seaweedweather/main$1;

    invoke-direct {v0, p0}, Lcom/picvision/seaweedweather/main$1;-><init>(Lcom/picvision/seaweedweather/main;)V

    iput-object v0, p0, Lcom/picvision/seaweedweather/main;->handler:Landroid/os/Handler;

    .line 75
    return-void
.end method

.method static synthetic access$0(Lcom/picvision/seaweedweather/main;)Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/picvision/seaweedweather/main;->progressDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$1(Lcom/picvision/seaweedweather/main;I)Lcom/picvision/seaweedweather/model/Weather;
    .locals 1

    .prologue
    .line 677
    invoke-direct {p0, p1}, Lcom/picvision/seaweedweather/main;->weather(I)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/picvision/seaweedweather/main;Landroid/app/Dialog;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/picvision/seaweedweather/main;->progressDialog:Landroid/app/Dialog;

    return-void
.end method

.method static synthetic access$3(Lcom/picvision/seaweedweather/main;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/picvision/seaweedweather/main;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/picvision/seaweedweather/main;Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/picvision/seaweedweather/main;->DISSMIS_COMMUNITY:Z

    return-void
.end method

.method static synthetic access$5(Lcom/picvision/seaweedweather/main;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/picvision/seaweedweather/main;->sp2:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$6(Lcom/picvision/seaweedweather/main;Landroid/widget/ArrayAdapter;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/picvision/seaweedweather/main;->adapter2:Landroid/widget/ArrayAdapter;

    return-void
.end method

.method static synthetic access$7(Lcom/picvision/seaweedweather/main;)Landroid/widget/ArrayAdapter;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/picvision/seaweedweather/main;->adapter2:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$8(Lcom/picvision/seaweedweather/main;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/picvision/seaweedweather/main;->sp:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$9(Lcom/picvision/seaweedweather/main;)Ljava/util/List;
    .locals 1

    .prologue
    .line 1183
    invoke-direct {p0}, Lcom/picvision/seaweedweather/main;->getData()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getData()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 1184
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Lcom/picvision/seaweedweather/main;->values:[Ljava/lang/String;

    array-length v3, v7

    .local v3, "j":I
    :goto_0
    if-lt v2, v3, :cond_0

    .line 1195
    return-object v4

    .line 1186
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1187
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v7, "city"

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 1188
    .local v6, "sp":Landroid/content/SharedPreferences;
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cityid"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1189
    .local v0, "cityid":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-interface {v6, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1190
    .local v1, "cityname":Ljava/lang/String;
    const-string v7, "value"

    iget-object v8, p0, Lcom/picvision/seaweedweather/main;->values:[Ljava/lang/String;

    aget-object v8, v8, v2

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    const-string v7, "city_setting"

    if-nez v1, :cond_1

    const-string v8, "\u70b9\u51fb\u8bbe\u7f6e"

    :goto_1
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string v7, "img"

    if-nez v1, :cond_2

    const v8, 0x7f020079

    :goto_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v8, v1

    .line 1191
    goto :goto_1

    .line 1192
    :cond_2
    const v8, 0x7f02007a

    goto :goto_2
.end method

.method private inintWeather()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 542
    const v1, 0x7f09000e

    invoke-virtual {p0, v1}, Lcom/picvision/seaweedweather/main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/picvision/seaweedweather/main;->mainbg:Landroid/widget/FrameLayout;

    .line 543
    const v1, 0x7f090013

    invoke-virtual {p0, v1}, Lcom/picvision/seaweedweather/main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/picvision/seaweedweather/main;->imgBtn:Landroid/widget/ImageButton;

    .line 544
    const v1, 0x7f090016

    invoke-virtual {p0, v1}, Lcom/picvision/seaweedweather/main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/picvision/seaweedweather/main;->dian1:Landroid/widget/ImageView;

    .line 545
    const v1, 0x7f090017

    invoke-virtual {p0, v1}, Lcom/picvision/seaweedweather/main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/picvision/seaweedweather/main;->dian2:Landroid/widget/ImageView;

    .line 546
    const v1, 0x7f090018

    invoke-virtual {p0, v1}, Lcom/picvision/seaweedweather/main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/picvision/seaweedweather/main;->dian3:Landroid/widget/ImageView;

    .line 547
    iget-object v1, p0, Lcom/picvision/seaweedweather/main;->imgBtn:Landroid/widget/ImageButton;

    new-instance v2, Lcom/picvision/seaweedweather/main$2;

    invoke-direct {v2, p0}, Lcom/picvision/seaweedweather/main$2;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 567
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/main;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 568
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/picvision/seaweedweather/main;->displayWidth:I

    .line 569
    const v1, 0x7f090012

    invoke-virtual {p0, v1}, Lcom/picvision/seaweedweather/main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/picvision/seaweedweather/views/MyGallery;

    iput-object v1, p0, Lcom/picvision/seaweedweather/main;->realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

    .line 570
    iget-object v1, p0, Lcom/picvision/seaweedweather/main;->realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

    const-wide/high16 v2, 0x3f90000000000000L    # 0.015625

    iget v4, p0, Lcom/picvision/seaweedweather/main;->displayWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    invoke-virtual {v1, v2, v6}, Lcom/picvision/seaweedweather/views/MyGallery;->scrollBy(II)V

    .line 571
    const v1, 0x7f090014

    invoke-virtual {p0, v1}, Lcom/picvision/seaweedweather/main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/picvision/seaweedweather/views/MyGallery;

    iput-object v1, p0, Lcom/picvision/seaweedweather/main;->gallery:Lcom/picvision/seaweedweather/views/MyGallery;

    .line 572
    iget-object v1, p0, Lcom/picvision/seaweedweather/main;->gallery:Lcom/picvision/seaweedweather/views/MyGallery;

    const-wide v2, 0x3f8999999999999aL    # 0.0125

    iget v4, p0, Lcom/picvision/seaweedweather/main;->displayWidth:I

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-int v2, v2

    neg-int v2, v2

    invoke-virtual {v1, v2, v6}, Lcom/picvision/seaweedweather/views/MyGallery;->scrollBy(II)V

    .line 574
    iget-object v1, p0, Lcom/picvision/seaweedweather/main;->gallery:Lcom/picvision/seaweedweather/views/MyGallery;

    new-instance v2, Lcom/picvision/seaweedweather/main$3;

    invoke-direct {v2, p0}, Lcom/picvision/seaweedweather/main$3;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual {v1, v2}, Lcom/picvision/seaweedweather/views/MyGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 606
    return-void
.end method

.method private init()Z
    .locals 3

    .prologue
    .line 618
    new-instance v0, Lcom/picvision/seaweedweather/views/RealAdapter;

    iget-object v1, p0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    invoke-direct {v0, p0, v1}, Lcom/picvision/seaweedweather/views/RealAdapter;-><init>(Landroid/content/Context;[Lcom/picvision/seaweedweather/model/Weather;)V

    .line 619
    .local v0, "radapter":Lcom/picvision/seaweedweather/views/RealAdapter;
    iget-object v1, p0, Lcom/picvision/seaweedweather/main;->realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v1, v0}, Lcom/picvision/seaweedweather/views/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 621
    iget-object v1, p0, Lcom/picvision/seaweedweather/main;->realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

    new-instance v2, Lcom/picvision/seaweedweather/main$4;

    invoke-direct {v2, p0}, Lcom/picvision/seaweedweather/main$4;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual {v1, v2}, Lcom/picvision/seaweedweather/views/MyGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 672
    const/4 v1, 0x1

    return v1
.end method

.method private isWeatherNull(Ljava/io/File;I)Z
    .locals 2
    .param p1, "path"    # Ljava/io/File;
    .param p2, "i"    # I

    .prologue
    .line 609
    iget-object v0, p0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    invoke-static {p1}, Lcom/picvision/seaweedweather/utils/Util;->searchWeather(Ljava/io/File;)Lcom/picvision/seaweedweather/model/Weather;

    move-result-object v1

    aput-object v1, v0, p2

    .line 610
    iget-object v0, p0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 611
    const/4 v0, 0x0

    .line 613
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private weather(I)Lcom/picvision/seaweedweather/model/Weather;
    .locals 4
    .param p1, "posion"    # I

    .prologue
    .line 678
    iget-object v2, p0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v2, v2, p1

    if-nez v2, :cond_0

    .line 679
    const-string v2, "\u83b7\u53d6\u4e0d\u5230\u6570\u636e,\u8bf7\u8bbe\u7f6e\u57ce\u5e02"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 683
    :cond_0
    iget-object v2, p0, Lcom/picvision/seaweedweather/main;->realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v2}, Lcom/picvision/seaweedweather/views/MyGallery;->getSelectedItemPosition()I

    move-result v0

    .line 687
    .local v0, "poon":I
    new-instance v1, Lcom/picvision/seaweedweather/views/RealAdapter;

    iget-object v2, p0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    invoke-direct {v1, p0, v2}, Lcom/picvision/seaweedweather/views/RealAdapter;-><init>(Landroid/content/Context;[Lcom/picvision/seaweedweather/model/Weather;)V

    .line 688
    .local v1, "radapter":Lcom/picvision/seaweedweather/views/RealAdapter;
    iget-object v2, p0, Lcom/picvision/seaweedweather/main;->realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v2, v1}, Lcom/picvision/seaweedweather/views/MyGallery;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 689
    iget-object v2, p0, Lcom/picvision/seaweedweather/main;->realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v2, v0}, Lcom/picvision/seaweedweather/views/MyGallery;->setSelection(I)V

    .line 691
    iget-object v2, p0, Lcom/picvision/seaweedweather/main;->realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

    new-instance v3, Lcom/picvision/seaweedweather/main$5;

    invoke-direct {v3, p0}, Lcom/picvision/seaweedweather/main$5;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual {v2, v3}, Lcom/picvision/seaweedweather/views/MyGallery;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 740
    iget-object v2, p0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    aget-object v2, v2, p1

    return-object v2
.end method


# virtual methods
.method public CitysSpinner(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    .line 974
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 976
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f03000a

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 977
    .local v4, "shift_citys":Landroid/view/View;
    const v5, 0x7f090032

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/picvision/seaweedweather/main;->sp:Landroid/widget/Spinner;

    .line 978
    const v5, 0x7f090030

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    iput-object v5, p0, Lcom/picvision/seaweedweather/main;->sp2:Landroid/widget/Spinner;

    .line 981
    :try_start_0
    invoke-static {}, Lcom/picvision/seaweedweather/utils/Util;->getProvince()Ljava/util/List;

    move-result-object v5

    sput-object v5, Lcom/picvision/seaweedweather/main;->provinceList:Ljava/util/List;

    .line 982
    new-instance v2, Ljava/util/ArrayList;

    sget-object v5, Lcom/picvision/seaweedweather/main;->provinceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 983
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/picvision/seaweedweather/main;->provinceList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 987
    new-instance v5, Landroid/widget/ArrayAdapter;

    const v6, 0x1090008

    invoke-direct {v5, p0, v6, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v5, p0, Lcom/picvision/seaweedweather/main;->adapter:Landroid/widget/ArrayAdapter;

    .line 988
    iget-object v5, p0, Lcom/picvision/seaweedweather/main;->adapter:Landroid/widget/ArrayAdapter;

    const v6, 0x1090009

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 989
    iget-object v5, p0, Lcom/picvision/seaweedweather/main;->sp2:Landroid/widget/Spinner;

    iget-object v6, p0, Lcom/picvision/seaweedweather/main;->adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 991
    iget-object v5, p0, Lcom/picvision/seaweedweather/main;->sp2:Landroid/widget/Spinner;

    new-instance v6, Lcom/picvision/seaweedweather/main$11;

    invoke-direct {v6, p0}, Lcom/picvision/seaweedweather/main$11;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual {v5, v6}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1017
    const v6, 0x7f060005

    .line 1016
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1017
    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1018
    const v6, 0x7f060006

    .line 1019
    new-instance v7, Lcom/picvision/seaweedweather/main$12;

    invoke-direct {v7, p0, p1}, Lcom/picvision/seaweedweather/main$12;-><init>(Lcom/picvision/seaweedweather/main;I)V

    .line 1018
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1064
    const v6, 0x7f060007

    .line 1065
    new-instance v7, Lcom/picvision/seaweedweather/main$13;

    invoke-direct {v7, p0}, Lcom/picvision/seaweedweather/main$13;-><init>(Lcom/picvision/seaweedweather/main;)V

    .line 1064
    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1071
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1072
    return-void

    .line 983
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/picvision/seaweedweather/model/Province;

    .line 984
    .local v3, "province":Lcom/picvision/seaweedweather/model/Province;
    invoke-virtual {v3}, Lcom/picvision/seaweedweather/model/Province;->getProvinceName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    const-string v6, "ProvinceList"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1012
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "province":Lcom/picvision/seaweedweather/model/Province;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 1014
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public age_setting()V
    .locals 8

    .prologue
    .line 1077
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 1079
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030002

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1080
    .local v0, "age_setting":Landroid/view/View;
    const v5, 0x7f090005

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioGroup;

    .line 1081
    .local v1, "group":Landroid/widget/RadioGroup;
    const v5, 0x7f090006

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    .line 1083
    .local v3, "rbtn1":Landroid/widget/RadioButton;
    const v5, 0x7f090007

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RadioButton;

    .line 1084
    .local v4, "rbtn2":Landroid/widget/RadioButton;
    new-instance v5, Lcom/picvision/seaweedweather/main$14;

    invoke-direct {v5, p0, v3, v4}, Lcom/picvision/seaweedweather/main$14;-><init>(Lcom/picvision/seaweedweather/main;Landroid/widget/RadioButton;Landroid/widget/RadioButton;)V

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1097
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1098
    const v6, 0x7f060016

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1099
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1100
    const v6, 0x7f060006

    new-instance v7, Lcom/picvision/seaweedweather/main$15;

    invoke-direct {v7, p0}, Lcom/picvision/seaweedweather/main$15;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1117
    const v6, 0x7f06000c

    new-instance v7, Lcom/picvision/seaweedweather/main$16;

    invoke-direct {v7, p0}, Lcom/picvision/seaweedweather/main$16;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 1124
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1125
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/picvision/seaweedweather/main;->gallery:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v0, p1}, Lcom/picvision/seaweedweather/views/MyGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1176
    iget-object v0, p0, Lcom/picvision/seaweedweather/main;->realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

    invoke-virtual {v0, p1}, Lcom/picvision/seaweedweather/views/MyGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1177
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/picvision/seaweedweather/main;->advertView:Lcn/com/picvision/view/AdvertView;

    invoke-virtual {v0}, Lcn/com/picvision/view/AdvertView;->close()V

    .line 127
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 128
    return-void
.end method

.method public getCitys(I)Ljava/util/List;
    .locals 4
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1162
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/picvision/seaweedweather/main;->citylist:Ljava/util/List;

    .line 1163
    sget-object v2, Lcom/picvision/seaweedweather/main;->provinceList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/picvision/seaweedweather/model/Province;

    invoke-virtual {v2}, Lcom/picvision/seaweedweather/model/Province;->getCitys()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/picvision/seaweedweather/main;->citylist:Ljava/util/List;

    .line 1164
    iget-object v2, p0, Lcom/picvision/seaweedweather/main;->citylist:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1167
    return-object v1

    .line 1164
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/picvision/seaweedweather/model/Citys;

    .line 1165
    .local v0, "city":Lcom/picvision/seaweedweather/model/Citys;
    invoke-virtual {v0}, Lcom/picvision/seaweedweather/model/Citys;->getCityName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    .line 481
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 482
    iput-object p0, p0, Lcom/picvision/seaweedweather/main;->context:Landroid/content/Context;

    .line 484
    const v9, 0x7f030005

    invoke-virtual {p0, v9}, Lcom/picvision/seaweedweather/main;->setContentView(I)V

    .line 486
    const v9, 0x7f09000f

    invoke-virtual {p0, v9}, Lcom/picvision/seaweedweather/main;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/picvision/seaweedweather/views/MyImageView;

    iput-object v9, p0, Lcom/picvision/seaweedweather/main;->img:Lcom/picvision/seaweedweather/views/MyImageView;

    .line 487
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    iput-object v9, p0, Lcom/picvision/seaweedweather/main;->mx:Landroid/graphics/Matrix;

    .line 488
    iget-object v9, p0, Lcom/picvision/seaweedweather/main;->mx:Landroid/graphics/Matrix;

    invoke-virtual {v9, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 491
    const v9, 0x7f02009c

    iput v9, p0, Lcom/picvision/seaweedweather/main;->weatherId:I

    .line 492
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/picvision/seaweedweather/main;->isHmove:Z

    .line 493
    new-instance v9, Lcom/picvision/seaweedweather/main$MovePositon;

    invoke-direct {v9, p0}, Lcom/picvision/seaweedweather/main$MovePositon;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual {v9}, Lcom/picvision/seaweedweather/main$MovePositon;->start()V

    .line 495
    invoke-direct {p0}, Lcom/picvision/seaweedweather/main;->inintWeather()V

    .line 496
    const/4 v4, 0x1

    .line 497
    .local v4, "isDialog":Z
    const/4 v5, 0x0

    .line 498
    .local v5, "isParserError":Z
    new-array v8, v12, [Ljava/lang/String;

    .line 499
    .local v8, "there":[Ljava/lang/String;
    new-instance v6, Landroid/os/Message;

    invoke-direct {v6}, Landroid/os/Message;-><init>()V

    .line 500
    .local v6, "mess":Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 501
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v9, "city"

    invoke-virtual {p0, v9, v11}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 502
    .local v7, "sp":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v12, :cond_1

    .line 522
    if-eqz v5, :cond_4

    .line 523
    invoke-virtual {v6, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 524
    const/4 v9, 0x5

    iput v9, v6, Landroid/os/Message;->what:I

    .line 525
    iget-object v9, p0, Lcom/picvision/seaweedweather/main;->handler:Landroid/os/Handler;

    invoke-virtual {v9, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 529
    :goto_1
    if-eqz v4, :cond_0

    .line 530
    invoke-virtual {p0, v11}, Lcom/picvision/seaweedweather/main;->CitysSpinner(I)V

    .line 533
    :cond_0
    const v9, 0x7f090011

    invoke-virtual {p0, v9}, Lcom/picvision/seaweedweather/main;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcn/com/picvision/view/AdvertView;

    iput-object v9, p0, Lcom/picvision/seaweedweather/main;->advertView:Lcn/com/picvision/view/AdvertView;

    .line 535
    iget-object v9, p0, Lcom/picvision/seaweedweather/main;->handler:Landroid/os/Handler;

    const/4 v10, 0x6

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 536
    iget-object v9, p0, Lcom/picvision/seaweedweather/main;->handler:Landroid/os/Handler;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 538
    return-void

    .line 504
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "cityid"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    invoke-interface {v7, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "cityid":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "/data/data/"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/picvision/seaweedweather/main;->getApplication()Landroid/app/Application;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/weather"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".xml"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 507
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 508
    invoke-direct {p0, v2, v3}, Lcom/picvision/seaweedweather/main;->isWeatherNull(Ljava/io/File;I)Z

    move-result v9

    if-nez v9, :cond_2

    .line 510
    const/4 v5, 0x1

    .line 514
    aput-object v1, v8, v3

    .line 515
    const-string v9, "there"

    invoke-virtual {v0, v9, v8}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 519
    :cond_2
    const/4 v4, 0x0

    .line 502
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 527
    .end local v1    # "cityid":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    :cond_4
    invoke-direct {p0}, Lcom/picvision/seaweedweather/main;->init()Z

    goto :goto_1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 749
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 751
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/main;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f080000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 752
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1219
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1220
    invoke-virtual {p0}, Lcom/picvision/seaweedweather/main;->showExitDialog()V

    .line 1221
    const/4 v0, 0x0

    .line 1223
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 22
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 759
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    .line 969
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v17

    return v17

    .line 762
    :pswitch_0
    new-instance v12, Landroid/os/Message;

    invoke-direct {v12}, Landroid/os/Message;-><init>()V

    .line 763
    .local v12, "mess":Landroid/os/Message;
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 764
    .local v4, "bundle":Landroid/os/Bundle;
    const/16 v17, 0x5

    move/from16 v0, v17

    move-object v1, v12

    iput v0, v1, Landroid/os/Message;->what:I

    .line 765
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v15, v0

    .line 766
    .local v15, "there":[Ljava/lang/String;
    const-string v17, "city"

    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 767
    .local v14, "sp":Landroid/content/SharedPreferences;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    const/16 v17, 0x3

    move v0, v7

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 780
    const-string v17, "there"

    move-object v0, v4

    move-object/from16 v1, v17

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 781
    invoke-virtual {v12, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main;->handler:Landroid/os/Handler;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 769
    :cond_0
    new-instance v17, Ljava/lang/StringBuilder;

    const-string v18, "cityid"

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    move-object v0, v14

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 773
    .local v6, "cityid":Ljava/lang/String;
    aput-object v6, v15, v7

    .line 767
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 787
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v6    # "cityid":Ljava/lang/String;
    .end local v7    # "i":I
    .end local v12    # "mess":Landroid/os/Message;
    .end local v14    # "sp":Landroid/content/SharedPreferences;
    .end local v15    # "there":[Ljava/lang/String;
    :pswitch_1
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 789
    .local v8, "inflater":Landroid/view/LayoutInflater;
    const/high16 v17, 0x7f030000

    const/16 v18, 0x0

    move-object v0, v8

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 790
    .local v5, "city_manager_setting":Landroid/view/View;
    const/high16 v17, 0x7f090000

    move-object v0, v5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    .line 791
    .local v11, "listview":Landroid/widget/ListView;
    new-instance v17, Lcom/picvision/seaweedweather/views/MyAdapter;

    invoke-direct/range {p0 .. p0}, Lcom/picvision/seaweedweather/main;->getData()Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/picvision/seaweedweather/views/MyAdapter;-><init>(Lcom/picvision/seaweedweather/main;Ljava/util/List;)V

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 803
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 804
    const v18, 0x7f060015

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 805
    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 806
    const v18, 0x7f060006

    new-instance v19, Lcom/picvision/seaweedweather/main$6;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/picvision/seaweedweather/main$6;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 814
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v17

    .line 803
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/picvision/seaweedweather/main;->alert:Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 818
    .end local v5    # "city_manager_setting":Landroid/view/View;
    .end local v8    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "listview":Landroid/widget/ListView;
    :pswitch_2
    const-string v17, "smsto:"

    invoke-static/range {v17 .. v17}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 819
    .local v13, "smsToUri":Landroid/net/Uri;
    new-instance v9, Landroid/content/Intent;

    const-string v17, "android.intent.action.SENDTO"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 820
    .local v9, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main;->realGallery:Lcom/picvision/seaweedweather/views/MyGallery;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/picvision/seaweedweather/views/MyGallery;->getSelectedItemPosition()I

    move-result v3

    .line 822
    .local v3, "_id":I
    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    move-object/from16 v18, v0

    aget-object v18, v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/picvision/seaweedweather/model/Weather;->getCityName()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    move-object/from16 v18, v0

    aget-object v18, v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/picvision/seaweedweather/model/Weather;->getRealText()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " \u6e29\u5ea6\u4e3a\uff1a"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    move-object/from16 v18, v0

    aget-object v18, v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/picvision/seaweedweather/model/Weather;->getRealTemperature()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 823
    const-string v18, " \u98ce\u5411\u4e3a\uff1a"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    move-object/from16 v18, v0

    aget-object v18, v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/picvision/seaweedweather/model/Weather;->getRealDirection()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " \u6e7f\u5ea6\uff1a"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main;->weather:[Lcom/picvision/seaweedweather/model/Weather;

    move-object/from16 v18, v0

    aget-object v18, v18, v3

    invoke-virtual/range {v18 .. v18}, Lcom/picvision/seaweedweather/model/Weather;->getRealHumidity()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " \u6d77\u85fb\u5929\u6c14\u63d0\u4f9b;\u66f4\u591a\u5929\u6c14\u4fe1\u606f\u8bf7\u8bbf\u95ee:http://www.picvision.com"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    .line 822
    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 824
    .local v16, "wea":Ljava/lang/String;
    const-string v17, "sms_body"

    move-object v0, v9

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 825
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/picvision/seaweedweather/main;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 827
    .end local v3    # "_id":I
    .end local v16    # "wea":Ljava/lang/String;
    :cond_1
    const-string v17, "\u65e0\u6cd5\u83b7\u53d6\u5929\u6c14\u4fe1\u606f"

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 833
    .end local v9    # "intent":Landroid/content/Intent;
    .end local v13    # "smsToUri":Landroid/net/Uri;
    :pswitch_3
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 834
    const v18, 0x7f060009

    invoke-virtual/range {v17 .. v18}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/picvision/seaweedweather/main;->update:[Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "time"

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/picvision/seaweedweather/main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    const-string v20, "updatetime"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    new-instance v20, Lcom/picvision/seaweedweather/main$7;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/picvision/seaweedweather/main$7;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual/range {v17 .. v20}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 843
    const v18, 0x7f060006

    new-instance v19, Lcom/picvision/seaweedweather/main$8;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/picvision/seaweedweather/main$8;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 852
    const v18, 0x7f06000c

    new-instance v19, Lcom/picvision/seaweedweather/main$9;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/picvision/seaweedweather/main$9;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual/range {v17 .. v19}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 860
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 864
    :pswitch_4
    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    const/16 v17, 0x0

    const-string v18, "\u5e2e\u52a9"

    aput-object v18, v10, v17

    const/16 v17, 0x1

    const-string v18, "\u5173\u4e8e"

    aput-object v18, v10, v17

    const/16 v17, 0x2

    const-string v18, "\u6027\u522b\u8bbe\u7f6e"

    aput-object v18, v10, v17

    .line 866
    .local v10, "items":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/picvision/seaweedweather/main;->DISSMIS_COMMUNITY:Z

    move/from16 v17, v0

    if-nez v17, :cond_2

    .line 867
    const/16 v17, 0x4

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object v10, v0

    .end local v10    # "items":[Ljava/lang/String;
    const/16 v17, 0x0

    const-string v18, "\u5e2e\u52a9"

    aput-object v18, v10, v17

    const/16 v17, 0x1

    const-string v18, "\u5173\u4e8e"

    aput-object v18, v10, v17

    const/16 v17, 0x2

    const-string v18, "\u6027\u522b\u8bbe\u7f6e"

    aput-object v18, v10, v17

    const/16 v17, 0x3

    const-string v18, "\u4f1a\u5458\u793e\u533a"

    aput-object v18, v10, v17

    .line 870
    .restart local v10    # "items":[Ljava/lang/String;
    :cond_2
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 871
    new-instance v18, Lcom/picvision/seaweedweather/main$10;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/picvision/seaweedweather/main$10;-><init>(Lcom/picvision/seaweedweather/main;)V

    .line 870
    move-object/from16 v0, v17

    move-object v1, v10

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v17

    .line 961
    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 966
    .end local v10    # "items":[Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/picvision/seaweedweather/main;->showExitDialog()V

    goto/16 :goto_0

    .line 759
    nop

    :pswitch_data_0
    .packed-switch 0x7f09006f
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method public showExitDialog()V
    .locals 3

    .prologue
    .line 1129
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1130
    const-string v1, "\u9000\u51fa"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1131
    const-string v1, "\u60a8\u786e\u5b9a\u9000\u51fa\u6d77\u85fb\u5929\u6c14\u9884\u62a5\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1132
    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/picvision/seaweedweather/main$17;

    invoke-direct {v2, p0}, Lcom/picvision/seaweedweather/main$17;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1144
    const-string v1, "\u53d6\u6d88"

    new-instance v2, Lcom/picvision/seaweedweather/main$18;

    invoke-direct {v2, p0}, Lcom/picvision/seaweedweather/main$18;-><init>(Lcom/picvision/seaweedweather/main;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1151
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1152
    return-void
.end method
