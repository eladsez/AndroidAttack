.class public final Lcom/google/android/gms/internal/ads/aph;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/cm;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/internal/ads/aph;


# instance fields
.field private final c:Lcom/google/android/gms/internal/ads/mi;

.field private final d:Lcom/google/android/gms/internal/ads/aoy;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/ads/asn;

.field private final g:Lcom/google/android/gms/internal/ads/aso;

.field private final h:Lcom/google/android/gms/internal/ads/asp;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/aph;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/aph;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aph;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/aph;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/ads/aph;->b:Lcom/google/android/gms/internal/ads/aph;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/mi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/mi;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aph;->c:Lcom/google/android/gms/internal/ads/mi;

    new-instance v0, Lcom/google/android/gms/internal/ads/aoy;

    new-instance v2, Lcom/google/android/gms/internal/ads/aoo;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/aoo;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/aon;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/aon;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/ads/arm;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/arm;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/ads/axf;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/axf;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/ads/gr;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/gr;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/ads/q;

    invoke-direct {v7}, Lcom/google/android/gms/internal/ads/q;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/ads/axg;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/axg;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/aoy;-><init>(Lcom/google/android/gms/internal/ads/aoo;Lcom/google/android/gms/internal/ads/aon;Lcom/google/android/gms/internal/ads/arm;Lcom/google/android/gms/internal/ads/axf;Lcom/google/android/gms/internal/ads/gr;Lcom/google/android/gms/internal/ads/q;Lcom/google/android/gms/internal/ads/axg;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aph;->d:Lcom/google/android/gms/internal/ads/aoy;

    invoke-static {}, Lcom/google/android/gms/internal/ads/mi;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aph;->e:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/ads/asn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/asn;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aph;->f:Lcom/google/android/gms/internal/ads/asn;

    new-instance v0, Lcom/google/android/gms/internal/ads/aso;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/aso;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aph;->g:Lcom/google/android/gms/internal/ads/aso;

    new-instance v0, Lcom/google/android/gms/internal/ads/asp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/asp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/aph;->h:Lcom/google/android/gms/internal/ads/asp;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/mi;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->g()Lcom/google/android/gms/internal/ads/aph;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aph;->c:Lcom/google/android/gms/internal/ads/mi;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/aoy;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->g()Lcom/google/android/gms/internal/ads/aph;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aph;->d:Lcom/google/android/gms/internal/ads/aoy;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->g()Lcom/google/android/gms/internal/ads/aph;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aph;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/ads/aso;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->g()Lcom/google/android/gms/internal/ads/aph;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aph;->g:Lcom/google/android/gms/internal/ads/aso;

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/internal/ads/asn;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->g()Lcom/google/android/gms/internal/ads/aph;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aph;->f:Lcom/google/android/gms/internal/ads/asn;

    return-object v0
.end method

.method public static f()Lcom/google/android/gms/internal/ads/asp;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/aph;->g()Lcom/google/android/gms/internal/ads/aph;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/aph;->h:Lcom/google/android/gms/internal/ads/asp;

    return-object v0
.end method

.method private static g()Lcom/google/android/gms/internal/ads/aph;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/aph;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/aph;->b:Lcom/google/android/gms/internal/ads/aph;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
