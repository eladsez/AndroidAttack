.class final Lcom/google/android/gms/internal/ads/auo;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ads/qo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/auo;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/auo;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/auo;->b:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/auo;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/auo;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/auo;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/auo;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/bq;)V
    .locals 3

    const-string v0, "/loadHtml"

    new-instance v1, Lcom/google/android/gms/internal/ads/aup;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/aup;-><init>(Lcom/google/android/gms/internal/ads/auo;Lcom/google/android/gms/internal/ads/bq;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bq;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v0, "/showOverlay"

    new-instance v1, Lcom/google/android/gms/internal/ads/aur;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/aur;-><init>(Lcom/google/android/gms/internal/ads/auo;Lcom/google/android/gms/internal/ads/bq;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bq;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    const-string v0, "/hideOverlay"

    new-instance v1, Lcom/google/android/gms/internal/ads/aus;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/aus;-><init>(Lcom/google/android/gms/internal/ads/auo;Lcom/google/android/gms/internal/ads/bq;)V

    invoke-interface {p1, v0, v1}, Lcom/google/android/gms/internal/ads/bq;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/auo;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/qo;

    if-eqz v0, :cond_0

    const-string v1, "/sendMessageToSdk"

    new-instance v2, Lcom/google/android/gms/internal/ads/aut;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/aut;-><init>(Lcom/google/android/gms/internal/ads/auo;Lcom/google/android/gms/internal/ads/bq;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qo;->a(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/ae;)V

    :cond_0
    return-void
.end method
