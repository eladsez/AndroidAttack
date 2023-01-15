.class public final Lcom/google/android/gms/internal/aus;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ak;
.end annotation


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/google/android/gms/internal/aus;


# instance fields
.field private final c:Lcom/google/android/gms/internal/jz;

.field private final d:Lcom/google/android/gms/internal/aul;

.field private final e:Ljava/lang/String;

.field private final f:Lcom/google/android/gms/internal/axp;

.field private final g:Lcom/google/android/gms/internal/axq;

.field private final h:Lcom/google/android/gms/internal/axr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/aus;->a:Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/aus;

    invoke-direct {v0}, Lcom/google/android/gms/internal/aus;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/aus;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput-object v0, Lcom/google/android/gms/internal/aus;->b:Lcom/google/android/gms/internal/aus;

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

    new-instance v0, Lcom/google/android/gms/internal/jz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/jz;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aus;->c:Lcom/google/android/gms/internal/jz;

    new-instance v0, Lcom/google/android/gms/internal/aul;

    new-instance v2, Lcom/google/android/gms/internal/auc;

    invoke-direct {v2}, Lcom/google/android/gms/internal/auc;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/aub;

    invoke-direct {v3}, Lcom/google/android/gms/internal/aub;-><init>()V

    new-instance v4, Lcom/google/android/gms/internal/awr;

    invoke-direct {v4}, Lcom/google/android/gms/internal/awr;-><init>()V

    new-instance v5, Lcom/google/android/gms/internal/bcd;

    invoke-direct {v5}, Lcom/google/android/gms/internal/bcd;-><init>()V

    new-instance v6, Lcom/google/android/gms/internal/en;

    invoke-direct {v6}, Lcom/google/android/gms/internal/en;-><init>()V

    new-instance v7, Lcom/google/android/gms/internal/bhy;

    invoke-direct {v7}, Lcom/google/android/gms/internal/bhy;-><init>()V

    new-instance v8, Lcom/google/android/gms/internal/bce;

    invoke-direct {v8}, Lcom/google/android/gms/internal/bce;-><init>()V

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Lcom/google/android/gms/internal/aul;-><init>(Lcom/google/android/gms/internal/auc;Lcom/google/android/gms/internal/aub;Lcom/google/android/gms/internal/awr;Lcom/google/android/gms/internal/bcd;Lcom/google/android/gms/internal/en;Lcom/google/android/gms/internal/bhy;Lcom/google/android/gms/internal/bce;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/aus;->d:Lcom/google/android/gms/internal/aul;

    invoke-static {}, Lcom/google/android/gms/internal/jz;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/aus;->e:Ljava/lang/String;

    new-instance v0, Lcom/google/android/gms/internal/axp;

    invoke-direct {v0}, Lcom/google/android/gms/internal/axp;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aus;->f:Lcom/google/android/gms/internal/axp;

    new-instance v0, Lcom/google/android/gms/internal/axq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/axq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aus;->g:Lcom/google/android/gms/internal/axq;

    new-instance v0, Lcom/google/android/gms/internal/axr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/axr;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/aus;->h:Lcom/google/android/gms/internal/axr;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/jz;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/aus;->g()Lcom/google/android/gms/internal/aus;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/aus;->c:Lcom/google/android/gms/internal/jz;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/aul;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/aus;->g()Lcom/google/android/gms/internal/aus;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/aus;->d:Lcom/google/android/gms/internal/aul;

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/aus;->g()Lcom/google/android/gms/internal/aus;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/aus;->e:Ljava/lang/String;

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/axq;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/aus;->g()Lcom/google/android/gms/internal/aus;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/aus;->g:Lcom/google/android/gms/internal/axq;

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/internal/axp;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/aus;->g()Lcom/google/android/gms/internal/aus;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/aus;->f:Lcom/google/android/gms/internal/axp;

    return-object v0
.end method

.method public static f()Lcom/google/android/gms/internal/axr;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/aus;->g()Lcom/google/android/gms/internal/aus;

    move-result-object v0

    iget-object v0, v0, Lcom/google/android/gms/internal/aus;->h:Lcom/google/android/gms/internal/axr;

    return-object v0
.end method

.method private static g()Lcom/google/android/gms/internal/aus;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/aus;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/aus;->b:Lcom/google/android/gms/internal/aus;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
