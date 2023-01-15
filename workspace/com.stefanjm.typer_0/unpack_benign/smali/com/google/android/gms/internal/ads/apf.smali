.class final Lcom/google/android/gms/internal/ads/apf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/awk;

.field private final b:Lcom/google/android/gms/internal/ads/bcm;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/anf;Lcom/google/android/gms/internal/ads/awk;Lcom/google/android/gms/internal/ads/bcm;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/awk;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/apf;->b:Lcom/google/android/gms/internal/ads/bcm;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/apf;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/awk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/awk;->g()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->b:Lcom/google/android/gms/internal/ads/bcm;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bcm;->c:Lcom/google/android/gms/internal/ads/df;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/awk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apf;->b:Lcom/google/android/gms/internal/ads/bcm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcm;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/awk;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/awk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/apf;->b:Lcom/google/android/gms/internal/ads/bcm;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/bcm;->c:Lcom/google/android/gms/internal/ads/df;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/awk;->a(Lcom/google/android/gms/internal/ads/df;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->b:Lcom/google/android/gms/internal/ads/bcm;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/bcm;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/awk;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/awk;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->a:Lcom/google/android/gms/internal/ads/awk;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/awk;->c(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/apf;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
