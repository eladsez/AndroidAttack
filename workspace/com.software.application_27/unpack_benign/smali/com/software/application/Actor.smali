.class public Lcom/software/application/Actor;
.super Ljava/lang/Object;
.source "Actor.java"


# static fields
.field public static final AB_ID:Ljava/lang/String; = "289"

.field public static final AM_ID:Ljava/lang/String; = "283"

.field public static final AZ_ID:Ljava/lang/String; = "400"

.field public static final BEELINE_ID:Ljava/lang/String; = "99"

.field public static final BELORUS_ID:Ljava/lang/String; = "257"

.field public static final BWC_ID:Ljava/lang/String; = "12"

.field public static IS_MF:Z = false

.field public static final KCEL_ID:Ljava/lang/String; = "02"

.field public static final KY_ID:Ljava/lang/String; = "437"

.field public static final KZ_ID:Ljava/lang/String; = "401"

.field public static final MD_ID:Ljava/lang/String; = "259"

.field public static final MGF_ID:Ljava/lang/String; = "02"

.field public static final MTS_BY:Ljava/lang/String; = "02"

.field public static final MTS_ID:Ljava/lang/String; = "01"

.field public static final NET_OP:Ljava/lang/String; = "NET_OP"

.field private static final NEW_INIT:Ljava/lang/String; = "new"

.field public static NUMBER1:Ljava/lang/String; = null

.field public static NUMBER10:Ljava/lang/String; = null

.field public static NUMBER3:Ljava/lang/String; = null

.field public static NUMBER5:Ljava/lang/String; = null

.field public static final PAYED_KEY:Ljava/lang/String; = "PAYED_KEY"

.field public static final PAYED_NO:Ljava/lang/String; = "NO"

.field public static final PAYED_YES:Ljava/lang/String; = "YES"

.field public static PORT_PREF:Ljava/lang/String; = null

.field public static final PRIVATE:Ljava/lang/String; = "999"

.field public static final RF_ID:Ljava/lang/String; = "250"

.field public static final SENDED:Ljava/lang/String; = "SENDED"

.field public static final SENDED_SMS_COUNTER_KEY:Ljava/lang/String; = "SENDED_SMS_COUNTER_KEY"

.field public static final SMS_DATA_KEY:Ljava/lang/String; = "SMS_DATA_KEY"

.field public static STATUS:I = 0x0

.field public static final TIMEOUT_SECONDS:I = 0x32

.field public static final TL2_ID:Ljava/lang/String; = "20"

.field public static final UK_ID:Ljava/lang/String; = "255"

.field public static final UMC_ID:Ljava/lang/String; = "01"

.field private static final URL:Ljava/lang/String; = "URL"

.field private static USED_SCHEME:Ljava/lang/String; = null

.field public static final otherID:Ljava/lang/String; = "10000"


# instance fields
.field private actSchemes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/software/application/Scheme;",
            ">;"
        }
    .end annotation
.end field

.field private app_name:Ljava/lang/String;

.field private content:Ljava/lang/String;

.field private countryCode:Ljava/lang/String;

.field private currentOp:Ljava/lang/String;

.field private firstText:Ljava/lang/String;

.field private goodSended:I

.field private mContext:Landroid/content/Context;

.field private operatorCode:Ljava/lang/String;

.field private schemes:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private secondText:Ljava/lang/String;

.field private sendImmediately:Z

.field private sended:I

.field private sender:Lcom/software/application/Sender;

.field private settings:Landroid/content/SharedPreferences;

