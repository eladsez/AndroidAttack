.class public final Lcom/google/android/gms/common/internal/f$f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/common/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field private final synthetic b:Lcom/google/android/gms/common/internal/f;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/internal/f;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/internal/f$f;->b:Lcom/google/android/gms/common/internal/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/google/android/gms/common/internal/f$f;->a:I

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$f;->b:Lcom/google/android/gms/common/internal/f;

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/f;I)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$f;->b:Lcom/google/android/gms/common/internal/f;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/f;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f$f;->b:Lcom/google/android/gms/common/internal/f;

    invoke-static {p2}, Lcom/google/android/gms/common/internal/y$a;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/y;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/internal/y;)Lcom/google/android/gms/common/internal/y;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$f;->b:Lcom/google/android/gms/common/internal/f;

    const/4 p2, 0x0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/gms/common/internal/f$f;->a:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/android/gms/common/internal/f;->a(ILandroid/os/Bundle;I)V

    return-void

    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$f;->b:Lcom/google/android/gms/common/internal/f;

    invoke-static {p1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/f;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/internal/f$f;->b:Lcom/google/android/gms/common/internal/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/f;->a(Lcom/google/android/gms/common/internal/f;Lcom/google/android/gms/common/internal/y;)Lcom/google/android/gms/common/internal/y;

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lcom/google/android/gms/common/internal/f$f;->b:Lcom/google/android/gms/common/internal/f;

    iget-object p1, p1, Lcom/google/android/gms/common/internal/f;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/google/android/gms/common/internal/f$f;->b:Lcom/google/android/gms/common/internal/f;

    iget-object v0, v0, Lcom/google/android/gms/common/internal/f;->a:Landroid/os/Handler;

    const/4 v1, 0x6

    iget v2, p0, Lcom/google/android/gms/common/internal/f$f;->a:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
