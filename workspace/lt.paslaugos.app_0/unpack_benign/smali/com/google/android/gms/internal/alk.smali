.class public Lcom/google/android/gms/internal/alk;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lcom/google/android/gms/internal/akq;


# instance fields
.field private b:Lcom/google/android/gms/internal/aka;

.field private volatile c:Lcom/google/android/gms/internal/alx;

.field private volatile d:Lcom/google/android/gms/internal/aka;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/akq;->a()Lcom/google/android/gms/internal/akq;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/alk;->a:Lcom/google/android/gms/internal/akq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    if-eqz v0, :cond_0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    sget-object v0, Lcom/google/android/gms/internal/aka;->a:Lcom/google/android/gms/internal/aka;

    iput-object v0, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ale; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    iput-object p1, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    sget-object p1, Lcom/google/android/gms/internal/aka;->a:Lcom/google/android/gms/internal/aka;

    iput-object p1, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    return-object p1
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/alk;->b:Lcom/google/android/gms/internal/aka;

    iput-object v1, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;

    iput-object p1, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    return-object v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aka;->a()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/alx;->d()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lcom/google/android/gms/internal/aka;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;

    monitor-exit p0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    if-nez v0, :cond_2

    sget-object v0, Lcom/google/android/gms/internal/aka;->a:Lcom/google/android/gms/internal/aka;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    invoke-interface {v0}, Lcom/google/android/gms/internal/alx;->j()Lcom/google/android/gms/internal/aka;

    move-result-object v0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->d:Lcom/google/android/gms/internal/aka;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/alk;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/alk;

    iget-object v0, p0, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    iget-object v1, p1, Lcom/google/android/gms/internal/alk;->c:Lcom/google/android/gms/internal/alx;

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/alk;->c()Lcom/google/android/gms/internal/aka;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/alk;->c()Lcom/google/android/gms/internal/aka;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/aka;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/google/android/gms/internal/alx;->n()Lcom/google/android/gms/internal/alx;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/google/android/gms/internal/alk;->b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/alx;->n()Lcom/google/android/gms/internal/alx;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/alk;->b(Lcom/google/android/gms/internal/alx;)Lcom/google/android/gms/internal/alx;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
