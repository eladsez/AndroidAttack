.class final Lcom/google/android/gms/internal/ayz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/ayy;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ayy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ayz;->a:Lcom/google/android/gms/internal/ayy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ayz;->a:Lcom/google/android/gms/internal/ayy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ayy;->a(Lcom/google/android/gms/internal/ayy;)Lcom/google/android/gms/internal/azh;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ayz;->a:Lcom/google/android/gms/internal/ayy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ayy;->a(Lcom/google/android/gms/internal/ayy;)Lcom/google/android/gms/internal/azh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/azh;->g()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ayz;->a:Lcom/google/android/gms/internal/ayy;

    invoke-static {v0}, Lcom/google/android/gms/internal/ayy;->a(Lcom/google/android/gms/internal/ayy;)Lcom/google/android/gms/internal/azh;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/azh;->f()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ayz;->a:Lcom/google/android/gms/internal/ayy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ayy;->a(Lcom/google/android/gms/internal/ayy;Lcom/google/android/gms/internal/azh;)Lcom/google/android/gms/internal/azh;

    return-void
.end method
