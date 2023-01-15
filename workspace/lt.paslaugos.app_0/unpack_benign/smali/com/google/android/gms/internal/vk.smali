.class final Lcom/google/android/gms/internal/vk;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/sz;

.field private synthetic b:Lcom/google/android/gms/internal/sw;

.field private synthetic c:Lcom/google/android/gms/internal/vh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vh;Lcom/google/android/gms/internal/sz;Lcom/google/android/gms/internal/sw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/vk;->c:Lcom/google/android/gms/internal/vh;

    iput-object p2, p0, Lcom/google/android/gms/internal/vk;->a:Lcom/google/android/gms/internal/sz;

    iput-object p3, p0, Lcom/google/android/gms/internal/vk;->b:Lcom/google/android/gms/internal/sw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/vk;->c:Lcom/google/android/gms/internal/vh;

    invoke-static {v0}, Lcom/google/android/gms/internal/vh;->a(Lcom/google/android/gms/internal/vh;)Lcom/google/android/gms/internal/vc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->G()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vk;->c:Lcom/google/android/gms/internal/vh;

    invoke-static {v0}, Lcom/google/android/gms/internal/vh;->a(Lcom/google/android/gms/internal/vh;)Lcom/google/android/gms/internal/vc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vk;->a:Lcom/google/android/gms/internal/sz;

    iget-object v2, p0, Lcom/google/android/gms/internal/vk;->b:Lcom/google/android/gms/internal/sw;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/sz;Lcom/google/android/gms/internal/sw;)V

    return-void
.end method
