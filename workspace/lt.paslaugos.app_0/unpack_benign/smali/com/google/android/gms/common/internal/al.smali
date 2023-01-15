.class public abstract Lcom/google/android/gms/common/internal/al;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static A:[Ljava/lang/String;


# instance fields
.field final a:Landroid/os/Handler;

.field protected b:Lcom/google/android/gms/common/internal/ar;

.field protected c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:I

.field private e:J

.field private f:J

.field private g:I

.field private h:J

.field private i:Lcom/google/android/gms/common/internal/k;

.field private final j:Landroid/content/Context;

.field private final k:Landroid/os/Looper;

.field private final l:Lcom/google/android/gms/common/internal/f;

.field private final m:Lcom/google/android/gms/common/l;

.field private final n:Ljava/lang/Object;

.field private final o:Ljava/lang/Object;

.field private p:Lcom/google/android/gms/common/internal/u;

.field private q:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final r:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/common/internal/aq<",
            "*>;>;"
        }
    .end annotation
.end field

.field private s:Lcom/google/android/gms/common/internal/at;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/internal/at;"
        }
    .end annotation
.end field

.field private t:I

.field private final u:Lcom/google/android/gms/common/internal/an;

.field private final v:Lcom/google/android/gms/common/internal/ao;

.field private final w:I

.field private final x:Ljava/lang/String;

