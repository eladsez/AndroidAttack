.class public final Lcom/google/android/gms/internal/apw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/aqf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/apg;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/ads/internal/gmsg/ag;

.field private d:Lcom/google/android/gms/ads/internal/js/b;

.field private e:Z

.field private final f:Lcom/google/android/gms/ads/internal/gmsg/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/aa<",
            "Lcom/google/android/gms/ads/internal/js/k;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/ads/internal/gmsg/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/aa<",
            "Lcom/google/android/gms/ads/internal/js/k;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/ads/internal/gmsg/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/aa<",
            "Lcom/google/android/gms/ads/internal/js/k;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/ads/internal/gmsg/aa;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/aa<",
            "Lcom/google/android/gms/ads/internal/js/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/apg;Lcom/google/android/gms/ads/internal/js/z;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/aqb;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aqb;-><init>(Lcom/google/android/gms/internal/apw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/apw;->f:Lcom/google/android/gms/ads/internal/gmsg/aa;

    new-instance v0, Lcom/google/android/gms/internal/aqc;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aqc;-><init>(Lcom/google/android/gms/internal/apw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/apw;->g:Lcom/google/android/gms/ads/internal/gmsg/aa;

    new-instance v0, Lcom/google/android/gms/internal/aqd;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aqd;-><init>(Lcom/google/android/gms/internal/apw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/apw;->h:Lcom/google/android/gms/ads/internal/gmsg/aa;

    new-instance v0, Lcom/google/android/gms/internal/aqe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/aqe;-><init>(Lcom/google/android/gms/internal/apw;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/apw;->i:Lcom/google/android/gms/ads/internal/gmsg/aa;

    iput-object p1, p0, Lcom/google/android/gms/internal/apw;->a:Lcom/google/android/gms/internal/apg;

    iput-object p3, p0, Lcom/google/android/gms/internal/apw;->b:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/ads/internal/gmsg/ag;

    iget-object p3, p0, Lcom/google/android/gms/internal/apw;->b:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/google/android/gms/ads/internal/gmsg/ag;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/apw;->c:Lcom/google/android/gms/ads/internal/gmsg/ag;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/ads/internal/js/z;->b(Lcom/google/android/gms/internal/zk;)Lcom/google/android/gms/ads/internal/js/b;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/apw;->d:Lcom/google/android/gms/ads/internal/js/b;

    iget-object p1, p0, Lcom/google/android/gms/internal/apw;->d:Lcom/google/android/gms/ads/internal/js/b;

    new-instance p2, Lcom/google/android/gms/internal/apx;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/apx;-><init>(Lcom/google/android/gms/internal/apw;)V

    new-instance p3, Lcom/google/android/gms/internal/apy;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/apy;-><init>(Lcom/google/android/gms/internal/apw;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/lv;Lcom/google/android/gms/internal/lt;)V

    const-string p1, "Core JS tracking ad unit: "

    iget-object p2, p0, Lcom/google/android/gms/internal/apw;->a:Lcom/google/android/gms/internal/apg;

    iget-object p2, p2, Lcom/google/android/gms/internal/apg;->a:Lcom/google/android/gms/internal/ape;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ape;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/he;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/apw;)Lcom/google/android/gms/internal/apg;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/apw;->a:Lcom/google/android/gms/internal/apg;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/apw;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/apw;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/apw;)Lcom/google/android/gms/ads/internal/gmsg/ag;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/apw;->c:Lcom/google/android/gms/ads/internal/gmsg/ag;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/ads/internal/js/k;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/apw;->f:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/k;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/apw;->g:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/k;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/apw;->h:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/k;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->A()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/apw;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/apw;->i:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/k;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Z)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/apw;->d:Lcom/google/android/gms/ads/internal/js/b;

    new-instance v0, Lcom/google/android/gms/internal/apz;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/apz;-><init>(Lcom/google/android/gms/internal/apw;Lorg/json/JSONObject;)V

    new-instance p1, Lcom/google/android/gms/internal/lu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/lu;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/lv;Lcom/google/android/gms/internal/lt;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/apw;->e:Z

    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/apw;->d:Lcom/google/android/gms/ads/internal/js/b;

    new-instance v1, Lcom/google/android/gms/internal/aqa;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/aqa;-><init>(Lcom/google/android/gms/internal/apw;)V

    new-instance v2, Lcom/google/android/gms/internal/lu;

    invoke-direct {v2}, Lcom/google/android/gms/internal/lu;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/lw;->a(Lcom/google/android/gms/internal/lv;Lcom/google/android/gms/internal/lt;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/apw;->d:Lcom/google/android/gms/ads/internal/js/b;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/js/b;->a()V

    return-void
.end method

.method final b(Lcom/google/android/gms/ads/internal/js/k;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/apw;->h:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/k;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/apw;->g:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/k;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/apw;->f:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/k;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/av;->A()Lcom/google/android/gms/internal/gb;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/apw;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gb;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/apw;->i:Lcom/google/android/gms/ads/internal/gmsg/aa;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/ads/internal/js/k;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/aa;)V

    :cond_0
    return-void
.end method
