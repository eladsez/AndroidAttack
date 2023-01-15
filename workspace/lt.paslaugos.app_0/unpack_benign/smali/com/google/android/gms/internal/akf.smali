.class final Lcom/google/android/gms/internal/akf;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/google/android/gms/internal/akm;

.field private final b:[B


# direct methods
.method private constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/akf;->b:[B

    iget-object p1, p0, Lcom/google/android/gms/internal/akf;->b:[B

    invoke-static {p1}, Lcom/google/android/gms/internal/akm;->a([B)Lcom/google/android/gms/internal/akm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/akf;->a:Lcom/google/android/gms/internal/akm;

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/akb;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/akf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/aka;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/akf;->a:Lcom/google/android/gms/internal/akm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/akm;->b()V

    new-instance v0, Lcom/google/android/gms/internal/akh;

    iget-object v1, p0, Lcom/google/android/gms/internal/akf;->b:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/akh;-><init>([B)V

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/akm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/akf;->a:Lcom/google/android/gms/internal/akm;

    return-object v0
.end method
