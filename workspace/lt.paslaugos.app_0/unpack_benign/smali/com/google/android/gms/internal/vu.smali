.class final Lcom/google/android/gms/internal/vu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/to;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/google/android/gms/internal/vh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/vh;Lcom/google/android/gms/internal/to;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/vu;->c:Lcom/google/android/gms/internal/vh;

    iput-object p2, p0, Lcom/google/android/gms/internal/vu;->a:Lcom/google/android/gms/internal/to;

    iput-object p3, p0, Lcom/google/android/gms/internal/vu;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->c:Lcom/google/android/gms/internal/vh;

    invoke-static {v0}, Lcom/google/android/gms/internal/vh;->a(Lcom/google/android/gms/internal/vh;)Lcom/google/android/gms/internal/vc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->G()V

    iget-object v0, p0, Lcom/google/android/gms/internal/vu;->c:Lcom/google/android/gms/internal/vh;

    invoke-static {v0}, Lcom/google/android/gms/internal/vh;->a(Lcom/google/android/gms/internal/vh;)Lcom/google/android/gms/internal/vc;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/vu;->a:Lcom/google/android/gms/internal/to;

    iget-object v2, p0, Lcom/google/android/gms/internal/vu;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/vc;->a(Lcom/google/android/gms/internal/to;Ljava/lang/String;)V

    return-void
.end method