.field private y:Lcom/google/android/gms/common/a;

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "service_esmobile"

    const-string v1, "service_googleme"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/internal/al;->A:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/an;Lcom/google/android/gms/common/internal/ao;Ljava/lang/String;)V
    .locals 9

    invoke-static {p1}, Lcom/google/android/gms/common/internal/f;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/f;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gms/common/l;->b()Lcom/google/android/gms/common/l;

    move-result-object v4

    invoke-static {p4}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v6, p4

    check-cast v6, Lcom/google/android/gms/common/internal/an;

    invoke-static {p5}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    move-object v7, p4

    check-cast v7, Lcom/google/android/gms/common/internal/ao;

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/google/android/gms/common/internal/al;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/l;ILcom/google/android/gms/common/internal/an;Lcom/google/android/gms/common/internal/ao;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/l;ILcom/google/android/gms/common/internal/an;Lcom/google/android/gms/common/internal/ao;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/al;->n:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/al;->o:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/internal/al;->r:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/internal/al;->t:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/internal/al;->y:Lcom/google/android/gms/common/a;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/al;->z:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/gms/common/internal/al;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v0, "Context must not be null"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->j:Landroid/content/Context;

    const-string p1, "Looper must not be null"

    invoke-static {p2, p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Looper;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->k:Landroid/os/Looper;

    const-string p1, "Supervisor must not be null"

    invoke-static {p3, p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/f;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->l:Lcom/google/android/gms/common/internal/f;

    const-string p1, "API availability must not be null"

    invoke-static {p4, p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/l;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->m:Lcom/google/android/gms/common/l;

    new-instance p1, Lcom/google/android/gms/common/internal/ap;

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/ap;-><init>(Lcom/google/android/gms/common/internal/al;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    iput p5, p0, Lcom/google/android/gms/common/internal/al;->w:I

    iput-object p6, p0, Lcom/google/android/gms/common/internal/al;->u:Lcom/google/android/gms/common/internal/an;

    iput-object p7, p0, Lcom/google/android/gms/common/internal/al;->v:Lcom/google/android/gms/common/internal/ao;

    iput-object p8, p0, Lcom/google/android/gms/common/internal/al;->x:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/al;Lcom/google/android/gms/common/a;)Lcom/google/android/gms/common/a;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->y:Lcom/google/android/gms/common/a;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/al;Lcom/google/android/gms/common/internal/u;)Lcom/google/android/gms/common/internal/u;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->p:Lcom/google/android/gms/common/internal/u;

    return-object p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/al;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/al;->o:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/al;I)V
    .locals 0

    const/16 p1, 0x10

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/internal/al;->c(I)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/al;ILandroid/os/IInterface;)V
    .locals 0

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/internal/al;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method private final a(IILandroid/os/IInterface;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/al;->t:I

    if-eq v1, p1, :cond_0

    const/4 p1, 0x0

    monitor-exit v0

    return p1

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/common/internal/al;->b(ILandroid/os/IInterface;)V

    const/4 p1, 0x1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/google/android/gms/common/internal/al;IILandroid/os/IInterface;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/al;->a(IILandroid/os/IInterface;)Z

    move-result p0

    return p0
.end method

.method private final b(ILandroid/os/IInterface;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-ne v2, v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Lcom/google/android/gms/common/internal/ad;->b(Z)V

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/google/android/gms/common/internal/al;->t:I

    iput-object p2, p0, Lcom/google/android/gms/common/internal/al;->q:Landroid/os/IInterface;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/common/internal/al;->a(ILandroid/os/IInterface;)V

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    invoke-virtual {p0, p2}, Lcom/google/android/gms/common/internal/al;->a(Landroid/os/IInterface;)V

    goto/16 :goto_3

    :pswitch_1
    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->s:Lcom/google/android/gms/common/internal/at;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    if-eqz p1, :cond_3

    const-string p1, "GmsClient"

    iget-object p2, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/k;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v3, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/k;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x46

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Calling connect() while still connected, missing disconnect() for "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/google/android/gms/common/internal/al;->l:Lcom/google/android/gms/common/internal/f;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/k;->a()Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/k;->b()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p1}, Lcom/google/android/gms/common/internal/k;->c()I

    move-result v6

    iget-object v7, p0, Lcom/google/android/gms/common/internal/al;->s:Lcom/google/android/gms/common/internal/at;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/al;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/common/internal/f;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_3
    new-instance p1, Lcom/google/android/gms/common/internal/at;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/al;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-direct {p1, p0, p2}, Lcom/google/android/gms/common/internal/at;-><init>(Lcom/google/android/gms/common/internal/al;I)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->s:Lcom/google/android/gms/common/internal/at;

    new-instance p1, Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->n()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->k()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x81

    invoke-direct {p1, p2, v3, v1, v4}, Lcom/google/android/gms/common/internal/k;-><init>(Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->l:Lcom/google/android/gms/common/internal/f;

    iget-object p2, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/k;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/k;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/k;->c()I

    move-result v3

    iget-object v4, p0, Lcom/google/android/gms/common/internal/al;->s:Lcom/google/android/gms/common/internal/at;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/al;->m()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/common/internal/g;

    invoke-direct {v6, p2, v1, v3}, Lcom/google/android/gms/common/internal/g;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {p1, v6, v4, v5}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/g;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "GmsClient"

    iget-object p2, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {p2}, Lcom/google/android/gms/common/internal/k;->a()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v1}, Lcom/google/android/gms/common/internal/k;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x22

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unable to connect to service: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " on "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    iget-object p2, p0, Lcom/google/android/gms/common/internal/al;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/google/android/gms/common/internal/al;->a(ILandroid/os/Bundle;I)V

    goto :goto_3

    :pswitch_2
    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->s:Lcom/google/android/gms/common/internal/at;

    if-eqz p1, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/common/internal/al;->l:Lcom/google/android/gms/common/internal/f;

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->n()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x81

    iget-object v7, p0, Lcom/google/android/gms/common/internal/al;->s:Lcom/google/android/gms/common/internal/at;

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/al;->m()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gms/common/internal/f;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/content/ServiceConnection;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/common/internal/al;->s:Lcom/google/android/gms/common/internal/at;

    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lcom/google/android/gms/common/internal/al;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/al;->w()Z

    move-result p0

    return p0
.end method

.method private final c(I)V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/al;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/internal/al;->z:Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/al;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/16 v3, 0x10

    invoke-virtual {v1, p1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic c(Lcom/google/android/gms/common/internal/al;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/common/internal/al;->z:Z

    return p0
.end method

.method static synthetic d(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/al;->y:Lcom/google/android/gms/common/a;

    return-object p0
.end method

.method static synthetic e(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/internal/an;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/al;->u:Lcom/google/android/gms/common/internal/an;

    return-object p0
.end method

.method static synthetic f(Lcom/google/android/gms/common/internal/al;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/al;->r:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Lcom/google/android/gms/common/internal/al;)Lcom/google/android/gms/common/internal/ao;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/internal/al;->v:Lcom/google/android/gms/common/internal/ao;

    return-object p0
.end method

.method private final m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->x:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->j:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->x:Ljava/lang/String;

    return-object v0
.end method

.method private final v()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/al;->t:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private final w()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/common/internal/al;->z:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    return v1
.end method


# virtual methods
.method protected abstract a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            ")TT;"
        }
    .end annotation
.end method

.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->r:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/android/gms/common/internal/al;->r:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/common/internal/aq;

    invoke-virtual {v3}, Lcom/google/android/gms/common/internal/aq;->e()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->r:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->o:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/google/android/gms/common/internal/al;->p:Lcom/google/android/gms/common/internal/u;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/common/internal/al;->b(ILandroid/os/IInterface;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method protected a(I)V
    .locals 2

    iput p1, p0, Lcom/google/android/gms/common/internal/al;->d:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/al;->e:J

    return-void
.end method

.method protected final a(ILandroid/os/Bundle;I)V
    .locals 3

    iget-object p2, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/gms/common/internal/aw;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/google/android/gms/common/internal/aw;-><init>(Lcom/google/android/gms/common/internal/al;ILandroid/os/Bundle;)V

    const/4 p1, 0x7

    const/4 v2, -0x1

    invoke-virtual {v0, p1, p3, v2, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    new-instance v2, Lcom/google/android/gms/common/internal/av;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/google/android/gms/common/internal/av;-><init>(Lcom/google/android/gms/common/internal/al;ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 p2, -0x1

    invoke-virtual {v1, p1, p4, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method a(ILandroid/os/IInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    return-void
.end method

.method protected a(Landroid/os/IInterface;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/al;->f:J

    return-void
.end method

.method protected a(Lcom/google/android/gms/common/a;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/android/gms/common/a;->c()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/common/internal/al;->g:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/common/internal/al;->h:J

    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/ar;)V
    .locals 1

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ar;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->b:Lcom/google/android/gms/common/internal/ar;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/common/internal/al;->b(ILandroid/os/IInterface;)V

    return-void
.end method

.method protected final a(Lcom/google/android/gms/common/internal/ar;ILandroid/app/PendingIntent;)V
    .locals 3

    const-string v0, "Connection progress callbacks cannot be null."

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/internal/ar;

    iput-object p1, p0, Lcom/google/android/gms/common/internal/al;->b:Lcom/google/android/gms/common/internal/ar;

    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public a(Lcom/google/android/gms/common/internal/ax;)V
    .locals 0

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/ax;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/common/internal/l;Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/internal/l;",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->q()Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/common/internal/bg;

    iget v2, p0, Lcom/google/android/gms/common/internal/al;->w:I

    invoke-direct {v1, v2}, Lcom/google/android/gms/common/internal/bg;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/internal/al;->j:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/common/internal/bg;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/google/android/gms/common/internal/bg;->d:Landroid/os/Bundle;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/common/api/Scope;

    invoke-interface {p2, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/google/android/gms/common/api/Scope;

    iput-object p2, v1, Lcom/google/android/gms/common/internal/bg;->c:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->d()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->q_()Landroid/accounts/Account;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->q_()Landroid/accounts/Account;

    move-result-object p2

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/accounts/Account;

    const-string v0, "<<default account>>"

    const-string v2, "com.google"

    invoke-direct {p2, v0, v2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput-object p2, v1, Lcom/google/android/gms/common/internal/bg;->e:Landroid/accounts/Account;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Lcom/google/android/gms/common/internal/l;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/bg;->b:Landroid/os/IBinder;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->u()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->q_()Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/bg;->e:Landroid/accounts/Account;

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->j()[Lcom/google/android/gms/common/j;

    move-result-object p1

    iput-object p1, v1, Lcom/google/android/gms/common/internal/bg;->f:[Lcom/google/android/gms/common/j;

    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/al;->o:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p2, p0, Lcom/google/android/gms/common/internal/al;->p:Lcom/google/android/gms/common/internal/u;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/common/internal/al;->p:Lcom/google/android/gms/common/internal/u;

    new-instance v0, Lcom/google/android/gms/common/internal/as;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/al;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-direct {v0, p0, v2}, Lcom/google/android/gms/common/internal/as;-><init>(Lcom/google/android/gms/common/internal/al;I)V

    invoke-interface {p2, v0, v1}, Lcom/google/android/gms/common/internal/u;->a(Lcom/google/android/gms/common/internal/s;Lcom/google/android/gms/common/internal/bg;)V

    goto :goto_2

    :cond_4
    const-string p2, "GmsClient"

    const-string v0, "mServiceBroker is null, client disconnected"

    invoke-static {p2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p1, 0x8

    iget-object p2, p0, Lcom/google/android/gms/common/internal/al;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, p2}, Lcom/google/android/gms/common/internal/al;->a(ILandroid/os/IBinder;Landroid/os/Bundle;I)V

    return-void

    :catch_1
    move-exception p1

    throw p1

    :catch_2
    move-exception p1

    const-string p2, "GmsClient"

    const-string v0, "IGmsServiceBroker.getService failed"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/internal/al;->b(I)V

    return-void
.end method

.method public final b(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->a:Landroid/os/Handler;

    iget-object v2, p0, Lcom/google/android/gms/common/internal/al;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v1, v3, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/al;->t:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
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
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/al;->t:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/google/android/gms/common/internal/al;->t:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final f()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->i:Lcom/google/android/gms/common/internal/k;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/k;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to connect when checking package"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected i()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/common/api/Scope;",
            ">;"
        }
    .end annotation

    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    return-object v0
.end method

.method public j()[Lcom/google/android/gms/common/j;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/gms/common/j;

    return-object v0
.end method

.method protected abstract k()Ljava/lang/String;
.end method

.method protected abstract l()Ljava/lang/String;
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms"

    return-object v0
.end method

.method public final o()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->m:Lcom/google/android/gms/common/l;

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->j:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/l;->a(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/common/internal/al;->b(ILandroid/os/IInterface;)V

    new-instance v1, Lcom/google/android/gms/common/internal/au;

    invoke-direct {v1, p0}, Lcom/google/android/gms/common/internal/au;-><init>(Lcom/google/android/gms/common/internal/al;)V

    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/ar;ILandroid/app/PendingIntent;)V

    return-void

    :cond_0
    new-instance v0, Lcom/google/android/gms/common/internal/au;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/au;-><init>(Lcom/google/android/gms/common/internal/al;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/internal/al;->a(Lcom/google/android/gms/common/internal/ar;)V

    return-void
.end method

.method public final p()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->j:Landroid/content/Context;

    return-object v0
.end method

.method protected q()Landroid/os/Bundle;
    .locals 1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public q_()Landroid/accounts/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final r()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected. Call connect() and wait for onConnected() to be called."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public s()Landroid/os/Bundle;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final t()Landroid/os/IInterface;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/internal/al;->n:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/common/internal/al;->t:I

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/al;->r()V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->q:Landroid/os/IInterface;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Client is connected but service is null"

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/ad;->a(ZLjava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/internal/al;->q:Landroid/os/IInterface;

    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public u()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
