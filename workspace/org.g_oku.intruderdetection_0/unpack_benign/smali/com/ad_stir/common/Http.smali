.class public Lcom/ad_stir/common/Http;
.super Ljava/lang/Object;
.source "Http.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ad_stir/common/Http$HttpRunnable;
    }
.end annotation


# static fields
.field public static final ADSTIR_DOMAIN:Ljava/lang/String; = "http://api.ad-stir.com/"

.field public static final ADSTIR_TEST_DOMAIN:Ljava/lang/String; = "http://test.ad-stir.com/sdk/"

.field public static TEST:Z

.field private static uaString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ad_stir/common/Http;->TEST:Z

    .line 52
    const/4 v0, 0x0

    sput-object v0, Lcom/ad_stir/common/Http;->uaString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
.end method

.method public static final ADSTIR_INTER()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/ad_stir/common/Http;->TEST:Z

    if-eqz v0, :cond_0

    const-string v0, "http://test.ad-stir.com/sdk/inter/"

    .line 32
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://api.ad-stir.com/inter/"

    goto :goto_0
.end method

.method public static final ADSTIR_REPORT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/ad_stir/common/Http;->TEST:Z

    if-eqz v0, :cond_0

    const-string v0, "http://test.ad-stir.com/sdk/report/"

    .line 22
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://api.ad-stir.com/report/"

    goto :goto_0
.end method

.method public static final ADSTIR_SDKCONFIG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/ad_stir/common/Http;->TEST:Z

    if-eqz v0, :cond_0

    const-string v0, "http://test.ad-stir.com/sdk/sc/"

    .line 27
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://api.ad-stir.com/sc/"

    goto :goto_0
.end method

.method public static encodeURIComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "component"    # Ljava/lang/String;

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 38
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    const-string v2, "UTF-8"

    invoke-static {p0, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\%28"

    const-string v4, "("

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\%29"

    const-string v4, ")"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\+"

    const-string v4, "%20"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\%27"

    const-string v4, "\'"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\%21"

    const-string v4, "!"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\%7E"

    const-string v4, "~"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 48
    :goto_0
    return-object v1

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    move-object v1, p0

    goto :goto_0
.end method

.method public static getHttp(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "timeoutSecond"    # I
    .param p2, "ua"    # Ljava/lang/String;

    .prologue
    .line 64
    :try_start_0
    new-instance v1, Lcom/ad_stir/common/Http$HttpRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/ad_stir/common/Http$HttpRunnable;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 65
    .local v1, "httpRun":Lcom/ad_stir/common/Http$HttpRunnable;
    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 67
    mul-int/lit16 v3, p1, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/Thread;->join(J)V

    .line 68
    invoke-virtual {v1}, Lcom/ad_stir/common/Http$HttpRunnable;->getResponse()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 70
    .end local v1    # "httpRun":Lcom/ad_stir/common/Http$HttpRunnable;
    .end local v2    # "thread":Ljava/lang/Thread;
    :goto_0
    return-object v3

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/InterruptedException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getUA(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    sget-object v1, Lcom/ad_stir/common/Http;->uaString:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 55
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "webView":Landroid/webkit/WebView;
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ad_stir/common/Http;->uaString:Ljava/lang/String;

    .line 58
    .end local v0    # "webView":Landroid/webkit/WebView;
    :cond_0
    sget-object v1, Lcom/ad_stir/common/Http;->uaString:Ljava/lang/String;

    return-object v1
.end method
