.class public final Lcom/google/android/gms/internal/ads/ake;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/akr;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ajv;

.field private final b:Lcom/google/android/gms/internal/ads/qo;

.field private final c:Lcom/google/android/gms/ads/internal/gmsg/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/android/gms/ads/internal/gmsg/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/android/gms/ads/internal/gmsg/ae;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/ads/internal/gmsg/ae<",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ajv;Lcom/google/android/gms/internal/ads/qo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/akf;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/akf;-><init>(Lcom/google/android/gms/internal/ads/ake;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->c:Lcom/google/android/gms/ads/internal/gmsg/ae;

    new-instance v0, Lcom/google/android/gms/internal/ads/akg;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/akg;-><init>(Lcom/google/android/gms/internal/ads/ake;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/ads/internal/gmsg/ae;

    new-instance v0, Lcom/google/android/gms/internal/ads/akh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/akh;-><init>(Lcom/google/android/gms/internal/ads/ake;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->e:Lcom/google/android/gms/ads/internal/gmsg/ae;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ake;->a:Lcom/google/android/gms/internal/ads/ajv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ake;->b:Lcom/google/android/gms/internal/ads/qo;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ake;->b:Lcom/google/android/gms/internal/ads/qo;

    const-string p2, "/updateActiveView"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->c:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string p2, "/untrackActiveViewUnit"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string p2, "/visibilityChanged"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->e:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {p1, p2, v0}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string p1, "Custom JS tracking ad unit: "

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ake;->a:Lcom/google/android/gms/internal/ads/ajv;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/ajv;->a:Lcom/google/android/gms/internal/ads/ajt;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ajt;->d()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

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

.method static synthetic a(Lcom/google/android/gms/internal/ads/ake;)Lcom/google/android/gms/internal/ads/ajv;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/ake;->a:Lcom/google/android/gms/internal/ads/ajv;

    return-object p0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;Z)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/ake;->b:Lcom/google/android/gms/internal/ads/qo;

    const-string v0, "AFMA_updateActiveView"

    invoke-interface {p2, v0, p1}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/ake;->a:Lcom/google/android/gms/internal/ads/ajv;

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/ajv;->b(Lcom/google/android/gms/internal/ads/akr;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ake;->b:Lcom/google/android/gms/internal/ads/qo;

    const-string v1, "/visibilityChanged"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ake;->e:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "/untrackActiveViewUnit"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ake;->d:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v1, "/updateActiveView"

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ake;->c:Lcom/google/android/gms/ads/internal/gmsg/ae;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->b(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    return-void
.end method
