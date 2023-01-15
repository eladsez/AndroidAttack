.class final Lcom/google/android/gms/internal/th;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/internal/vc;

.field private synthetic b:Lcom/google/android/gms/internal/tg;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/tg;Lcom/google/android/gms/internal/vc;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/th;->b:Lcom/google/android/gms/internal/tg;

    iput-object p2, p0, Lcom/google/android/gms/internal/th;->a:Lcom/google/android/gms/internal/vc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/th;->a:Lcom/google/android/gms/internal/vc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    invoke-static {}, Lcom/google/android/gms/internal/ux;->y()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/th;->b:Lcom/google/android/gms/internal/tg;

    invoke-static {v0}, Lcom/google/android/gms/internal/tg;->a(Lcom/google/android/gms/internal/tg;)Lcom/google/android/gms/internal/vc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/vc;->h()Lcom/google/android/gms/internal/ux;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ux;->a(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/th;->b:Lcom/google/android/gms/internal/tg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tg;->b()Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/th;->b:Lcom/google/android/gms/internal/tg;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/tg;->a(Lcom/google/android/gms/internal/tg;J)J

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/th;->b:Lcom/google/android/gms/internal/tg;

    invoke-static {v0}, Lcom/google/android/gms/internal/tg;->b(Lcom/google/android/gms/internal/tg;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/th;->b:Lcom/google/android/gms/internal/tg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/tg;->a()V

    :cond_1
    return-void
.end method
