.class public Lcom/google/android/gms/internal/nv;
.super Landroid/webkit/WebViewClient;

# interfaces
.implements Lcom/google/android/gms/internal/pk;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# static fields
.field private static final b:[Ljava/lang/String;

.field private static final c:[Ljava/lang/String;


# instance fields
.field private A:Z

.field private B:I

.field private C:Landroid/view/View$OnAttachStateChangeListener;

.field protected a:Lcom/google/android/gms/internal/fx;

.field private d:Lcom/google/android/gms/internal/nu;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/android/gms/ads/internal/gmsg/aa<",
            "-",
            "Lcom/google/android/gms/internal/nu;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Lcom/google/android/gms/internal/aty;

.field private h:Lcom/google/android/gms/ads/internal/overlay/n;

.field private i:Lcom/google/android/gms/internal/pl;

.field private j:Lcom/google/android/gms/internal/pm;

.field private k:Lcom/google/android/gms/ads/internal/gmsg/i;

.field private l:Lcom/google/android/gms/internal/pn;

.field private m:Z

.field private n:Lcom/google/android/gms/ads/internal/gmsg/ae;

.field private o:Z

.field private p:Z

.field private q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private s:Z

.field private t:Lcom/google/android/gms/ads/internal/overlay/t;

.field private final u:Lcom/google/android/gms/internal/bhv;

.field private v:Lcom/google/android/gms/ads/internal/bs;

.field private w:Lcom/google/android/gms/internal/bhm;

.field private x:Lcom/google/android/gms/internal/bhx;

.field private y:Lcom/google/android/gms/internal/po;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const-string v0, "UNKNOWN"

    const-string v1, "HOST_LOOKUP"

    const-string v2, "UNSUPPORTED_AUTH_SCHEME"

    const-string v3, "AUTHENTICATION"

    const-string v4, "PROXY_AUTHENTICATION"

    const-string v5, "CONNECT"

    const-string v6, "IO"

    const-string v7, "TIMEOUT"

    const-string v8, "REDIRECT_LOOP"

    const-string v9, "UNSUPPORTED_SCHEME"

    const-string v10, "FAILED_SSL_HANDSHAKE"

    const-string v11, "BAD_URL"

    const-string v12, "FILE"

    const-string v13, "FILE_NOT_FOUND"

    const-string v14, "TOO_MANY_REQUESTS"

    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/nv;->b:[Ljava/lang/String;

    const-string v1, "NOT_YET_VALID"

    const-string v2, "EXPIRED"

    const-string v3, "ID_MISMATCH"

    const-string v4, "UNTRUSTED"

    const-string v5, "DATE_INVALID"

    const-string v6, "INVALID"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/nv;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/nu;Z)V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/bhv;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->p()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/axe;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/axe;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/internal/bhv;-><init>(Lcom/google/android/gms/internal/nu;Landroid/content/Context;Lcom/google/android/gms/internal/axe;)V

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gms/internal/nv;-><init>(Lcom/google/android/gms/internal/nu;ZLcom/google/android/gms/internal/bhv;Lcom/google/android/gms/internal/bhm;)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/nu;ZLcom/google/android/gms/internal/bhv;Lcom/google/android/gms/internal/bhm;)V
    .locals 0

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/nv;->e:Ljava/util/HashMap;

    new-instance p4, Ljava/lang/Object;

    invoke-direct {p4}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/google/android/gms/internal/nv;->m:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/nv;->o:Z

    iput-object p3, p0, Lcom/google/android/gms/internal/nv;->u:Lcom/google/android/gms/internal/bhv;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    return-void
.end method

.method private final a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    move-object v1, v0

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x14

    if-gt v0, v2, :cond_7

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/16 v3, 0x2710

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    instance-of v3, v2, Ljava/net/HttpURLConnection;

    if-eqz v3, :cond_6

    check-cast v2, Ljava/net/HttpURLConnection;

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v4}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v5}, Lcom/google/android/gms/internal/nu;->j()Lcom/google/android/gms/internal/km;

    move-result-object v5

    iget-object v5, v5, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, p1, v2}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Ljava/lang/String;ZLjava/net/HttpURLConnection;)V

    new-instance v3, Lcom/google/android/gms/internal/kd;

    invoke-direct {v3}, Lcom/google/android/gms/internal/kd;-><init>()V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/google/android/gms/internal/kd;->a(Ljava/net/HttpURLConnection;[B)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/google/android/gms/internal/hs;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/google/android/gms/internal/hs;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v2, v5}, Lcom/google/android/gms/internal/kd;->a(Ljava/net/HttpURLConnection;I)V

    const/16 v3, 0x12c

    if-lt v5, v3, :cond_5

    const/16 v3, 0x190

    if-ge v5, v3, :cond_5

    const-string v3, "Location"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, v1, v3}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p1, "Protocol is null"

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-object v4

    :cond_0
    const-string v6, "http"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "https"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string p1, "Unsupported scheme: "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_1
    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    return-object v4

    :cond_2
    const-string v1, "Redirecting to "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_2
    invoke-static {v1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v1, v5

    goto/16 :goto_0

    :cond_4
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Missing Location header in redirect"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p1, v6, v7, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_6
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Invalid protocol."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/io/IOException;

    const/16 v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Too many redirects (20)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/axt;->bk:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    const-string v0, "err"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "code"

    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "host"

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_1
    const-string p3, ""

    :goto_0
    invoke-virtual {v5, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    move-result-object v1

    iget-object p2, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {p2}, Lcom/google/android/gms/internal/nu;->j()Lcom/google/android/gms/internal/km;

    move-result-object p2

    iget-object v3, p2, Lcom/google/android/gms/internal/km;->a:Ljava/lang/String;

    const-string v4, "gmob-apps"

    const/4 v6, 0x1

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/hs;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private final a(Landroid/net/Uri;)V
    .locals 6

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->e:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->e()Lcom/google/android/gms/internal/hs;

    invoke-static {p1}, Lcom/google/android/gms/internal/hs;->a(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    const/4 v2, 0x2

    invoke-static {v2}, Lcom/google/android/gms/internal/he;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Received GMSG: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "  "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/internal/gmsg/aa;

    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1, v2, p1}, Lcom/google/android/gms/ads/internal/gmsg/aa;->zza(Ljava/lang/Object;Ljava/util/Map;)V

    goto :goto_2

    :cond_2
    return-void

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "No GMSG handler found for GMSG: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final a(Landroid/view/View;Lcom/google/android/gms/internal/fx;I)V
    .locals 2

    invoke-interface {p2}, Lcom/google/android/gms/internal/fx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p3, :cond_0

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/fx;->a(Landroid/view/View;)V

    invoke-interface {p2}, Lcom/google/android/gms/internal/fx;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/hs;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/internal/nx;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/internal/nx;-><init>(Lcom/google/android/gms/internal/nv;Landroid/view/View;Lcom/google/android/gms/internal/fx;I)V

    const-wide/16 p1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/bhm;->a()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->c()Lcom/google/android/gms/ads/internal/overlay/l;

    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v2

    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-static {v2, p1, v1}, Lcom/google/android/gms/ads/internal/overlay/l;->a(Landroid/content/Context;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->a:Lcom/google/android/gms/internal/fx;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->l:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:Lcom/google/android/gms/ads/internal/overlay/c;

    if-eqz v1, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->a:Lcom/google/android/gms/ads/internal/overlay/c;

    iget-object v0, p1, Lcom/google/android/gms/ads/internal/overlay/c;->a:Ljava/lang/String;

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/nv;->a:Lcom/google/android/gms/internal/fx;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/nv;Landroid/view/View;Lcom/google/android/gms/internal/fx;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/internal/nv;->a(Landroid/view/View;Lcom/google/android/gms/internal/fx;I)V

    return-void
.end method

.method private final o()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->C:Landroid/view/View$OnAttachStateChangeListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->C:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    return-void
.end method

.method private final p()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->i:Lcom/google/android/gms/internal/pl;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/nv;->z:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/nv;->B:I

    if-lez v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/nv;->A:Z

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->i:Lcom/google/android/gms/internal/pl;

    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/nv;->A:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/pl;->a(Lcom/google/android/gms/internal/nu;Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/nv;->i:Lcom/google/android/gms/internal/pl;

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->E()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/ads/internal/bs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->v:Lcom/google/android/gms/ads/internal/bs;

    return-object v0
.end method

.method public final a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bhm;->a(II)V

    :cond_0
    return-void
.end method

.method public final a(IIZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->u:Lcom/google/android/gms/internal/bhv;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/bhv;->a(II)V

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/bhm;->a(IIZ)V

    :cond_0
    return-void
.end method

.method public final a(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/nv;->p:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->D()V

    iput-object p1, p0, Lcom/google/android/gms/internal/nv;->q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    iput-object p2, p0, Lcom/google/android/gms/internal/nv;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/ads/internal/overlay/c;)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->x()Z

    move-result v0

    new-instance v7, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->s()Lcom/google/android/gms/internal/pr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/pr;->d()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v3, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->g:Lcom/google/android/gms/internal/aty;

    move-object v3, v2

    :goto_0
    if-eqz v0, :cond_1

    move-object v4, v1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->h:Lcom/google/android/gms/ads/internal/overlay/n;

    move-object v4, v0

    :goto_1
    iget-object v5, p0, Lcom/google/android/gms/internal/nv;->t:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->j()Lcom/google/android/gms/internal/km;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/ads/internal/overlay/c;Lcom/google/android/gms/internal/aty;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/km;)V

    invoke-direct {p0, v7}, Lcom/google/android/gms/internal/nv;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/aty;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/t;ZLcom/google/android/gms/ads/internal/gmsg/ae;Lcom/google/android/gms/ads/internal/bs;Lcom/google/android/gms/internal/bhx;Lcom/google/android/gms/internal/fx;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v11, p3

    move-object/from16 v12, p6

    move-object/from16 v13, p8

    move-object/from16 v2, p9

    if-nez p7, :cond_0

    new-instance v1, Lcom/google/android/gms/ads/internal/bs;

    iget-object v3, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4}, Lcom/google/android/gms/ads/internal/bs;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/fx;Lcom/google/android/gms/internal/bp;)V

    move-object v14, v1

    goto :goto_0

    :cond_0
    move-object/from16 v14, p7

    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/bhm;

    iget-object v3, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-direct {v1, v3, v13}, Lcom/google/android/gms/internal/bhm;-><init>(Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/internal/bhx;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    iput-object v2, v0, Lcom/google/android/gms/internal/nv;->a:Lcom/google/android/gms/internal/fx;

    const-string v1, "/appEvent"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/a;

    invoke-direct {v2, v11}, Lcom/google/android/gms/ads/internal/gmsg/a;-><init>(Lcom/google/android/gms/ads/internal/gmsg/i;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/backButton"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->j:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/refresh"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->k:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/canOpenURLs"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->a:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/canOpenIntents"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->b:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/click"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->c:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/close"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->d:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/customClose"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->e:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/instrument"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->n:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/delayPageLoaded"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->p:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/delayPageClosed"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->q:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/getLocationInfo"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->r:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/httpTrack"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->f:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/log"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->g:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/mraid"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/b;

    iget-object v3, v0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    invoke-direct {v2, v14, v3, v13}, Lcom/google/android/gms/ads/internal/gmsg/b;-><init>(Lcom/google/android/gms/ads/internal/bs;Lcom/google/android/gms/internal/bhm;Lcom/google/android/gms/internal/bhx;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/mraidLoaded"

    iget-object v2, v0, Lcom/google/android/gms/internal/nv;->u:Lcom/google/android/gms/internal/bhv;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v15, "/open"

    new-instance v10, Lcom/google/android/gms/ads/internal/gmsg/c;

    iget-object v1, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->j()Lcom/google/android/gms/internal/km;

    move-result-object v3

    iget-object v1, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->w()Lcom/google/android/gms/internal/zk;

    move-result-object v4

    iget-object v9, v0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    move-object v1, v10

    move-object/from16 v5, p4

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v16, v9

    move-object v9, v14

    move-object v13, v10

    move-object/from16 v10, v16

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/gmsg/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/km;Lcom/google/android/gms/internal/zk;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/aty;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/bs;Lcom/google/android/gms/internal/bhm;)V

    invoke-virtual {v0, v15, v13}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/precache"

    new-instance v2, Lcom/google/android/gms/internal/nr;

    invoke-direct {v2}, Lcom/google/android/gms/internal/nr;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/touch"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->i:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/video"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->l:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v1, "/videoMeta"

    sget-object v2, Lcom/google/android/gms/ads/internal/gmsg/k;->m:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->A()Lcom/google/android/gms/internal/gb;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/gb;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "/logScionEvent"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/ag;

    iget-object v3, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/ads/internal/gmsg/ag;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    :cond_1
    if-eqz v12, :cond_2

    const-string v1, "/setInterstitialProperties"

    new-instance v2, Lcom/google/android/gms/ads/internal/gmsg/ad;

    invoke-direct {v2, v12}, Lcom/google/android/gms/ads/internal/gmsg/ad;-><init>(Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    :cond_2
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/google/android/gms/internal/nv;->g:Lcom/google/android/gms/internal/aty;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcom/google/android/gms/internal/nv;->h:Lcom/google/android/gms/ads/internal/overlay/n;

    iput-object v11, v0, Lcom/google/android/gms/internal/nv;->k:Lcom/google/android/gms/ads/internal/gmsg/i;

    move-object/from16 v1, p4

    iput-object v1, v0, Lcom/google/android/gms/internal/nv;->t:Lcom/google/android/gms/ads/internal/overlay/t;

    iput-object v14, v0, Lcom/google/android/gms/internal/nv;->v:Lcom/google/android/gms/ads/internal/bs;

    move-object/from16 v1, p8

    iput-object v1, v0, Lcom/google/android/gms/internal/nv;->x:Lcom/google/android/gms/internal/bhx;

    iput-object v12, v0, Lcom/google/android/gms/internal/nv;->n:Lcom/google/android/gms/ads/internal/gmsg/ae;

    move/from16 v1, p5

    iput-boolean v1, v0, Lcom/google/android/gms/internal/nv;->m:Z

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/nu;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/pl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nv;->i:Lcom/google/android/gms/internal/pl;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/pm;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nv;->j:Lcom/google/android/gms/internal/pm;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/pn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nv;->l:Lcom/google/android/gms/internal/pn;

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/po;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/nv;->y:Lcom/google/android/gms/internal/po;

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/aa<",
            "-",
            "Lcom/google/android/gms/internal/nu;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->e:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/common/util/l;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/common/util/l<",
            "Lcom/google/android/gms/ads/internal/gmsg/aa<",
            "-",
            "Lcom/google/android/gms/internal/nu;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {p2, v3}, Lcom/google/android/gms/common/util/l;->a(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/nv;->m:Z

    return-void
.end method

.method public final a(ZI)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->x()Z

    move-result v0

    new-instance v9, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->s()Lcom/google/android/gms/internal/pr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/pr;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->g:Lcom/google/android/gms/internal/aty;

    :goto_0
    move-object v2, v0

    iget-object v3, p0, Lcom/google/android/gms/internal/nv;->h:Lcom/google/android/gms/ads/internal/overlay/n;

    iget-object v4, p0, Lcom/google/android/gms/internal/nv;->t:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v5, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->j()Lcom/google/android/gms/internal/km;

    move-result-object v8

    move-object v1, v9

    move v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/aty;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/nu;ZILcom/google/android/gms/internal/km;)V

    invoke-direct {p0, v9}, Lcom/google/android/gms/internal/nv;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final a(ZILjava/lang/String;)V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->x()Z

    move-result v0

    new-instance v11, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v2}, Lcom/google/android/gms/internal/nu;->s()Lcom/google/android/gms/internal/pr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/pr;->d()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->g:Lcom/google/android/gms/internal/aty;

    :goto_0
    if-eqz v0, :cond_1

    move-object v3, v1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/nz;

    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    iget-object v3, p0, Lcom/google/android/gms/internal/nv;->h:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-direct {v0, v1, v3}, Lcom/google/android/gms/internal/nz;-><init>(Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/ads/internal/overlay/n;)V

    move-object v3, v0

    :goto_1
    iget-object v4, p0, Lcom/google/android/gms/internal/nv;->k:Lcom/google/android/gms/ads/internal/gmsg/i;

    iget-object v5, p0, Lcom/google/android/gms/internal/nv;->t:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v6, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->j()Lcom/google/android/gms/internal/km;

    move-result-object v10

    move-object v1, v11

    move v7, p1

    move v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/aty;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/nu;ZILjava/lang/String;Lcom/google/android/gms/internal/km;)V

    invoke-direct {p0, v11}, Lcom/google/android/gms/internal/nv;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final a(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 14

    move-object v0, p0

    iget-object v1, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->x()Z

    move-result v1

    new-instance v13, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/nu;->s()Lcom/google/android/gms/internal/pr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/gms/internal/pr;->d()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/google/android/gms/internal/nv;->g:Lcom/google/android/gms/internal/aty;

    :goto_0
    if-eqz v1, :cond_1

    move-object v4, v2

    goto :goto_1

    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/nz;

    iget-object v2, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    iget-object v4, v0, Lcom/google/android/gms/internal/nv;->h:Lcom/google/android/gms/ads/internal/overlay/n;

    invoke-direct {v1, v2, v4}, Lcom/google/android/gms/internal/nz;-><init>(Lcom/google/android/gms/internal/nu;Lcom/google/android/gms/ads/internal/overlay/n;)V

    move-object v4, v1

    :goto_1
    iget-object v5, v0, Lcom/google/android/gms/internal/nv;->k:Lcom/google/android/gms/ads/internal/gmsg/i;

    iget-object v6, v0, Lcom/google/android/gms/internal/nv;->t:Lcom/google/android/gms/ads/internal/overlay/t;

    iget-object v7, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    iget-object v1, v0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->j()Lcom/google/android/gms/internal/km;

    move-result-object v12

    move-object v2, v13

    move v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;-><init>(Lcom/google/android/gms/internal/aty;Lcom/google/android/gms/ads/internal/overlay/n;Lcom/google/android/gms/ads/internal/gmsg/i;Lcom/google/android/gms/ads/internal/overlay/t;Lcom/google/android/gms/internal/nu;ZILjava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/km;)V

    invoke-direct {p0, v13}, Lcom/google/android/gms/internal/nv;->a(Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-void
.end method

.method public final b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/ads/internal/gmsg/aa<",
            "-",
            "Lcom/google/android/gms/internal/nu;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/nv;->o:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/nv;->p:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->q:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Landroid/view/ViewTreeObserver$OnScrollChangedListener;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->r:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/nv;->s:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->a:Lcom/google/android/gms/internal/fx;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/h/q;->w(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-direct {p0, v1, v0, v2}, Lcom/google/android/gms/internal/nv;->a(Landroid/view/View;Lcom/google/android/gms/internal/fx;I)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/nv;->o()V

    new-instance v1, Lcom/google/android/gms/internal/ny;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/ny;-><init>(Lcom/google/android/gms/internal/nv;Lcom/google/android/gms/internal/fx;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/nv;->C:Landroid/view/View$OnAttachStateChangeListener;

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->C:Landroid/view/View$OnAttachStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :cond_1
    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/nv;->s:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/google/android/gms/internal/nv;->B:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/nv;->B:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/nv;->p()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final i()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/nv;->B:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/nv;->B:I

    invoke-direct {p0}, Lcom/google/android/gms/internal/nv;->p()V

    return-void
.end method

.method public final j()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/nv;->A:Z

    invoke-direct {p0}, Lcom/google/android/gms/internal/nv;->p()V

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->a:Lcom/google/android/gms/internal/fx;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->a:Lcom/google/android/gms/internal/fx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/fx;->d()V

    iput-object v1, p0, Lcom/google/android/gms/internal/nv;->a:Lcom/google/android/gms/internal/fx;

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/nv;->o()V

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->e:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/nv;->g:Lcom/google/android/gms/internal/aty;

    iput-object v1, p0, Lcom/google/android/gms/internal/nv;->h:Lcom/google/android/gms/ads/internal/overlay/n;

    iput-object v1, p0, Lcom/google/android/gms/internal/nv;->i:Lcom/google/android/gms/internal/pl;

    iput-object v1, p0, Lcom/google/android/gms/internal/nv;->j:Lcom/google/android/gms/internal/pm;

    iput-object v1, p0, Lcom/google/android/gms/internal/nv;->k:Lcom/google/android/gms/ads/internal/gmsg/i;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/nv;->m:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/nv;->o:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/nv;->p:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/nv;->s:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/nv;->t:Lcom/google/android/gms/ads/internal/overlay/t;

    iput-object v1, p0, Lcom/google/android/gms/internal/nv;->l:Lcom/google/android/gms/internal/pn;

    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/bhm;->a(Z)V

    iput-object v1, p0, Lcom/google/android/gms/internal/nv;->w:Lcom/google/android/gms/internal/bhm;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Lcom/google/android/gms/internal/po;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->y:Lcom/google/android/gms/internal/po;

    return-object v0
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/nv;->m:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/nv;->o:Z

    sget-object v1, Lcom/google/android/gms/internal/lk;->a:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/internal/nw;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/nw;-><init>(Lcom/google/android/gms/internal/nv;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final synthetic n()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->D()V

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->q()Lcom/google/android/gms/ads/internal/overlay/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/d;->m()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->l:Lcom/google/android/gms/internal/pn;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->l:Lcom/google/android/gms/internal/pn;

    invoke-interface {v0}, Lcom/google/android/gms/internal/pn;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/nv;->l:Lcom/google/android/gms/internal/pn;

    :cond_1
    return-void
.end method

.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    const-string p1, "Loading resource: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string p2, "gmsg"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "mobileads.google.com"

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/nv;->a(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/nv;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {p2}, Lcom/google/android/gms/internal/nu;->y()Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Blank page loaded, 1..."

    invoke-static {p2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {p2}, Lcom/google/android/gms/internal/nu;->z()V

    monitor-exit p1

    return-void

    :cond_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/nv;->z:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/nv;->j:Lcom/google/android/gms/internal/pm;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/nv;->j:Lcom/google/android/gms/internal/pm;

    iget-object p2, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/pm;->a(Lcom/google/android/gms/internal/nu;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/nv;->j:Lcom/google/android/gms/internal/pm;

    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/nv;->p()V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-gez p2, :cond_0

    neg-int v0, p2

    add-int/lit8 v0, v0, -0x1

    sget-object v1, Lcom/google/android/gms/internal/nv;->b:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/nv;->b:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "http_err"

    invoke-direct {p0, v1, v2, v0, p4}, Lcom/google/android/gms/internal/nv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 4

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/net/http/SslError;->getPrimaryError()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/nv;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/google/android/gms/internal/nv;->c:[Ljava/lang/String;

    aget-object v0, v1, v0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "ssl_err"

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->g()Lcom/google/android/gms/internal/hy;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/google/android/gms/internal/hy;->a(Landroid/net/http/SslError;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v0, v3}, Lcom/google/android/gms/internal/nv;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    const/4 p1, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ge;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p2

    return-object p2

    :cond_0
    invoke-static {p2}, Lcom/google/android/gms/internal/ase;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ase;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->k()Lcom/google/android/gms/internal/arw;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/arw;->a(Lcom/google/android/gms/internal/ase;)Lcom/google/android/gms/internal/asb;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/asb;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Landroid/webkit/WebResourceResponse;

    const-string v1, ""

    const-string v2, ""

    invoke-virtual {v0}, Lcom/google/android/gms/internal/asb;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {p2, v1, v2, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/kd;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/axt;->ba:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/nv;->a(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :cond_2
    return-object p1

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->i()Lcom/google/android/gms/internal/gq;

    move-result-object v0

    const-string v1, "AdWebViewClient.interceptRequest"

    invoke-virtual {v0, p2, v1}, Lcom/google/android/gms/internal/gq;->a(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object p1
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/16 p2, 0x4f

    if-eq p1, p2, :cond_0

    const/16 p2, 0xde

    if-eq p1, p2, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const/4 p1, 0x0

    return p1

    :cond_0
    :pswitch_0
    const/4 p1, 0x1

    return p1

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 11

    const-string v0, "AdWebView shouldOverrideUrlLoading: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "gmsg"

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v1, "mobileads.google.com"

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/nv;->a(Landroid/net/Uri;)V

    goto/16 :goto_7

    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/nv;->m:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    if-ne p1, v1, :cond_6

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v3, "http"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->g:Lcom/google/android/gms/internal/aty;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/google/android/gms/internal/axt;->af:Lcom/google/android/gms/internal/axi;

    invoke-static {}, Lcom/google/android/gms/internal/aus;->f()Lcom/google/android/gms/internal/axr;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/axr;->a(Lcom/google/android/gms/internal/axi;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->g:Lcom/google/android/gms/internal/aty;

    invoke-interface {v0}, Lcom/google/android/gms/internal/aty;->e()V

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->a:Lcom/google/android/gms/internal/fx;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/nv;->a:Lcom/google/android/gms/internal/fx;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/fx;->a(Ljava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/nv;->g:Lcom/google/android/gms/internal/aty;

    :cond_5
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_6
    iget-object p1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->willNotDraw()Z

    move-result p1

    if-nez p1, :cond_b

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/nu;->w()Lcom/google/android/gms/internal/zk;

    move-result-object p1

    if-eqz p1, :cond_8

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zk;->a(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/nu;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/nu;->getView()Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/nv;->d:Lcom/google/android/gms/internal/nu;

    invoke-interface {v4}, Lcom/google/android/gms/internal/nu;->d()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {p1, v0, v1, v3, v4}, Lcom/google/android/gms/internal/zk;->a(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/zp; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_4

    :catch_0
    nop

    const-string p1, "Unable to append parameter to URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_7
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, v1

    :goto_3
    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/google/android/gms/internal/nv;->v:Lcom/google/android/gms/ads/internal/bs;

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/google/android/gms/internal/nv;->v:Lcom/google/android/gms/ads/internal/bs;

    invoke-virtual {p1}, Lcom/google/android/gms/ads/internal/bs;->b()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/nv;->v:Lcom/google/android/gms/ads/internal/bs;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/ads/internal/bs;->a(Ljava/lang/String;)V

    goto :goto_7

    :cond_a
    :goto_5
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/c;

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/ads/internal/overlay/c;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/nv;->a(Lcom/google/android/gms/ads/internal/overlay/c;)V

    goto :goto_7

    :cond_b
    const-string p1, "AdWebView unable to handle URL: "

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_c
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_6
    invoke-static {p1}, Lcom/google/android/gms/internal/he;->e(Ljava/lang/String;)V

    :goto_7
    return v2
.end method
