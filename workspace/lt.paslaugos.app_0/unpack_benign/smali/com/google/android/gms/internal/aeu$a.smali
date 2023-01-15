.class public final Lcom/google/android/gms/internal/aeu$a;
.super Lcom/google/android/gms/internal/aky$a;

# interfaces
.implements Lcom/google/android/gms/internal/alz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aeu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/aky$a<",
        "Lcom/google/android/gms/internal/aeu;",
        "Lcom/google/android/gms/internal/aeu$a;",
        ">;",
        "Lcom/google/android/gms/internal/alz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/aeu;->g()Lcom/google/android/gms/internal/aeu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aky$a;-><init>(Lcom/google/android/gms/internal/aky;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/aev;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aeu$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/aeu$b;)Lcom/google/android/gms/internal/aeu$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aeu$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/aeu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aeu;->a(Lcom/google/android/gms/internal/aeu;Lcom/google/android/gms/internal/aeu$b;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/aeu$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aeu$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/aeu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aeu;->a(Lcom/google/android/gms/internal/aeu;Lcom/google/android/gms/internal/aka;)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/aeu$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aeu$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/aeu;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aeu;->a(Lcom/google/android/gms/internal/aeu;Ljava/lang/String;)V

    return-object p0
.end method
