.class final Lcom/google/android/gms/internal/xs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/xn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/xn;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/xs;->a:Lcom/google/android/gms/internal/xn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/xs;->a:Lcom/google/android/gms/internal/xn;

    iget-object v0, v0, Lcom/google/android/gms/internal/xn;->a:Lcom/google/android/gms/internal/wz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/wz;->a(Lcom/google/android/gms/internal/wz;Lcom/google/android/gms/internal/tt;)Lcom/google/android/gms/internal/tt;

    iget-object v0, p0, Lcom/google/android/gms/internal/xs;->a:Lcom/google/android/gms/internal/xn;

    iget-object v0, v0, Lcom/google/android/gms/internal/xn;->a:Lcom/google/android/gms/internal/wz;

    invoke-static {v0}, Lcom/google/android/gms/internal/wz;->b(Lcom/google/android/gms/internal/wz;)V

    return-void
.end method
