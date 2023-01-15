.class public Lcom/ad_stir/webview/AdstirMraidView;
.super Landroid/widget/FrameLayout;
.source "AdstirMraidView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ad_stir/webview/AdstirMraidView$Listener;,
        Lcom/ad_stir/webview/AdstirMraidView$AdSize;
    }
.end annotation


# static fields
.field public static final DEFAULT_INTERVAL:J = 0x3cL

.field public static final MIN_INTERVAL:J = 0x1eL

.field public static final NO_INTERVAL:J = 0x0L

.field public static final SSP_INTERVAL:J = -0x1L

.field public static TEST:I


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

.field private appendUA:Ljava/lang/String;

.field private final baseUrl:Ljava/lang/String;

.field private isStart:Z

.field private listener:Lcom/ad_stir/webview/AdstirMraidView$Listener;

.field private mAdmob:Z

.field private mRefreshInterval:J

.field private final mediaId:Ljava/lang/String;

.field private final origin:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;

.field private schedulerRote:Ljava/util/concurrent/ScheduledExecutorService;

.field private final spotNo:I

.field private wv:Lcom/ad_stir/webview/MraidWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    sput v0, Lcom/ad_stir/webview/AdstirMraidView;->TEST:I

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;Ljava/lang/String;ILcom/ad_stir/webview/AdstirMraidView$AdSize;J)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "mediaId"    # Ljava/lang/String;
    .param p4, "spotNo"    # I
    .param p5, "adsize"    # Lcom/ad_stir/webview/AdstirMraidView$AdSize;
    .param p6, "refreshInterval"    # J

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 415
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ad_stir/webview/AdstirMraidView;->listener:Lcom/ad_stir/webview/AdstirMraidView$Listener;

    .line 425
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ad_stir/webview/AdstirMraidView;->appendUA:Ljava/lang/String;

    .line 435
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/ad_stir/webview/AdstirMraidView;->mAdmob:Z

    .line 436
    const-wide/16 v6, 0x3c

    iput-wide v6, p0, Lcom/ad_stir/webview/AdstirMraidView;->mRefreshInterval:J

    .line 103
    if-eqz p2, :cond_2

    .line 104
    const/4 v4, 0x0

    .line 105
    .local v4, "spotNoString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 106
    .local v2, "refreshIntervalString":Ljava/lang/String;
    const/4 v0, 0x0

    .line 108
    .local v0, "adsizeString":Ljava/lang/String;
    const/4 v6, 0x0

    const-string v7, "media"

    invoke-interface {p2, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 109
    const/4 v6, 0x0

    const-string v7, "spot"

    invoke-interface {p2, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 110
    const/4 v6, 0x0

    const-string v7, "adsize"

    invoke-interface {p2, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    const/4 v6, 0x0

    const-string v7, "refresh_interval"

    invoke-interface {p2, v6, v7}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    if-eqz v2, :cond_0

    .line 114
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p6

    .line 116
    :cond_0
    if-eqz v0, :cond_1

    .line 117
    const-string v6, ","

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "sp":[Ljava/lang/String;
    array-length v6, v3

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 119
    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 120
    .local v5, "width":I
    const/4 v6, 0x1

    aget-object v6, v3, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 121
    .local v1, "height":I
    new-instance p5, Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    .end local p5    # "adsize":Lcom/ad_stir/webview/AdstirMraidView$AdSize;
    invoke-direct {p5, v5, v1}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;-><init>(II)V

    .line 125
    .end local v1    # "height":I
    .end local v3    # "sp":[Ljava/lang/String;
    .end local v5    # "width":I
    .restart local p5    # "adsize":Lcom/ad_stir/webview/AdstirMraidView$AdSize;
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    .line 128
    .end local v0    # "adsizeString":Ljava/lang/String;
    .end local v2    # "refreshIntervalString":Ljava/lang/String;
    .end local v4    # "spotNoString":Ljava/lang/String;
    :cond_2
    const-string v6, "init"

    invoke-static {v6}, Lcom/ad_stir/common/Log;->i(Ljava/lang/String;)V

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MEDIA-ID:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ad_stir/common/Log;->i(Ljava/lang/String;)V

    .line 130
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SPOT-NO:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ad_stir/common/Log;->i(Ljava/lang/String;)V

    .line 131
    iput-object p5, p0, Lcom/ad_stir/webview/AdstirMraidView;->adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    .line 132
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ad_stir/webview/AdstirMraidView;->baseUrl:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/ad_stir/webview/AdstirMraidView;->mediaId:Ljava/lang/String;

    .line 134
    iput p4, p0, Lcom/ad_stir/webview/AdstirMraidView;->spotNo:I

    .line 135
    iput-object p1, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    .line 136
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/ad_stir/webview/AdstirMraidView;->origin:Ljava/lang/String;

    .line 137
    invoke-direct {p0, p6, p7}, Lcom/ad_stir/webview/AdstirMraidView;->setRefreshInterval(J)V

    .line 138
    invoke-virtual {p0}, Lcom/ad_stir/webview/AdstirMraidView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x106000d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/ad_stir/webview/AdstirMraidView;->setBackgroundColor(I)V

    .line 141
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 142
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 143
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 144
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILcom/ad_stir/webview/AdstirMraidView$AdSize;)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "spotNo"    # I
    .param p4, "size"    # Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    .prologue
    .line 92
    const/4 v2, 0x0

    const-wide/16 v6, 0x3c

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/ad_stir/webview/AdstirMraidView;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;Ljava/lang/String;ILcom/ad_stir/webview/AdstirMraidView$AdSize;J)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;ILcom/ad_stir/webview/AdstirMraidView$AdSize;J)V
    .locals 8
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "mediaId"    # Ljava/lang/String;
    .param p3, "spotNo"    # I
    .param p4, "size"    # Lcom/ad_stir/webview/AdstirMraidView$AdSize;
    .param p5, "refreshInterval"    # J

    .prologue
    .line 96
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lcom/ad_stir/webview/AdstirMraidView;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;Ljava/lang/String;ILcom/ad_stir/webview/AdstirMraidView$AdSize;J)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8
    .param p1, "activity"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 88
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    const/4 v4, 0x0

    const-wide/16 v6, 0x3c

    move-object v0, p0

    move-object v2, p2

    move-object v5, v3

    invoke-direct/range {v0 .. v7}, Lcom/ad_stir/webview/AdstirMraidView;-><init>(Landroid/app/Activity;Landroid/util/AttributeSet;Ljava/lang/String;ILcom/ad_stir/webview/AdstirMraidView$AdSize;J)V

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/ad_stir/webview/AdstirMraidView;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/AdstirMraidView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->stop()V

    return-void
