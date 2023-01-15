.class public final Lcom/google/android/gms/internal/afo;
.super Lcom/google/android/gms/internal/aii;


# instance fields
.field private final d:Landroid/app/Activity;

.field private final e:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/aay;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/qk;IILandroid/view/View;Landroid/app/Activity;)V
    .locals 7

    const/16 v6, 0x3e

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/aii;-><init>(Lcom/google/android/gms/internal/aay;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/qk;II)V

    iput-object p7, p0, Lcom/google/android/gms/internal/afo;->e:Landroid/view/View;

    iput-object p8, p0, Lcom/google/android/gms/internal/afo;->d:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/afo;->e:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/afo;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/android/gms/internal/afo;->e:Landroid/view/View;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/google/android/gms/internal/afo;->d:Landroid/app/Activity;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    iget-object v1, p0, Lcom/google/android/gms/internal/afo;->b:Lcom/google/android/gms/internal/qk;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/afo;->b:Lcom/google/android/gms/internal/qk;

    aget-wide v3, v0, v4

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/qk;->Q:Ljava/lang/Long;

    iget-object v2, p0, Lcom/google/android/gms/internal/afo;->b:Lcom/google/android/gms/internal/qk;

    aget-wide v3, v0, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v2, Lcom/google/android/gms/internal/qk;->R:Ljava/lang/Long;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
