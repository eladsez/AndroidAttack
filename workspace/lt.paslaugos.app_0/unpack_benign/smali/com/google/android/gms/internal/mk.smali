.class final Lcom/google/android/gms/internal/mk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/mc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/mc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/mk;->a:Lcom/google/android/gms/internal/mc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/mk;->a:Lcom/google/android/gms/internal/mc;

    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->a(Lcom/google/android/gms/internal/mc;)Lcom/google/android/gms/internal/ml;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/mk;->a:Lcom/google/android/gms/internal/mc;

    invoke-static {v0}, Lcom/google/android/gms/internal/mc;->a(Lcom/google/android/gms/internal/mc;)Lcom/google/android/gms/internal/ml;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ml;->d()V

    :cond_0
    return-void
.end method
