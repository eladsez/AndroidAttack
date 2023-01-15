.class final Lcom/google/android/gms/internal/e/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/e/bs;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/bt;->a:Lcom/google/android/gms/internal/e/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/e/bt;->a:Lcom/google/android/gms/internal/e/bs;

    iget-object v0, v0, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/e/bq;->b()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/e/bt;->a:Lcom/google/android/gms/internal/e/bs;

    iget-object v1, v1, Lcom/google/android/gms/internal/e/bs;->a:Lcom/google/android/gms/internal/e/bq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/e/bq;->a(Landroid/os/Bundle;)V

    return-void
.end method
