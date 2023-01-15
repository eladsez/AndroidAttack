.class final Lcom/google/android/gms/internal/wx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/wy;

.field private synthetic b:Lcom/google/android/gms/internal/wv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/wv;Lcom/google/android/gms/internal/wy;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/wx;->b:Lcom/google/android/gms/internal/wv;

    iput-object p2, p0, Lcom/google/android/gms/internal/wx;->a:Lcom/google/android/gms/internal/wy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/wx;->b:Lcom/google/android/gms/internal/wv;

    iget-object v1, p0, Lcom/google/android/gms/internal/wx;->a:Lcom/google/android/gms/internal/wy;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/wv;->a(Lcom/google/android/gms/internal/wv;Lcom/google/android/gms/internal/wy;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/wx;->b:Lcom/google/android/gms/internal/wv;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/wv;->a:Lcom/google/android/gms/internal/wy;

    iget-object v0, p0, Lcom/google/android/gms/internal/wx;->b:Lcom/google/android/gms/internal/wv;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/wb;->i()Lcom/google/android/gms/internal/wz;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/wz;->a(Lcom/google/android/gms/internal/wt;)V

    return-void
.end method
