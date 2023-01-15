.class public final Lcom/google/android/gms/internal/ads/aki;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/akr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ajv;

.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/ads/internal/gmsg/c;

.field private d:Lcom/google/android/gms/internal/ads/bbd;

.field private e:Z

.field private final f:Lcom/google/android/gms/ads/internal/gmsg/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "Lcom/google/android/gms/internal/ads/bbn;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/google/android/gms/ads/internal/gmsg/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "Lcom/google/android/gms/internal/ads/bbn;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Lcom/google/android/gms/ads/internal/gmsg/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "Lcom/google/android/gms/internal/ads/bbn;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Lcom/google/android/gms/ads/internal/gmsg/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "Lcom/google/android/gms/internal/ads/bbn;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ajv;Lcom/google/android/gms/internal/ads/baq;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/akn;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/akn;-><init>(Lcom/google/android/gms/internal/ads/aki;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aki;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    new-instance v0, Lcom/google/android/gms/internal/ads/ako;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ako;-><init>(Lcom/google/android/gms/internal/ads/aki;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aki;->g:Lcom/google/android/gms/ads/internal/gmsg/ae;

    new-instance v0, Lcom/google/android/gms/internal/ads/akp;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/akp;-><init>(Lcom/google/android/gms/internal/ads/aki;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aki;->h:Lcom/google/android/gms/ads/internal/gmsg/ae;

    new-instance v0, Lcom/google/android/gms/internal/ads/akq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/akq;-><init>(Lcom/google/android/gms/internal/ads/aki;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aki;->i:Lcom/google/android/gms/ads/internal/gmsg/ae;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aki;->a:Lcom/google/android/gms/internal/ads/ajv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/aki;->b:Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/ads/internal/gmsg/c;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/aki;->b:Landroid/content/Context;

    invoke-direct {p1, p3}, Lcom/google/android/gms/ads/internal/gmsg/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aki;->c:Lcom/google/android/gms/ads/internal/gmsg/c;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/baq;->b(Lcom/google/android/gms/internal/ads/ahi;)Lcom/google/android/gms/internal/ads/bbd;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aki;->d:Lcom/google/android/gms/internal/ads/bbd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/aki;->d:Lcom/google/android/gms/internal/ads/bbd;

    new-instance p2, Lcom/google/android/gms/internal/ads/akj;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/akj;-><init>(Lcom/google/android/gms/internal/ads/aki;)V

    new-instance p3, Lcom/google/android/gms/internal/ads/akk;

    invoke-direct {p3, p0}, Lcom/google/android/gms/internal/ads/akk;-><init>(Lcom/google/android/gms/internal/ads/aki;)V

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/of;->a(Lcom/google/android/gms/internal/ads/oe;Lcom/google/android/gms/internal/ads/oc;)V

    const-string p1, "Core JS tracking ad unit: "

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aki;->a:Lcom/google/android/gms/internal/ads/ajv;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ajv;->a:Lcom/google/android/gms/internal/ads/ajt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ajt;->d()Ljava/lang/String;

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
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/jn;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aki;)Lcom/google/android/gms/internal/ads/ajv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aki;->a:Lcom/google/android/gms/internal/ads/ajv;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/aki;Z)Z
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/aki;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/aki;)Lcom/google/android/gms/ads/internal/gmsg/c;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aki;->c:Lcom/google/android/gms/ads/internal/gmsg/c;

    return-object p0
.end method


# virtual methods
.method final a(Lcom/google/android/gms/internal/ads/bbn;)V
    .locals 2

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aki;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bbn;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aki;->g:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bbn;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aki;->h:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bbn;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aki;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ii;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aki;->i:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bbn;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    :cond_0
    return-void
.end method

.method public final a(Lorg/json/JSONObject;Z)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/aki;->d:Lcom/google/android/gms/internal/ads/bbd;

    new-instance v0, Lcom/google/android/gms/internal/ads/akl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/akl;-><init>(Lcom/google/android/gms/internal/ads/aki;Lorg/json/JSONObject;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/od;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/od;-><init>()V

    invoke-virtual {p2, v0, p1}, Lcom/google/android/gms/internal/ads/of;->a(Lcom/google/android/gms/internal/ads/oe;Lcom/google/android/gms/internal/ads/oc;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/aki;->e:Z

    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aki;->d:Lcom/google/android/gms/internal/ads/bbd;

    new-instance v1, Lcom/google/android/gms/internal/ads/akm;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/akm;-><init>(Lcom/google/android/gms/internal/ads/aki;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/od;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/od;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/of;->a(Lcom/google/android/gms/internal/ads/oe;Lcom/google/android/gms/internal/ads/oc;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aki;->d:Lcom/google/android/gms/internal/ads/bbd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/bbd;->c()V

    return-void
.end method

.method final b(Lcom/google/android/gms/internal/ads/bbn;)V
    .locals 2

    const-string v0, "/visibilityChanged"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aki;->h:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bbn;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v0, "/untrackActiveViewUnit"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aki;->g:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bbn;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v0, "/updateActiveView"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aki;->f:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bbn;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    invoke-static {}, Lcom/google/android/gms/ads/internal/ax;->B()Lcom/google/android/gms/internal/ads/ii;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aki;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ii;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/logScionEvent"

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/aki;->i:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bbn;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    :cond_0
    return-void
.end method
