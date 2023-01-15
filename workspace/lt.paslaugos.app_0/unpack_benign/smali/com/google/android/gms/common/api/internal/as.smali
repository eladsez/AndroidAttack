.class public abstract Lcom/google/android/gms/common/api/internal/as;
.super Lcom/google/android/gms/common/api/internal/LifecycleCallback;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field protected volatile b:Z

.field protected final c:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/android/gms/common/api/internal/at;",
            ">;"
        }
    .end annotation
.end field

.field protected final d:Lcom/google/android/gms/common/c;

.field private final e:Landroid/os/Handler;


# direct methods
.method private static a(Lcom/google/android/gms/common/api/internal/at;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/at;->a()I

    move-result p0

    return p0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/common/a;I)V
.end method

.method protected abstract b()V
.end method

.method public final b(Lcom/google/android/gms/common/a;I)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/api/internal/at;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/common/api/internal/at;-><init>(Lcom/google/android/gms/common/a;I)V

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/as;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/as;->e:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/common/api/internal/au;

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/common/api/internal/au;-><init>(Lcom/google/android/gms/common/api/internal/as;Lcom/google/android/gms/common/api/internal/at;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/as;->c:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/as;->b()V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    new-instance p1, Lcom/google/android/gms/common/a;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/google/android/gms/common/a;-><init>(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/as;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/at;

    invoke-static {v0}, Lcom/google/android/gms/common/api/internal/as;->a(Lcom/google/android/gms/common/api/internal/at;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/common/api/internal/as;->a(Lcom/google/android/gms/common/a;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/common/api/internal/as;->c()V

    return-void
.end method
