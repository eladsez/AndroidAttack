.class final Lcom/google/android/gms/internal/vl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/sz;

.field private synthetic b:Lcom/google/android/gms/internal/vh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vh;Lcom/google/android/gms/internal/sz;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/vl;->b:Lcom/google/android/gms/internal/vh;

    iput-object p2, p0, Lcom/google/android/gms/internal/vl;->a:Lcom/google/android/gms/internal/sz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/vl;->b:Lcom/google/android/gms/internal/vh;

    invoke-static {v0}, Lcom/google/android/gms/internal/vh;->a(Lcom/google/android/gms/internal/vh;)Lcom/google/android/gms/internal/vc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->G()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vl;->b:Lcom/google/android/gms/internal/vh;

    invoke-static {v0}, Lcom/google/android/gms/internal/vh;->a(Lcom/google/android/gms/internal/vh;)Lcom/google/android/gms/internal/vc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vl;->a:Lcom/google/android/gms/internal/sz;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/vc;->b(Lcom/google/android/gms/internal/sz;)V

    return-void
.end method
