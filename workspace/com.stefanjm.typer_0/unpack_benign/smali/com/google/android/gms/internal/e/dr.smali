.class final Lcom/google/android/gms/internal/e/dr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final synthetic b:Lcom/google/android/gms/internal/e/df;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/df;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/dr;->b:Lcom/google/android/gms/internal/e/df;

    iput-object p2, p0, Lcom/google/android/gms/internal/e/dr;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/e/dr;->a:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/google/android/gms/internal/e/dr;->b:Lcom/google/android/gms/internal/e/df;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->v()Lcom/google/android/gms/internal/e/aa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/e/dc;->g()Lcom/google/android/gms/internal/e/au;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/e/au;->z()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/e/ap;->Q:Lcom/google/android/gms/internal/e/aq;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/e/aa;->a(Ljava/lang/String;Lcom/google/android/gms/internal/e/aq;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/gms/internal/e/dr;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/dr;->a:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    throw v0
.end method