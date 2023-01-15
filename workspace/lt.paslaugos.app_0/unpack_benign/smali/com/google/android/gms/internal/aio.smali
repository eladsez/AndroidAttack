.class public Lcom/google/android/gms/internal/aio;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ain$a;


# instance fields
.field private a:Lcom/google/android/gms/internal/ain;

.field private b:I

.field private c:Z

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/google/android/gms/internal/ain$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ain;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/aio;->b:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aio;->c:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/aio;->a:Lcom/google/android/gms/internal/ain;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/aio;->d:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final b(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aio;->b:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/gms/internal/aio;->b:I

    return-void
.end method

.method protected final c(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/aio;->a:Lcom/google/android/gms/internal/ain;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ain;->a(I)V

    return-void
.end method

.method protected final e()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aio;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aio;->a:Lcom/google/android/gms/internal/ain;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ain;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/aio;->b:I

    iget-object v0, p0, Lcom/google/android/gms/internal/aio;->a:Lcom/google/android/gms/internal/ain;

    iget-object v1, p0, Lcom/google/android/gms/internal/aio;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ain;->a(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aio;->c:Z

    return-void
.end method

.method protected final f()V
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/aio;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/aio;->a:Lcom/google/android/gms/internal/ain;

    iget-object v1, p0, Lcom/google/android/gms/internal/aio;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ain;->b(Ljava/lang/ref/WeakReference;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/aio;->c:Z

    return-void
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/aio;->b:I

    return v0
.end method
