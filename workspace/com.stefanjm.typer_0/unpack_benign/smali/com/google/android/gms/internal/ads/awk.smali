.class public abstract Lcom/google/android/gms/internal/ads/awk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/ads/awk<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/eg$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private final d:I

.field private final e:Ljava/lang/Object;

.field private f:Lcom/google/android/gms/internal/ads/bdn;

.field private g:Ljava/lang/Integer;

.field private h:Lcom/google/android/gms/internal/ads/bak;

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/google/android/gms/internal/ads/ac;

.field private n:Lcom/google/android/gms/internal/ads/agz;

.field private o:Lcom/google/android/gms/internal/ads/ayi;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/bdn;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/google/android/gms/internal/ads/eg$a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/eg$a;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eg$a;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->a:Lcom/google/android/gms/internal/ads/eg$a;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->e:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/awk;->i:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/awk;->j:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/awk;->k:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/awk;->l:Z

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/awk;->n:Lcom/google/android/gms/internal/ads/agz;

    iput p1, p0, Lcom/google/android/gms/internal/ads/awk;->b:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/awk;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/awk;->f:Lcom/google/android/gms/internal/ads/bdn;

    new-instance p1, Lcom/google/android/gms/internal/ads/ame;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ame;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awk;->m:Lcom/google/android/gms/internal/ads/ac;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/awk;->d:I

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/awk;)Lcom/google/android/gms/internal/ads/eg$a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/awk;->a:Lcom/google/android/gms/internal/ads/eg$a;

    return-object p0
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/ads/awk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/android/gms/internal/ads/awk<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awk;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/agz;)Lcom/google/android/gms/internal/ads/awk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/agz;",
            ")",
            "Lcom/google/android/gms/internal/ads/awk<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awk;->n:Lcom/google/android/gms/internal/ads/agz;

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/bak;)Lcom/google/android/gms/internal/ads/awk;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bak;",
            ")",
            "Lcom/google/android/gms/internal/ads/awk<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awk;->h:Lcom/google/android/gms/internal/ads/bak;

    return-object p0
.end method

.method protected abstract a(Lcom/google/android/gms/internal/ads/aui;)Lcom/google/android/gms/internal/ads/bcm;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/aui;",
            ")",
            "Lcom/google/android/gms/internal/ads/bcm<",
            "TT;>;"
        }
    .end annotation
.end method

.method final a(Lcom/google/android/gms/internal/ads/ayi;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/awk;->o:Lcom/google/android/gms/internal/ads/ayi;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final a(Lcom/google/android/gms/internal/ads/bcm;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bcm<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awk;->o:Lcom/google/android/gms/internal/ads/ayi;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ayi;->a(Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/bcm;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/internal/ads/df;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awk;->f:Lcom/google/android/gms/internal/ads/bdn;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/bdn;->a(Lcom/google/android/gms/internal/ads/df;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract a(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public a()[B
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/google/android/gms/internal/ads/eg$a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->a:Lcom/google/android/gms/internal/ads/eg$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/eg$a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/awk;->b:I

    return v0
.end method

.method final c(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->h:Lcom/google/android/gms/internal/ads/bak;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->h:Lcom/google/android/gms/internal/ads/bak;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/bak;->b(Lcom/google/android/gms/internal/ads/awk;)V

    :cond_0
    sget-boolean v0, Lcom/google/android/gms/internal/ads/eg$a;->a:Z

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/axk;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/axk;-><init>(Lcom/google/android/gms/internal/ads/awk;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/awk;->a:Lcom/google/android/gms/internal/ads/eg$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/google/android/gms/internal/ads/eg$a;->a(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/awk;->a:Lcom/google/android/gms/internal/ads/eg$a;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/awk;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/eg$a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/awk;

    sget-object v0, Lcom/google/android/gms/internal/ads/azj;->a:Lcom/google/android/gms/internal/ads/azj;

    sget-object v1, Lcom/google/android/gms/internal/ads/azj;->a:Lcom/google/android/gms/internal/ads/azj;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/awk;->g:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/azj;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/azj;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/awk;->d:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Lcom/google/android/gms/internal/ads/agz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->n:Lcom/google/android/gms/internal/ads/agz;

    return-object v0
.end method

.method public final g()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/awk;->i:Z

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->m:Lcom/google/android/gms/internal/ads/ac;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ac;->a()I

    move-result v0

    return v0
.end method

.method public final j()Lcom/google/android/gms/internal/ads/ac;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->m:Lcom/google/android/gms/internal/ads/ac;

    return-object v0
.end method

.method public final k()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->e:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/awk;->k:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final l()Z
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/awk;->k:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final m()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/awk;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/awk;->o:Lcom/google/android/gms/internal/ads/ayi;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/ayi;->a(Lcom/google/android/gms/internal/ads/awk;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    const-string v0, "0x"

    iget v1, p0, Lcom/google/android/gms/internal/ads/awk;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

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
    const-string v1, "[ ] "

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/awk;->c:Ljava/lang/String;

    sget-object v3, Lcom/google/android/gms/internal/ads/azj;->a:Lcom/google/android/gms/internal/ads/azj;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/awk;->g:Ljava/lang/Integer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
