.class public final Lcom/google/firebase/perf/network/g;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private final a:Lokhttp3/Callback;

.field private final b:Lcom/google/android/gms/internal/aim;

.field private final c:J

.field private final d:Lcom/google/android/gms/internal/aje;


# direct methods
.method public constructor <init>(Lokhttp3/Callback;Lcom/google/android/gms/internal/aiq;Lcom/google/android/gms/internal/aje;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/perf/network/g;->a:Lokhttp3/Callback;

    invoke-static {p2}, Lcom/google/android/gms/internal/aim;->a(Lcom/google/android/gms/internal/aiq;)Lcom/google/android/gms/internal/aim;

    move-result-object p1

    iput-object p1, p0, Lcom/google/firebase/perf/network/g;->b:Lcom/google/android/gms/internal/aim;

    iput-wide p4, p0, Lcom/google/firebase/perf/network/g;->c:J

    iput-object p3, p0, Lcom/google/firebase/perf/network/g;->d:Lcom/google/android/gms/internal/aje;

    return-void
.end method
