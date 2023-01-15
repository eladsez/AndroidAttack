.class public Lcom/google/ads/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/o;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/ads/internal/d;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/WebView;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v7, "1"

    .line 33
    const-string v0, "url"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 34
    const-string v0, "type"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    const-string v1, "afma_notify_dt"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    const-string v2, "activation_overlay_url"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 37
    const-string v3, "check_packages"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 38
    const-string v4, "1"

    const-string v4, "drt_include"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 39
    const-string v4, "request_scenario"

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 40
    const-string v6, "1"

    const-string v6, "use_webview_loadurl"

    invoke-virtual {p2, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 45
    sget-object v7, Lcom/google/ads/internal/c$d;->d:Lcom/google/ads/internal/c$d;

    iget-object v7, v7, Lcom/google/ads/internal/c$d;->e:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 47
    sget-object v4, Lcom/google/ads/internal/c$d;->d:Lcom/google/ads/internal/c$d;

    .line 57
    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received ad url: <url: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\" type: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\" afmaNotifyDt: \""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" activationOverlayUrl: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" useWebViewLoadUrl: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    .line 63
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 64
    new-instance v0, Ljava/math/BigInteger;

    new-array v1, v10, [B

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    .line 65
    const-string v1, ","

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v3, v9

    move-object v7, v0

    .line 66
    :goto_1
    array-length v0, v1

    if-ge v3, v0, :cond_3

    .line 67
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->i()Lcom/google/ads/n;

    move-result-object v0

    iget-object v0, v0, Lcom/google/ads/n;->c:Lcom/google/ads/util/i$d;

    invoke-virtual {v0}, Lcom/google/ads/util/i$d;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    aget-object v8, v1, v3

    invoke-static {v0, v8}, Lcom/google/ads/util/AdUtil;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 68
    invoke-virtual {v7, v3}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    .line 66
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move-object v7, v0

    goto :goto_1

    .line 48
    :cond_0
    sget-object v7, Lcom/google/ads/internal/c$d;->c:Lcom/google/ads/internal/c$d;

    iget-object v7, v7, Lcom/google/ads/internal/c$d;->e:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 50
    sget-object v4, Lcom/google/ads/internal/c$d;->c:Lcom/google/ads/internal/c$d;

    goto/16 :goto_0

    .line 51
    :cond_1
    sget-object v7, Lcom/google/ads/internal/c$d;->a:Lcom/google/ads/internal/c$d;

    iget-object v7, v7, Lcom/google/ads/internal/c$d;->e:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    sget-object v4, Lcom/google/ads/internal/c$d;->a:Lcom/google/ads/internal/c$d;

    goto/16 :goto_0

    .line 55
    :cond_2
    sget-object v4, Lcom/google/ads/internal/c$d;->b:Lcom/google/ads/internal/c$d;

    goto/16 :goto_0

    .line 71
    :cond_3
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%X"

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v7, v3, v9

    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    const-string v1, "%40installed_markets%40"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {}, Lcom/google/ads/m;->a()Lcom/google/ads/m;

    move-result-object v3

    iget-object v3, v3, Lcom/google/ads/m;->a:Lcom/google/ads/util/i$c;

    invoke-virtual {v3, v0}, Lcom/google/ads/util/i$c;->a(Ljava/lang/Object;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad url modified to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/ads/util/b;->c(Ljava/lang/String;)V

    move-object v0, v1

    .line 80
    :goto_3
    invoke-virtual {p1}, Lcom/google/ads/internal/d;->k()Lcom/google/ads/internal/c;

    move-result-object v1

    .line 81
    if-eqz v1, :cond_4

    .line 82
    invoke-virtual {v1, v5}, Lcom/google/ads/internal/c;->d(Z)V

    .line 83
    invoke-virtual {v1, v4}, Lcom/google/ads/internal/c;->a(Lcom/google/ads/internal/c$d;)V

    .line 84
    invoke-virtual {v1, v6}, Lcom/google/ads/internal/c;->e(Z)V

    .line 85
    invoke-virtual {v1, v2}, Lcom/google/ads/internal/c;->e(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v1, v0}, Lcom/google/ads/internal/c;->d(Ljava/lang/String;)V

    .line 90
    :cond_4
    return-void

    :cond_5
    move-object v0, v7

    goto :goto_2

    :cond_6
    move-object v0, p0

    goto :goto_3
.end method
