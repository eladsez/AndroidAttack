.class final Lcom/google/android/gms/internal/e/di;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/google/android/gms/internal/e/df;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/df;Ljava/util/concurrent/atomic/AtomicReference;Z)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/di;->c:Lcom/google/android/gms/internal/e/df;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/di;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/e/di;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/di;->c:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/dc;->i()Lcom/google/android/gms/internal/e/ee;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/di;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-boolean v2, p0, Lcom/google/android/gms/internal/e/di;->b:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/e/ee;->a(Ljava/util/concurrent/atomic/AtomicReference;Z)V

    return-void
.end method
