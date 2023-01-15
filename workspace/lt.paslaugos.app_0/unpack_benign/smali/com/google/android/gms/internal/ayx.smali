.class final Lcom/google/android/gms/internal/ayx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ayw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ayw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ayx;->a:Lcom/google/android/gms/internal/ayw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ayx;->a:Lcom/google/android/gms/internal/ayw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ayw;->a(Lcom/google/android/gms/internal/ayw;)Lcom/google/android/gms/internal/azh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ayx;->a:Lcom/google/android/gms/internal/ayw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ayw;->a(Lcom/google/android/gms/internal/ayw;)Lcom/google/android/gms/internal/azh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/azh;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ayx;->a:Lcom/google/android/gms/internal/ayw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ayw;->a(Lcom/google/android/gms/internal/ayw;)Lcom/google/android/gms/internal/azh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/azh;->f()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ayx;->a:Lcom/google/android/gms/internal/ayw;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ayw;->a(Lcom/google/android/gms/internal/ayw;Lcom/google/android/gms/internal/azh;)Lcom/google/android/gms/internal/azh;

    return-void
.end method