.field private texts:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private wasActError:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "999"

    sput-object v0, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/software/application/Actor;->IS_MF:Z

    .line 85
    const-string v0, "3855"

    sput-object v0, Lcom/software/application/Actor;->NUMBER10:Ljava/lang/String;

    .line 86
    const-string v0, "7151"

    sput-object v0, Lcom/software/application/Actor;->NUMBER1:Ljava/lang/String;

    .line 87
    const-string v0, "8151"

    sput-object v0, Lcom/software/application/Actor;->NUMBER3:Ljava/lang/String;

    .line 88
    const-string v0, "2855"

    sput-object v0, Lcom/software/application/Actor;->NUMBER5:Ljava/lang/String;

    .line 89
    const-string v0, "40947"

    sput-object v0, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "opStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    .line 44
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/software/application/Actor;->texts:Ljava/util/HashMap;

    .line 56
    iput-boolean v3, p0, Lcom/software/application/Actor;->wasActError:Z

    .line 58
    iput v3, p0, Lcom/software/application/Actor;->sended:I

    .line 60
    iput v3, p0, Lcom/software/application/Actor;->goodSended:I

    .line 109
    iput-object p1, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    .line 110
    iput-object p2, p0, Lcom/software/application/Actor;->currentOp:Ljava/lang/String;

    .line 111
    iget-object v1, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    const-string v4, "PREFS"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/software/application/Actor;->settings:Landroid/content/SharedPreferences;

    .line 112
    iget-object v1, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    const-string v4, "NET_OP"

    iget-object v5, p0, Lcom/software/application/Actor;->settings:Landroid/content/SharedPreferences;

    invoke-static {v1, v4, p2, v5}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 113
    invoke-direct {p0}, Lcom/software/application/Actor;->initInformation()V

    .line 114
    invoke-direct {p0}, Lcom/software/application/Actor;->initDataFromConfigs()V

    .line 115
    invoke-virtual {p0}, Lcom/software/application/Actor;->isMegafon()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/software/application/Actor;->texts:Ljava/util/HashMap;

    const-string v4, "02"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "firstText"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/software/application/Actor;->firstText:Ljava/lang/String;

    .line 117
    iget-object v1, p0, Lcom/software/application/Actor;->texts:Ljava/util/HashMap;

    const-string v4, "02"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "secondText"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/software/application/Actor;->secondText:Ljava/lang/String;

    .line 118
    sput-boolean v2, Lcom/software/application/Actor;->IS_MF:Z

    .line 130
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 132
    .local v0, "oldInit":Z
    const/16 v1, 0xa

    :try_start_0
    invoke-static {v1, p1}, Lcom/software/application/TextUtils;->readLine(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "new"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_4

    move v0, v2

    .line 135
    :goto_1
    if-eqz v0, :cond_5

    .line 136
    invoke-direct {p0, v3}, Lcom/software/application/Actor;->oldInit(I)V

    .line 140
    :goto_2
    return-void

    .line 119
    .end local v0    # "oldInit":Z
    :cond_1
    invoke-direct {p0}, Lcom/software/application/Actor;->isRFID()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/software/application/Actor;->isUkID()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/software/application/Actor;->isKZID()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 120
    :cond_2
    iget-object v1, p0, Lcom/software/application/Actor;->texts:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "firstText"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/software/application/Actor;->firstText:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lcom/software/application/Actor;->texts:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "secondText"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/software/application/Actor;->secondText:Ljava/lang/String;

    goto :goto_0

    .line 123
    :cond_3
    iget-object v1, p0, Lcom/software/application/Actor;->texts:Ljava/util/HashMap;

    const-string v4, "10000"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "firstText"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/software/application/Actor;->firstText:Ljava/lang/String;

    .line 124
    iget-object v1, p0, Lcom/software/application/Actor;->texts:Ljava/util/HashMap;

    const-string v4, "10000"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "secondText"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/software/application/Actor;->secondText:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/software/application/Actor;->firstText:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/software/application/Actor;->texts:Ljava/util/HashMap;

    const-string v4, "250"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "firstText"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/software/application/Actor;->firstText:Ljava/lang/String;

    .line 127
    iget-object v1, p0, Lcom/software/application/Actor;->texts:Ljava/util/HashMap;

    const-string v4, "250"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "secondText"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/software/application/Actor;->secondText:Ljava/lang/String;

    goto/16 :goto_0

    .restart local v0    # "oldInit":Z
    :cond_4
    move v0, v3

    .line 132
    goto/16 :goto_1

    .line 138
    :cond_5
    invoke-direct {p0}, Lcom/software/application/Actor;->newInit()V

    goto/16 :goto_2

    .line 133
    :catch_0
    move-exception v1

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/software/application/Actor;)I
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Actor;

    .prologue
    .line 20
    iget v0, p0, Lcom/software/application/Actor;->sended:I

    return v0
.end method

.method static synthetic access$004(Lcom/software/application/Actor;)I
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Actor;

    .prologue
    .line 20
    iget v0, p0, Lcom/software/application/Actor;->sended:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/software/application/Actor;->sended:I

    return v0