.end method

.method static synthetic access$100(Lcom/ad_stir/webview/AdstirMraidView;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/AdstirMraidView;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->start()V

    return-void
.end method

.method static synthetic access$200(Lcom/ad_stir/webview/AdstirMraidView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/ad_stir/webview/AdstirMraidView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Lcom/ad_stir/webview/AdstirMraidView;->load(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/ad_stir/webview/AdstirMraidView;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/webview/AdstirMraidView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ad_stir/webview/AdstirMraidView;)Lcom/ad_stir/webview/AdstirMraidView$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/ad_stir/webview/AdstirMraidView;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->listener:Lcom/ad_stir/webview/AdstirMraidView$Listener;

    return-object v0
.end method

.method private static createHTML(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "ac"    # Landroid/app/Activity;
    .param p1, "mediaId"    # Ljava/lang/String;
    .param p2, "spotNo"    # I
    .param p3, "origin"    # Ljava/lang/String;
    .param p4, "uid"    # Ljava/lang/String;
    .param p5, "interval"    # Ljava/lang/Long;
    .param p6, "full"    # Z
    .param p7, "reloadparam"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 148
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 150
    .local v0, "params":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "ver"

    const-string v3, "3.0"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 151
    const-string v2, "platform"

    const-string v3, "webview"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    const-string v2, "origin"

    invoke-virtual {v0, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    const-string v2, "app_id"

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 154
    const-string v2, "ad_spot"

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 155
    if-eqz p4, :cond_0

    .line 156
    const-string v2, "id"

    const-string v3, "google"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 157
    const-string v2, "uid"

    invoke-virtual {v0, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    :cond_0
    if-eqz p5, :cond_1

    .line 161
    const-string v2, "interval"

    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 164
    :cond_1
    invoke-static {}, Lcom/ad_stir/webview/MraidWebView;->mraidOn()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    if-eqz p6, :cond_6

    .line 166
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v5, :cond_5

    .line 167
    const-string v2, "mraid_type"

    const-string v3, "interstitial_portrait"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    :cond_2
    :goto_0
    const-string v2, "sdk_vendor"

    const-string v3, "adstir"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v2, "sdk_version"

    const/16 v3, 0x4e20

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v2, "supported_functions"

    new-instance v3, Lcom/ad_stir/webview/AdstirMraidView$1;

    invoke-direct {v3}, Lcom/ad_stir/webview/AdstirMraidView$1;-><init>()V

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    if-eqz p7, :cond_3

    .line 181
    const-string v2, "reload_parameter"

    invoke-virtual {v0, v2, p7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_3
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    .local v1, "str":Ljava/lang/StringBuilder;
    sget v2, Lcom/ad_stir/webview/AdstirMraidView;->TEST:I

    if-nez v2, :cond_7

    .line 189
    const-string v2, "<!DOCTYPE HTML>\n<html lang=\'ja\'><head>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    const-string v2, "<meta charset=\'UTF-8\'><meta name=\'viewport\' content=\'width=device-width, initial-scale=1.0\'><title>Adstir RTB</title><style type=\'text/css\'>html, body, body > *{ margin:0;\npadding:0;}body{ text-align: center;}</style>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    const-string v2, "</head>\n<body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    const-string v2, "<script type=\"text/javascript\" src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ad_stir/webview/MraidWebView;->gerMraidJS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"></script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    const-string v2, "<script type=\"text/javascript\">var adstir_vars = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";</script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v2, "<script type=\"text/javascript\" src=\"http://js.ad-stir.com/js/adstir.js?20120726\"></script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v2, "</body>\n</html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 169
    .end local v1    # "str":Ljava/lang/StringBuilder;
    :cond_5
    :try_start_1
    const-string v2, "mraid_type"

    const-string v3, "interstitial_landscape"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 183
    :catch_0
    move-exception v2

    goto :goto_1

    .line 172
    :cond_6
    const-string v2, "mraid_type"

    const-string v3, "inline"

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 196
    .restart local v1    # "str":Ljava/lang/StringBuilder;
    :cond_7
    sget v2, Lcom/ad_stir/webview/AdstirMraidView;->TEST:I

    if-ne v2, v5, :cond_8

    .line 198
    const-string v2, "<!DOCTYPE HTML>\n<html lang=\'ja\'><head>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v2, "<meta charset=\'UTF-8\'><meta name=\'viewport\' content=\'width=device-width, initial-scale=1.0\'><title>Adstir RTB</title><style type=\'text/css\'>html, body, body > *{ margin:0;\npadding:0;}body{ text-align: center;}</style>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v2, "</head>\n<body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v2, "<script type=\"text/javascript\" src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ad_stir/webview/MraidWebView;->gerMraidJS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"></script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    const-string v2, "<script type=\"text/javascript\">var adstir_vars = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";</script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    const-string v2, "<script type=\"text/javascript\">adstir_vars.debug={url:{adtag:\"//stage-vpc01-adstir-adtag-1343228992.ap-northeast-1.elb.amazonaws.com/ad\",\u000cloat:\"//js.ad-stir.com/js/adstir_float.js\"}};</script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const-string v2, "<script type=\"text/javascript\" src=\"http://js.ad-stir.com/js/adstir.js?20120726\"></script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    const-string v2, "</body>\n</html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 206
    :cond_8
    sget v2, Lcom/ad_stir/webview/AdstirMraidView;->TEST:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 208
    const-string v2, "<!DOCTYPE HTML>\n<html lang=\'ja\'><head>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    const-string v2, "<meta charset=\'UTF-8\'><meta name=\'viewport\' content=\'width=device-width, initial-scale=1.0\'><title>Adstir RTB</title><style type=\'text/css\'>html, body, body > *{ margin:0;\npadding:0;}body{ text-align: center;}</style>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    const-string v2, "</head>\n<body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v2, "<script type=\"text/javascript\" src=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/ad_stir/webview/MraidWebView;->gerMraidJS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"></script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    const-string v2, "<script type=\"text/javascript\">var adstir_vars = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";</script>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    const-string v2, "<script type=\"text/javascript\" src=\"http://js.ad-stir.com/js/adstir.js?20120726\"></script>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v2, "</body>\n</html>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2
.end method

.method private getRefreshInterval()J
    .locals 2

    .prologue
    .line 439
    iget-wide v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->mRefreshInterval:J

    return-wide v0
.end method

.method private getRefreshIntervalParam()Ljava/lang/Long;
    .locals 4

    .prologue
    .line 443
    iget-boolean v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->mAdmob:Z

    if-eqz v0, :cond_0

    .line 444
    const-wide/16 v0, 0x1e

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 447
    :goto_0
    return-object v0

    .line 445
    :cond_0
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->mRefreshInterval:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 446
    const/4 v0, 0x0

    goto :goto_0

    .line 447
    :cond_1
    iget-wide v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->mRefreshInterval:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method private isConnected(Landroid/net/ConnectivityManager;)Z
    .locals 3
    .param p1, "cm"    # Landroid/net/ConnectivityManager;

    .prologue
    .line 402
    if-eqz p1, :cond_0

    .line 403
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 404
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 405
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 412
    .end local v1    # "ni":Landroid/net/NetworkInfo;
    :goto_0
    return v2

    .line 408
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 409
    :catch_0
    move-exception v0

    .line 410
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/ad_stir/common/Log;->e(Ljava/lang/Throwable;)V

    .line 412
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private load(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "gid"    # Ljava/lang/String;
    .param p2, "reloadparam"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 329
    const-string v0, "load"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    if-nez v0, :cond_1

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 332
    :cond_1
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    new-instance v1, Lcom/ad_stir/webview/AdstirMraidView$4;

    invoke-direct {v1, p0, p1}, Lcom/ad_stir/webview/AdstirMraidView$4;-><init>(Lcom/ad_stir/webview/AdstirMraidView;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/ad_stir/webview/MraidWebView;->listener:Lcom/ad_stir/webview/MraidWebView$Listener;

    .line 359
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v0}, Lcom/ad_stir/webview/MraidWebView;->isDialog()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/ad_stir/webview/AdstirMraidView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {p0, v0}, Lcom/ad_stir/webview/AdstirMraidView;->isConnected(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v0}, Lcom/ad_stir/webview/MraidWebView;->stop()V

    .line 361
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->mediaId:Ljava/lang/String;

    iget v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->spotNo:I

    iget-object v3, p0, Lcom/ad_stir/webview/AdstirMraidView;->origin:Ljava/lang/String;

    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->getRefreshIntervalParam()Ljava/lang/Long;

    move-result-object v5

    iget-object v4, p0, Lcom/ad_stir/webview/AdstirMraidView;->adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    invoke-virtual {v4}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->fullscreen()Z

    move-result v6

    move-object v4, p1

    move-object v7, p2

    invoke-static/range {v0 .. v7}, Lcom/ad_stir/webview/AdstirMraidView;->createHTML(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 362
    .local v8, "html":Ljava/lang/String;
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->baseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v8}, Lcom/ad_stir/webview/MraidWebView;->loadHtml(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    .end local v8    # "html":Ljava/lang/String;
    :cond_2
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->schedulerRote:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->getRefreshInterval()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 366
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->schedulerRote:Ljava/util/concurrent/ScheduledExecutorService;

    .line 367
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->schedulerRote:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/ad_stir/webview/AdstirMraidView$5;

    invoke-direct {v1, p0, p1}, Lcom/ad_stir/webview/AdstirMraidView$5;-><init>(Lcom/ad_stir/webview/AdstirMraidView;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->getRefreshInterval()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->getRefreshInterval()J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 242
    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 244
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->receiver:Landroid/content/BroadcastReceiver;

    .line 245
    new-instance v1, Lcom/ad_stir/webview/AdstirMraidView$2;

    invoke-direct {v1, p0}, Lcom/ad_stir/webview/AdstirMraidView$2;-><init>(Lcom/ad_stir/webview/AdstirMraidView;)V

    iput-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->receiver:Landroid/content/BroadcastReceiver;

    .line 259
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 260
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 261
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 262
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 264
    return-void
.end method

.method private setRefreshInterval(J)V
    .locals 7
    .param p1, "sec"    # J

    .prologue
    const-wide/16 v5, 0x1e

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 451
    const-wide/16 v0, -0x1

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 452
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->mAdmob:Z

    .line 453
    iput-wide v3, p0, Lcom/ad_stir/webview/AdstirMraidView;->mRefreshInterval:J

    .line 455
    :cond_0
    cmp-long v0, v5, p1

    if-gtz v0, :cond_1

    .line 456
    iput-boolean v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->mAdmob:Z

    .line 457
    iput-wide p1, p0, Lcom/ad_stir/webview/AdstirMraidView;->mRefreshInterval:J

    .line 465
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set RefreshInterval = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->mRefreshInterval:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ad_stir/common/Log;->i(Ljava/lang/String;)V

    .line 466
    return-void

    .line 458
    :cond_1
    cmp-long v0, v3, p1

    if-gez v0, :cond_2

    .line 459
    iput-boolean v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->mAdmob:Z

    .line 460
    iput-wide v5, p0, Lcom/ad_stir/webview/AdstirMraidView;->mRefreshInterval:J

    goto :goto_0

    .line 462
    :cond_2
    iput-boolean v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->mAdmob:Z

    .line 463
    iput-wide v3, p0, Lcom/ad_stir/webview/AdstirMraidView;->mRefreshInterval:J

    goto :goto_0
.end method

.method private start()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 276
    const-string v0, "start"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->getWidth(Landroid/app/Activity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->getHeight(Landroid/app/Activity;)I

    move-result v0

    if-lez v0, :cond_0

    .line 283
    iget v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->spotNo:I

    if-lez v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->mediaId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 287
    iget-boolean v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->isStart:Z

    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->isStart:Z

    .line 290
    const-string v0, "start OK"

    invoke-static {v0}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    if-nez v0, :cond_3

    .line 294
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    invoke-virtual {v0}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->fullscreen()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 295
    new-instance v0, Lcom/ad_stir/webview/MraidWebView;

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    sget-object v3, Lcom/ad_stir/webview/MraidWebView$Type;->interstitial:Lcom/ad_stir/webview/MraidWebView$Type;

    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    iget-object v4, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->getWidth(Landroid/app/Activity;)I

    move-result v4

    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    iget-object v5, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->getHeight(Landroid/app/Activity;)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/ad_stir/webview/MraidWebView;-><init>(Landroid/app/Activity;Lcom/ad_stir/webview/AdstirMraidView;Lcom/ad_stir/webview/MraidWebView$Type;IIZ)V

    iput-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    .line 300
    :goto_1
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->appendUA:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v0}, Lcom/ad_stir/webview/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {v2}, Lcom/ad_stir/webview/MraidWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->appendUA:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    invoke-virtual {p0, v0}, Lcom/ad_stir/webview/AdstirMraidView;->addView(Landroid/view/View;)V

    .line 305
    :cond_3
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/ad_stir/webview/AdstirMraidView$3;

    invoke-direct {v1, p0}, Lcom/ad_stir/webview/AdstirMraidView$3;-><init>(Lcom/ad_stir/webview/AdstirMraidView;)V

    invoke-static {v0, v1}, Lcom/ad_stir/common/GooglePlayId;->getGooglePlayId(Landroid/content/Context;Lcom/ad_stir/common/GooglePlayId$GooglePlayIdListenner;)V

    goto/16 :goto_0

    .line 297
    :cond_4
    new-instance v0, Lcom/ad_stir/webview/MraidWebView;

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    sget-object v3, Lcom/ad_stir/webview/MraidWebView$Type;->inline1:Lcom/ad_stir/webview/MraidWebView$Type;

    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    iget-object v4, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v4}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->getWidth(Landroid/app/Activity;)I

    move-result v4

    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->adsize:Lcom/ad_stir/webview/AdstirMraidView$AdSize;

    iget-object v5, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    invoke-virtual {v2, v5}, Lcom/ad_stir/webview/AdstirMraidView$AdSize;->getHeight(Landroid/app/Activity;)I

    move-result v5

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/ad_stir/webview/MraidWebView;-><init>(Landroid/app/Activity;Lcom/ad_stir/webview/AdstirMraidView;Lcom/ad_stir/webview/MraidWebView$Type;IIZ)V

    iput-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    goto :goto_1
.end method

.method private stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 382
    const-string v2, "stop"

    invoke-static {v2}, Lcom/ad_stir/common/Log;->d(Ljava/lang/String;)V

    .line 383
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->isStart:Z

    .line 384
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    .line 385
    .local v0, "del":Lcom/ad_stir/webview/MraidWebView;
    iput-object v3, p0, Lcom/ad_stir/webview/AdstirMraidView;->wv:Lcom/ad_stir/webview/MraidWebView;

    .line 386
    if-eqz v0, :cond_1

    .line 387
    invoke-virtual {v0}, Lcom/ad_stir/webview/MraidWebView;->stop()V

    .line 388
    invoke-virtual {v0}, Lcom/ad_stir/webview/MraidWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 389
    .local v1, "parent":Landroid/view/ViewParent;
    if-ne v1, p0, :cond_0

    .line 390
    invoke-virtual {p0, v0}, Lcom/ad_stir/webview/AdstirMraidView;->removeView(Landroid/view/View;)V

    .line 392
    :cond_0
    invoke-virtual {v0}, Lcom/ad_stir/webview/MraidWebView;->destroy()V

    .line 394
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_1
    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->schedulerRote:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->schedulerRote:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 395
    iget-object v2, p0, Lcom/ad_stir/webview/AdstirMraidView;->schedulerRote:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 396
    iput-object v3, p0, Lcom/ad_stir/webview/AdstirMraidView;->schedulerRote:Ljava/util/concurrent/ScheduledExecutorService;

    .line 398
    :cond_2
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->receiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ad_stir/webview/AdstirMraidView;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->receiver:Landroid/content/BroadcastReceiver;

    .line 270
    return-void
.end method


# virtual methods
.method public getListener()Lcom/ad_stir/webview/AdstirMraidView$Listener;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/ad_stir/webview/AdstirMraidView;->listener:Lcom/ad_stir/webview/AdstirMraidView$Listener;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 234
    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->unregisterReceiver()V

    .line 235
    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->stop()V

    .line 236
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 237
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 223
    if-nez p1, :cond_0

    .line 224
    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->registerReceiver()V

    .line 225
    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->start()V

    .line 230
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->unregisterReceiver()V

    .line 228
    invoke-direct {p0}, Lcom/ad_stir/webview/AdstirMraidView;->stop()V

    goto :goto_0
.end method

.method public setAppendUA(Ljava/lang/String;)V
    .locals 0
    .param p1, "uastring"    # Ljava/lang/String;

    .prologue
    .line 428
    iput-object p1, p0, Lcom/ad_stir/webview/AdstirMraidView;->appendUA:Ljava/lang/String;

    .line 429
    return-void
.end method

.method public setListener(Lcom/ad_stir/webview/AdstirMraidView$Listener;)V
    .locals 0
    .param p1, "listener"    # Lcom/ad_stir/webview/AdstirMraidView$Listener;

    .prologue
    .line 422
    iput-object p1, p0, Lcom/ad_stir/webview/AdstirMraidView;->listener:Lcom/ad_stir/webview/AdstirMraidView$Listener;

    .line 423
    return-void
.end method
