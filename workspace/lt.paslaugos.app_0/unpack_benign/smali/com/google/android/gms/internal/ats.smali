.class final Lcom/google/android/gms/internal/ats;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ban;

.field private final b:Lcom/google/android/gms/internal/bgr;

.field private final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/arq;Lcom/google/android/gms/internal/ban;Lcom/google/android/gms/internal/bgr;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ats;->a:Lcom/google/android/gms/internal/ban;

    iput-object p3, p0, Lcom/google/android/gms/internal/ats;->b:Lcom/google/android/gms/internal/bgr;

    iput-object p4, p0, Lcom/google/android/gms/internal/ats;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ats;->a:Lcom/google/android/gms/internal/ban;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ban;->g()Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ats;->b:Lcom/google/android/gms/internal/bgr;

    iget-object v0, v0, Lcom/google/android/gms/internal/bgr;->c:Lcom/google/android/gms/internal/df;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ats;->a:Lcom/google/android/gms/internal/ban;

    iget-object v1, p0, Lcom/google/android/gms/internal/ats;->b:Lcom/google/android/gms/internal/bgr;

    iget-object v1, v1, Lcom/google/android/gms/internal/bgr;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ban;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ats;->a:Lcom/google/android/gms/internal/ban;

    iget-object v1, p0, Lcom/google/android/gms/internal/ats;->b:Lcom/google/android/gms/internal/bgr;

    iget-object v1, v1, Lcom/google/android/gms/internal/bgr;->c:Lcom/google/android/gms/internal/df;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ban;->a(Lcom/google/android/gms/internal/df;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ats;->b:Lcom/google/android/gms/internal/bgr;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/bgr;->d:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ats;->a:Lcom/google/android/gms/internal/ban;

    const-string v1, "intermediate-response"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ban;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ats;->a:Lcom/google/android/gms/internal/ban;

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ban;->c(Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ats;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ats;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_3
    return-void
.end method