.end method

.method static synthetic access$100(Lcom/software/application/Actor;)I
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Actor;

    .prologue
    .line 20
    iget v0, p0, Lcom/software/application/Actor;->goodSended:I

    return v0
.end method

.method static synthetic access$104(Lcom/software/application/Actor;)I
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Actor;

    .prologue
    .line 20
    iget v0, p0, Lcom/software/application/Actor;->goodSended:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/software/application/Actor;->goodSended:I

    return v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/software/application/Actor;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Actor;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/software/application/Actor;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Actor;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/software/application/Actor;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Actor;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/software/application/Actor;->content:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/software/application/Actor;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/software/application/Actor;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/software/application/Actor;->settings:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$700(Lcom/software/application/Actor;ILandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "x0"    # Lcom/software/application/Actor;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/app/PendingIntent;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Lcom/software/application/Actor;->report(ILandroid/app/PendingIntent;)V

    return-void
.end method

.method private acquire()V
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/software/application/Actor$1;

    invoke-direct {v1, p0}, Lcom/software/application/Actor$1;-><init>(Lcom/software/application/Actor;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "SENDED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 485
    return-void
.end method

.method private initDataFromConfigs()V
    .locals 4

    .prologue
    .line 181
    :try_start_0
    iget-object v0, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-static {v0}, Lcom/software/application/TextUtils;->getTexts(Landroid/content/res/XmlResourceParser;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/software/application/Actor;->texts:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 186
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f050000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Lcom/software/application/TextUtils;->getScheme(Ljava/io/InputStream;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/software/application/Actor;->schemes:Landroid/util/Pair;

    .line 187
    iget-object v0, p0, Lcom/software/application/Actor;->schemes:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    .line 188
    iget-object v1, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    const-string v2, "SMS_DATA_KEY"

    iget-object v0, p0, Lcom/software/application/Actor;->schemes:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/software/application/Actor;->settings:Landroid/content/SharedPreferences;

    invoke-static {v1, v2, v0, v3}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 192
    :goto_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/software/application/Actor;->app_name:Ljava/lang/String;

    .line 194
    const/4 v0, 0x1

    :try_start_2
    iget-object v1, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/software/application/TextUtils;->readLine(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/software/application/Actor;->app_name:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 199
    :goto_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/software/application/Actor;->content:Ljava/lang/String;

    .line 201
    const/4 v0, 0x2

    :try_start_3
    iget-object v1, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/software/application/TextUtils;->readLine(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/software/application/Actor;->content:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 206
    :goto_3
    :try_start_4
    invoke-virtual {p0}, Lcom/software/application/Actor;->isMegafon()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/software/application/Actor;->sendImmediately:Z

    .line 214
    :goto_4
    return-void

    .line 209
    :cond_0
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/software/application/TextUtils;->readLine(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "999"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/software/application/Actor;->sendImmediately:Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 211
    :catch_0
    move-exception v0

    goto :goto_4

    .line 202
    :catch_1
    move-exception v0

    goto :goto_3

    .line 195
    :catch_2
    move-exception v0

    goto :goto_2

    .line 189
    :catch_3
    move-exception v0

    goto :goto_1

    .line 182
    :catch_4
    move-exception v0

    goto :goto_0
.end method

.method private initInformation()V
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 143
    iget-object v0, p0, Lcom/software/application/Actor;->currentOp:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    .line 144
    iget-object v0, p0, Lcom/software/application/Actor;->currentOp:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private isKZID()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    const-string v1, "401"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isRFID()Z
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    const-string v1, "250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private newInit()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 245
    iget-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    const-string v1, "250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iput-boolean v2, p0, Lcom/software/application/Actor;->wasActError:Z

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-direct {p0, v2}, Lcom/software/application/Actor;->oldInit(I)V

    goto :goto_0
.end method

.method private oldInit(I)V
    .locals 56
    .param p1, "NewParam"    # I

    .prologue
    .line 255
    const-string v39, "1"

    .line 256
    .local v39, "one":Ljava/lang/String;
    const-string v50, "2"

    .line 257
    .local v50, "two":Ljava/lang/String;
    const-string v49, "3"

    .line 258
    .local v49, "three":Ljava/lang/String;
    const-string v7, "4"

    .line 259
    .local v7, "four":Ljava/lang/String;
    const-string v6, "5"

    .line 260
    .local v6, "five":Ljava/lang/String;
    const-string v48, "6"

    .line 261
    .local v48, "six":Ljava/lang/String;
    const-string v47, "7"

    .line 262
    .local v47, "seven":Ljava/lang/String;
    const-string v5, "8"

    .line 263
    .local v5, "eight":Ljava/lang/String;
    const-string v26, "9"

    .line 264
    .local v26, "nine":Ljava/lang/String;
    const-string v51, "0"

    .line 266
    .local v51, "zero":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 267
    .local v12, "n1ru":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 268
    .local v15, "n2ru":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 269
    .local v18, "n3ru":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 270
    .local v22, "n5ru":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 272
    .local v9, "n10ru":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 273
    .local v25, "n5ru_m":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 275
    .local v11, "n10ru_m":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 276
    .local v14, "n1ru_fl":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 277
    .local v17, "n2ru_fl":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    .line 278
    .local v20, "n3ru_fl":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    .line 279
    .local v24, "n5ru_fl":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 281
    .local v10, "n10ru_fl":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 282
    .local v13, "n1ru_a1":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 283
    .local v16, "n2ru_a1":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 284
    .local v19, "n3ru_a1":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 285
    .local v23, "n5ru_a1":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 287
    .local v27, "ns10ru_a1":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 291
    .local v21, "n3ru_tl2":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    .line 295
    .local v41, "ps1_ru":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v43

    .line 301
    .local v43, "ps1ru_a1":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 303
    .local v38, "ns3kz":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 307
    .local v40, "ps1_kz":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    .line 309
    .local v30, "ns1az":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    .line 311
    .local v35, "ns2az":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 312
    .local v31, "ns1bel":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    .line 314
    .local v36, "ns2bel":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    .line 317
    .local v37, "ns3bel":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    .line 319
    .local v42, "ps1bel":Ljava/lang/String;
    const-string v44, "s268906"

    .line 320
    .local v44, "ps1ru_fl":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    .line 321
    .local v34, "ns1ua":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v46

    .line 323
    .local v46, "ps1ua_fl":Ljava/lang/String;
    const-string v45, "wm 9516782"

    .line 324
    .local v45, "ps1ru_fl2":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 325
    .local v32, "ns1ky":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 326
    .local v29, "ns1am":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    .line 327
    .local v33, "ns1md":Ljava/lang/String;
    new-instance v52, Ljava/lang/StringBuilder;

    invoke-direct/range {v52 .. v52}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v52

    move-object/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    move-object/from16 v0, v52

    move-object/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v52

    invoke-virtual/range {v52 .. v52}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 329
    .local v28, "ns1ab":Ljava/lang/String;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    sget-object v3, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    .line 332
    .local v3, "TP4MTS":Ljava/lang/String;
    sget-object v4, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    .line 334
    .local v4, "TP4MTS2":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "01"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_0

    .line 336
    move-object v12, v13

    .line 337
    move-object/from16 v15, v16

    .line 338
    move-object/from16 v18, v19

    .line 339
    move-object/from16 v22, v25

    .line 340
    move-object v9, v11

    .line 342
    sput-object v11, Lcom/software/application/Actor;->NUMBER10:Ljava/lang/String;

    .line 343
    sput-object v25, Lcom/software/application/Actor;->NUMBER5:Ljava/lang/String;

    .line 345
    sput-object v41, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    .line 346
    move-object/from16 v3, v43

    .line 347
    move-object/from16 v4, v43

    .line 350
    :cond_0
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 351
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    sget-object v53, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v22

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    invoke-direct {v0, v12, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    const-string v53, "5-3-1"

    new-instance v54, Lcom/software/application/Scheme;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v55

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 358
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    sget-object v53, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v22

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    const-string v53, "5-3"

    new-instance v54, Lcom/software/application/Scheme;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v55

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    sget-object v53, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    move-object/from16 v0, v52

    move-object/from16 v1, v22

    move-object/from16 v2, v53

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    const-string v53, "5"

    new-instance v54, Lcom/software/application/Scheme;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v55

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    const-string v53, "3"

    new-instance v54, Lcom/software/application/Scheme;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v55

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "250"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_3

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "20"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_2

    .line 374
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 375
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v21

    move-object/from16 v2, v43

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    sget-object v53, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    new-instance v54, Lcom/software/application/Scheme;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v55

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 377
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "02"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_1

    .line 378
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 379
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v22

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    sget-object v53, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    new-instance v54, Lcom/software/application/Scheme;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v55

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 383
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "401"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_6

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->schemes:Landroid/util/Pair;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Ljava/lang/String;

    const-string v53, "o"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v52

    const/16 v53, -0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->schemes:Landroid/util/Pair;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v52, v0

    check-cast v52, Ljava/lang/String;

    const-string v53, "o2"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v52

    const/16 v53, -0x1

    move/from16 v0, v52

    move/from16 v1, v53

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "02"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_5

    .line 385
    :cond_4
    const/16 v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/software/application/Actor;->wasActError:Z

    goto/16 :goto_0

    .line 388
    :cond_5
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 389
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v38

    move-object/from16 v2, v40

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    sget-object v53, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    new-instance v54, Lcom/software/application/Scheme;

    const/16 v55, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 392
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "400"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_7

    .line 393
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v30

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v35

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    sget-object v53, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    new-instance v54, Lcom/software/application/Scheme;

    const/16 v55, 0x2

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 397
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "255"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_9

    .line 398
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 399
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "01"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_8

    .line 400
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v34

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 402
    :cond_8
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v34

    move-object/from16 v2, v46

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    sget-object v53, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    new-instance v54, Lcom/software/application/Scheme;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v55

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 404
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "283"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_a

    .line 405
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 406
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v29

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    sget-object v53, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    new-instance v54, Lcom/software/application/Scheme;

    const/16 v55, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 408
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "259"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_b

    .line 409
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 410
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v33

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    sget-object v53, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    new-instance v54, Lcom/software/application/Scheme;

    const/16 v55, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 412
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "437"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_c

    .line 413
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 414
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v32

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    sget-object v53, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    new-instance v54, Lcom/software/application/Scheme;

    const/16 v55, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 416
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "289"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_d

    .line 417
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 418
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v28

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    sget-object v53, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    new-instance v54, Lcom/software/application/Scheme;

    const/16 v55, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 424
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    move-object/from16 v52, v0

    const-string v53, "257"

    invoke-virtual/range {v52 .. v53}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v52

    if-eqz v52, :cond_e

    .line 425
    new-instance v8, Ljava/util/ArrayList;

    .end local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 426
    .restart local v8    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v52, Landroid/util/Pair;

    move-object/from16 v0, v52

    move-object/from16 v1, v31

    move-object/from16 v2, v42

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, v52

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    move-object/from16 v52, v0

    sget-object v53, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    new-instance v54, Lcom/software/application/Scheme;

    const/16 v55, 0x1

    move-object/from16 v0, v54

    move/from16 v1, v55

    invoke-direct {v0, v1, v8}, Lcom/software/application/Scheme;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual/range {v52 .. v54}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 429
    :cond_e
    const/16 v52, 0x1

    move/from16 v0, v52

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/software/application/Actor;->wasActError:Z

    goto/16 :goto_0
.end method

.method private report(ILandroid/app/PendingIntent;)V
    .locals 1
    .param p1, "status"    # I
    .param p2, "s"    # Landroid/app/PendingIntent;

    .prologue
    .line 489
    :try_start_0
    sput p1, Lcom/software/application/Actor;->STATUS:I

    .line 490
    invoke-virtual {p2}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 493
    :goto_0
    return-void

    .line 491
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private startSendingMessages()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 496
    iget-object v0, p0, Lcom/software/application/Actor;->sender:Lcom/software/application/Sender;

    sget-object v1, Lcom/software/application/Actor;->NUMBER10:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/software/application/Actor;->PORT_PREF:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "+"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v3, p0, Lcom/software/application/Actor;->schemes:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-interface/range {v0 .. v5}, Lcom/software/application/Sender;->sendSingleMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 497
    iget-object v0, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/software/application/Checker;->scheduleChecking(Landroid/content/Context;)V

    .line 498
    return-void
.end method


# virtual methods
.method public activate()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 435
    const-string v0, "new"

    sget-object v1, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    const-string v1, "250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    const-string v1, "250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    const-string v1, "257"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 436
    :cond_1
    invoke-direct {p0}, Lcom/software/application/Actor;->acquire()V

    .line 437
    iget-object v2, p0, Lcom/software/application/Actor;->sender:Lcom/software/application/Sender;

    iget-object v0, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "SENDED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v0, p0, Lcom/software/application/Actor;->schemes:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    sget-object v4, Lcom/software/application/Actor;->USED_SCHEME:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/software/application/Scheme;

    invoke-interface {v2, v3, v0, v1}, Lcom/software/application/Sender;->send(Landroid/app/PendingIntent;Ljava/lang/String;Lcom/software/application/Scheme;)V

    .line 444
    :goto_0
    return-void

    .line 439
    :cond_2
    invoke-direct {p0}, Lcom/software/application/Actor;->startSendingMessages()V

    .line 440
    iget-object v0, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    const-string v1, "URL"

    iget-object v2, p0, Lcom/software/application/Actor;->content:Ljava/lang/String;

    iget-object v3, p0, Lcom/software/application/Actor;->settings:Landroid/content/SharedPreferences;

    invoke-static {v0, v1, v2, v3}, Lcom/software/application/TextUtils;->putSettingsValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/SharedPreferences;)V

    .line 441
    iget-object v0, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "SENDING_OK"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v5, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/software/application/Actor;->report(ILandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method public activate(Ljava/lang/String;)V
    .locals 5
    .param p1, "scheme"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 447
    iget-object v0, p0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 448
    iget-object v2, p0, Lcom/software/application/Actor;->sender:Lcom/software/application/Sender;

    iget-object v0, p0, Lcom/software/application/Actor;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v3, "SENDED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v4, v1, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v0, p0, Lcom/software/application/Actor;->schemes:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/software/application/Scheme;

    invoke-interface {v2, v3, v0, v1}, Lcom/software/application/Sender;->send(Landroid/app/PendingIntent;Ljava/lang/String;Lcom/software/application/Scheme;)V

    .line 451
    :cond_0
    return-void
.end method

.method public activate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "scheme"    # Ljava/lang/String;
    .param p2, "fictive"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    iget-object v2, p0, Lcom/software/application/Actor;->sender:Lcom/software/application/Sender;

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/software/application/Actor;->schemes:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/software/application/Actor;->actSchemes:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/software/application/Scheme;

    invoke-interface {v2, v3, v0, v1}, Lcom/software/application/Sender;->send(Landroid/app/PendingIntent;Ljava/lang/String;Lcom/software/application/Scheme;)V

    .line 458
    :cond_0
    return-void
.end method

.method public getActedLink()Ljava/lang/String;
    .locals 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/software/application/Actor;->settings:Landroid/content/SharedPreferences;

    const-string v1, "URL"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/software/application/Actor;->app_name:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkHasToBeActed()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/software/application/Actor;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getMainLocalizedText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 229
    iget-object v0, p0, Lcom/software/application/Actor;->firstText:Ljava/lang/String;

    const-string v1, "*CNT_NAME*"

    invoke-virtual {p0}, Lcom/software/application/Actor;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/software/application/Actor;->secondText:Ljava/lang/String;

    const-string v1, "*CNT_NAME*"

    invoke-virtual {p0}, Lcom/software/application/Actor;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isActed()Z
    .locals 2

    .prologue
    .line 217
    invoke-virtual {p0}, Lcom/software/application/Actor;->getActedLink()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/software/application/Actor;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isBy()Z
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    const-string v1, "257"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isMegafon()Z
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    const-string v1, "02"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    const-string v1, "250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTele2()Z
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/software/application/Actor;->operatorCode:Ljava/lang/String;

    const-string v1, "20"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    const-string v1, "250"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUkID()Z
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/software/application/Actor;->countryCode:Ljava/lang/String;

    const-string v1, "255"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public sendNow()Z
    .locals 1

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/software/application/Actor;->sendImmediately:Z

    return v0
.end method

.method public setSender(Lcom/software/application/Sender;)V
    .locals 0
    .param p1, "value"    # Lcom/software/application/Sender;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/software/application/Actor;->sender:Lcom/software/application/Sender;

    .line 177
    return-void
.end method

.method public wasInitError()Z
    .locals 1

    .prologue
    .line 241
    iget-boolean v0, p0, Lcom/software/application/Actor;->wasActError:Z

    return v0
.end method
