.class final Lcom/google/android/gms/internal/yj;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Ljava/lang/String;

.field final c:Ljava/lang/String;

.field final d:J

.field final e:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p3}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p6}, Lcom/google/android/gms/common/internal/ad;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/yj;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/yj;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/yj;->c:Ljava/lang/String;

    iput-wide p4, p0, Lcom/google/android/gms/internal/yj;->d:J

    iput-object p6, p0, Lcom/google/android/gms/internal/yj;->e:Ljava/lang/Object;

    return-void
.end method
