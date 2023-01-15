.class final Lcom/google/android/gms/internal/e/t;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:J

.field private final synthetic b:Lcom/google/android/gms/internal/e/q;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/e/q;J)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/e/t;->b:Lcom/google/android/gms/internal/e/q;

    iput-wide p2, p0, Lcom/google/android/gms/internal/e/t;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/e/t;->b:Lcom/google/android/gms/internal/e/q;

    iget-wide v1, p0, Lcom/google/android/gms/internal/e/t;->a:J

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/e/q;->a(Lcom/google/android/gms/internal/e/q;J)V

    return-void
.end method
