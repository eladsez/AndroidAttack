.class public final Lcom/google/firebase/perf/network/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/client/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/http/client/ResponseHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lorg/apache/http/client/ResponseHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/aje;

.field private final c:Lcom/google/android/gms/internal/aim;


# direct methods
.method public constructor <init>(Lorg/apache/http/client/ResponseHandler;Lcom/google/android/gms/internal/aje;Lcom/google/android/gms/internal/aim;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/client/ResponseHandler<",
            "+TT;>;",
            "Lcom/google/android/gms/internal/aje;",
            "Lcom/google/android/gms/internal/aim;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/network/f;->a:Lorg/apache/http/client/ResponseHandler;

    iput-object p2, p0, Lcom/google/firebase/perf/network/f;->b:Lcom/google/android/gms/internal/aje;

    iput-object p3, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/android/gms/internal/aim;

    return-void
.end method


# virtual methods
.method public final handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/android/gms/internal/aim;

    iget-object v1, p0, Lcom/google/firebase/perf/network/f;->b:Lcom/google/android/gms/internal/aje;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/aje;->c()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/aim;->f(J)Lcom/google/android/gms/internal/aim;

    iget-object v0, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/android/gms/internal/aim;

    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/aim;->a(I)Lcom/google/android/gms/internal/aim;

    invoke-static {p1}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpMessage;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/android/gms/internal/aim;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/aim;->b(J)Lcom/google/android/gms/internal/aim;

    :cond_0
    invoke-static {p1}, Lcom/google/firebase/perf/network/h;->a(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/android/gms/internal/aim;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aim;->c(Ljava/lang/String;)Lcom/google/android/gms/internal/aim;

    :cond_1
    iget-object v0, p0, Lcom/google/firebase/perf/network/f;->c:Lcom/google/android/gms/internal/aim;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aim;->d()Lcom/google/android/gms/internal/ajn;

    iget-object v0, p0, Lcom/google/firebase/perf/network/f;->a:Lorg/apache/http/client/ResponseHandler;

    invoke-interface {v0, p1}, Lorg/apache/http/client/ResponseHandler;->handleResponse(Lorg/apache/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
