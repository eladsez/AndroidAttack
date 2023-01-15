.class public Lcom/google/ads/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/ads/o;


# static fields
.field private static final a:Lcom/google/ads/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/ads/internal/a;->a:Lcom/google/ads/util/f;

    invoke-interface {v0}, Lcom/google/ads/util/f;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/ads/internal/a;

    sput-object v0, Lcom/google/ads/q;->a:Lcom/google/ads/internal/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/ads/internal/d;Ljava/util/HashMap;Landroid/webkit/WebView;)V
    .locals 12
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
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 37
    const-string v0, "urls"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 38
    if-nez p0, :cond_0

    .line 39
    const-string v0, "Could not get the urls param from canOpenURLs gmsg."

    invoke-static {v0}, Lcom/google/ads/util/b;->e(Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 42
    :cond_0
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 45
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 46
    invoke-virtual {p3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 47
    array-length v3, v0

    move v4, v9

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    .line 49
    const-string v6, ";"

    invoke-virtual {v5, v6, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 50
    aget-object v7, v6, v9

    .line 51
    array-length v8, v6

    if-lt v8, v11, :cond_1

    aget-object v6, v6, v10

    .line 55
    :goto_2
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 56
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 57
    const/high16 v6, 0x10000

    invoke-virtual {v2, v8, v6}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v6

    .line 59
    if-eqz v6, :cond_2

    move v6, v10

    .line 60
    :goto_3
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 51
    :cond_1
    const-string v6, "android.intent.action.VIEW"

    goto :goto_2

    :cond_2
    move v6, v9

    .line 59
    goto :goto_3

    .line 64
    :cond_3
    sget-object v0, Lcom/google/ads/q;->a:Lcom/google/ads/internal/a;

    invoke-virtual {v0, p3, v1}, Lcom/google/ads/internal/a;->a(Landroid/webkit/WebView;Ljava/util/Map;)V

    goto :goto_0
.end method
