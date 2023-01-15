.class public final Lcom/google/android/gms/internal/awn;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/bfv;

.field private final b:Lcom/google/android/gms/internal/aug;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lcom/google/android/gms/ads/i;

.field private e:Lcom/google/android/gms/internal/auu;

.field private f:Lcom/google/android/gms/internal/aty;

.field private g:Lcom/google/android/gms/ads/a;

.field private h:[Lcom/google/android/gms/ads/d;

.field private i:Lcom/google/android/gms/ads/a/a;

.field private j:Lcom/google/android/gms/ads/g;

.field private k:Lcom/google/android/gms/internal/avj;

.field private l:Lcom/google/android/gms/ads/a/c;

.field private m:Lcom/google/android/gms/ads/j;

.field private n:Ljava/lang/String;

.field private o:Landroid/view/ViewGroup;

.field private p:I

.field private q:Z


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 6

    sget-object v4, Lcom/google/android/gms/internal/aug;->a:Lcom/google/android/gms/internal/aug;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/awn;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/aug;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/aug;I)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/awn;-><init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/aug;Lcom/google/android/gms/internal/avj;I)V

    return-void
.end method

.method private constructor <init>(Landroid/view/ViewGroup;Landroid/util/AttributeSet;ZLcom/google/android/gms/internal/aug;Lcom/google/android/gms/internal/avj;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Lcom/google/android/gms/internal/bfv;

    invoke-direct {p5}, Lcom/google/android/gms/internal/bfv;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/awn;->a:Lcom/google/android/gms/internal/bfv;

    new-instance p5, Lcom/google/android/gms/ads/i;

    invoke-direct {p5}, Lcom/google/android/gms/ads/i;-><init>()V

    iput-object p5, p0, Lcom/google/android/gms/internal/awn;->d:Lcom/google/android/gms/ads/i;

    new-instance p5, Lcom/google/android/gms/internal/awo;

    invoke-direct {p5, p0}, Lcom/google/android/gms/internal/awo;-><init>(Lcom/google/android/gms/internal/awn;)V

    iput-object p5, p0, Lcom/google/android/gms/internal/awn;->e:Lcom/google/android/gms/internal/auu;

    iput-object p1, p0, Lcom/google/android/gms/internal/awn;->o:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/google/android/gms/internal/awn;->b:Lcom/google/android/gms/internal/aug;

    const/4 p4, 0x0

    iput-object p4, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p5, 0x0

    invoke-direct {p4, p5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/google/android/gms/internal/awn;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput p6, p0, Lcom/google/android/gms/internal/awn;->p:I

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p4

    :try_start_0
    new-instance p6, Lcom/google/android/gms/internal/auk;

    invoke-direct {p6, p4, p2}, Lcom/google/android/gms/internal/auk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p6, p3}, Lcom/google/android/gms/internal/auk;->a(Z)[Lcom/google/android/gms/ads/d;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/awn;->h:[Lcom/google/android/gms/ads/d;

    invoke-virtual {p6}, Lcom/google/android/gms/internal/auk;->a()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/gms/internal/awn;->n:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/awn;->h:[Lcom/google/android/gms/ads/d;

    aget-object p3, p3, p5

    iget p5, p0, Lcom/google/android/gms/internal/awn;->p:I

    new-instance p6, Lcom/google/android/gms/internal/auh;

    invoke-direct {p6, p4, p3}, Lcom/google/android/gms/internal/auh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-static {p5}, Lcom/google/android/gms/internal/awn;->a(I)Z

    move-result p3

    iput-boolean p3, p6, Lcom/google/android/gms/internal/auh;->j:Z

    const-string p3, "Ads by Google"

    invoke-virtual {p2, p1, p6, p3}, Lcom/google/android/gms/internal/jz;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/auh;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {}, Lcom/google/android/gms/internal/aus;->a()Lcom/google/android/gms/internal/jz;

    move-result-object p3

    new-instance p5, Lcom/google/android/gms/internal/auh;

    sget-object p6, Lcom/google/android/gms/ads/d;->a:Lcom/google/android/gms/ads/d;

    invoke-direct {p5, p4, p6}, Lcom/google/android/gms/internal/auh;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/d;)V

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p5, p4, p2}, Lcom/google/android/gms/internal/jz;->a(Landroid/view/ViewGroup;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/awn;)Lcom/google/android/gms/ads/i;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/awn;->d:Lcom/google/android/gms/ads/i;

    return-object p0
.end method

.method private static a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/auh;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/auh;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/auh;-><init>(Landroid/content/Context;[Lcom/google/android/gms/ads/d;)V

    invoke-static {p2}, Lcom/google/android/gms/internal/awn;->a(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/google/android/gms/internal/auh;->j:Z

    return-object v0
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/avj;->j()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to destroy AdView."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/a/a;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/awn;->i:Lcom/google/android/gms/ads/a/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/auj;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/auj;-><init>(Lcom/google/android/gms/ads/a/a;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/avo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the AppEventListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/a/c;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/awn;->l:Lcom/google/android/gms/ads/a/c;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ayq;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ayq;-><init>(Lcom/google/android/gms/ads/a/c;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/ayn;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the onCustomRenderedAdLoadedListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/a;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/awn;->g:Lcom/google/android/gms/ads/a;

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->e:Lcom/google/android/gms/internal/auu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/auu;->a(Lcom/google/android/gms/ads/a;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/g;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/awn;->j:Lcom/google/android/gms/ads/g;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->j:Lcom/google/android/gms/ads/g;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->j:Lcom/google/android/gms/ads/g;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/g;->a()Lcom/google/android/gms/internal/aut;

    move-result-object v0

    :goto_0
    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/avv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set correlator."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/ads/j;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/awn;->m:Lcom/google/android/gms/ads/j;

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/axc;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/axc;-><init>(Lcom/google/android/gms/ads/j;)V

    move-object p1, v1

    :goto_0
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/axc;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set video options."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/aty;)V
    .locals 2

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/awn;->f:Lcom/google/android/gms/internal/aty;

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz p1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/atz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/atz;-><init>(Lcom/google/android/gms/internal/aty;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/auv;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the AdClickListener."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/awl;)V
    .locals 9

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->h:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->n:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_9

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/awn;->h:[Lcom/google/android/gms/ads/d;

    iget v2, p0, Lcom/google/android/gms/internal/awn;->p:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/awn;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/auh;

    move-result-object v4

    const-string v1, "search_v2"

    iget-object v2, v4, Lcom/google/android/gms/internal/auh;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/google/android/gms/internal/aus;->b()Lcom/google/android/gms/internal/aul;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/awn;->n:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/aun;

    invoke-direct {v3, v1, v0, v4, v2}, Lcom/google/android/gms/internal/aun;-><init>(Lcom/google/android/gms/internal/aul;Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;)V

    invoke-static {v0, v7, v3}, Lcom/google/android/gms/internal/aul;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/aul$a;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/google/android/gms/internal/avj;

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/aus;->b()Lcom/google/android/gms/internal/aul;

    move-result-object v2

    iget-object v5, p0, Lcom/google/android/gms/internal/awn;->n:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/gms/internal/awn;->a:Lcom/google/android/gms/internal/bfv;

    new-instance v8, Lcom/google/android/gms/internal/aum;

    move-object v1, v8

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/gms/internal/aum;-><init>(Lcom/google/android/gms/internal/aul;Landroid/content/Context;Lcom/google/android/gms/internal/auh;Ljava/lang/String;Lcom/google/android/gms/internal/bfw;)V

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/aul;->a(Landroid/content/Context;ZLcom/google/android/gms/internal/aul$a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    new-instance v1, Lcom/google/android/gms/internal/aua;

    iget-object v2, p0, Lcom/google/android/gms/internal/awn;->e:Lcom/google/android/gms/internal/auu;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/aua;-><init>(Lcom/google/android/gms/ads/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/auy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->f:Lcom/google/android/gms/internal/aty;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    new-instance v1, Lcom/google/android/gms/internal/atz;

    iget-object v2, p0, Lcom/google/android/gms/internal/awn;->f:Lcom/google/android/gms/internal/aty;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/atz;-><init>(Lcom/google/android/gms/internal/aty;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/auv;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->i:Lcom/google/android/gms/ads/a/a;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    new-instance v1, Lcom/google/android/gms/internal/auj;

    iget-object v2, p0, Lcom/google/android/gms/internal/awn;->i:Lcom/google/android/gms/ads/a/a;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/auj;-><init>(Lcom/google/android/gms/ads/a/a;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/avo;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->l:Lcom/google/android/gms/ads/a/c;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    new-instance v1, Lcom/google/android/gms/internal/ayq;

    iget-object v2, p0, Lcom/google/android/gms/internal/awn;->l:Lcom/google/android/gms/ads/a/c;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ayq;-><init>(Lcom/google/android/gms/ads/a/c;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/ayn;)V

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->j:Lcom/google/android/gms/ads/g;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    iget-object v1, p0, Lcom/google/android/gms/internal/awn;->j:Lcom/google/android/gms/ads/g;

    invoke-virtual {v1}, Lcom/google/android/gms/ads/g;->a()Lcom/google/android/gms/internal/aut;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/avv;)V

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->m:Lcom/google/android/gms/ads/j;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    new-instance v1, Lcom/google/android/gms/internal/axc;

    iget-object v2, p0, Lcom/google/android/gms/internal/awn;->m:Lcom/google/android/gms/ads/j;

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/axc;-><init>(Lcom/google/android/gms/ads/j;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/axc;)V

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/awn;->q:Z

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/avj;->k()Lcom/google/android/gms/b/a;

    move-result-object v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/awn;->o:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/google/android/gms/b/c;->a(Lcom/google/android/gms/b/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "Failed to get an ad frame."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size and ad unit ID must be set before loadAd is called."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    iget-object v1, p0, Lcom/google/android/gms/internal/awn;->o:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/aug;->a(Landroid/content/Context;Lcom/google/android/gms/internal/awl;)Lcom/google/android/gms/internal/aud;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/avj;->b(Lcom/google/android/gms/internal/aud;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->a:Lcom/google/android/gms/internal/bfv;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/awl;->j()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/bfv;->a(Ljava/util/Map;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_b
    return-void

    :catch_1
    move-exception p1

    const-string v0, "Failed to load ad."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/awn;->n:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad unit ID can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/awn;->q:Z

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/awn;->q:Z

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/avj;->b(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to set manual impressions."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final varargs a([Lcom/google/android/gms/ads/d;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->h:[Lcom/google/android/gms/ads/d;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/awn;->b([Lcom/google/android/gms/ads/d;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The ad size can only be set once on AdView."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final b()Lcom/google/android/gms/ads/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->g:Lcom/google/android/gms/ads/a;

    return-object v0
.end method

.method public final varargs b([Lcom/google/android/gms/ads/d;)V
    .locals 3

    iput-object p1, p0, Lcom/google/android/gms/internal/awn;->h:[Lcom/google/android/gms/ads/d;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->o:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/awn;->h:[Lcom/google/android/gms/ads/d;

    iget v2, p0, Lcom/google/android/gms/internal/awn;->p:I

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/awn;->a(Landroid/content/Context;[Lcom/google/android/gms/ads/d;I)Lcom/google/android/gms/internal/auh;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/avj;->a(Lcom/google/android/gms/internal/auh;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Failed to set the ad size."

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/awn;->o:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public final c()Lcom/google/android/gms/ads/d;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/avj;->l()Lcom/google/android/gms/internal/auh;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/auh;->b()Lcom/google/android/gms/ads/d;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the current AdSize."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->h:[Lcom/google/android/gms/ads/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->h:[Lcom/google/android/gms/ads/d;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()[Lcom/google/android/gms/ads/d;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->h:[Lcom/google/android/gms/ads/d;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/avj;->C()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/awn;->n:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get ad unit id."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/ads/a/a;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->i:Lcom/google/android/gms/ads/a/a;

    return-object v0
.end method

.method public final g()Lcom/google/android/gms/ads/a/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->l:Lcom/google/android/gms/ads/a/c;

    return-object v0
.end method

.method public final h()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/avj;->o()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call pause."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final i()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/avj;->p()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Failed to call resume."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final j()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/avj;->o_()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Failed to get the mediation adapter class name."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final k()Lcom/google/android/gms/ads/i;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->d:Lcom/google/android/gms/ads/i;

    return-object v0
.end method

.method public final l()Lcom/google/android/gms/internal/awd;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->k:Lcom/google/android/gms/internal/avj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/avj;->s()Lcom/google/android/gms/internal/awd;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v2, "Failed to retrieve VideoController."

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/kj;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final m()Lcom/google/android/gms/ads/j;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/awn;->m:Lcom/google/android/gms/ads/j;

    return-object v0
.end method
