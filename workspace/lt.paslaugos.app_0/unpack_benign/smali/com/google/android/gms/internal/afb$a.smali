.class public final Lcom/google/android/gms/internal/afb$a;
.super Lcom/google/android/gms/internal/aky$a;

# interfaces
.implements Lcom/google/android/gms/internal/alz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/afb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/aky$a<",
        "Lcom/google/android/gms/internal/afb;",
        "Lcom/google/android/gms/internal/afb$a;",
        ">;",
        "Lcom/google/android/gms/internal/alz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/afb;->i()Lcom/google/android/gms/internal/afb;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aky$a;-><init>(Lcom/google/android/gms/internal/aky;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/afc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/afb$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/afb$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object p1, p0, Lcom/google/android/gms/internal/afb$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast p1, Lcom/google/android/gms/internal/afb;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/afb;->a(Lcom/google/android/gms/internal/afb;I)V

    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/google/android/gms/internal/afb$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/afb$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/afb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/afb;->a(Lcom/google/android/gms/internal/afb;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a(Z)Lcom/google/android/gms/internal/afb$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object p1, p0, Lcom/google/android/gms/internal/afb$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast p1, Lcom/google/android/gms/internal/afb;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/afb;->a(Lcom/google/android/gms/internal/afb;Z)V

    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/google/android/gms/internal/afb$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/afb$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/afb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/afb;->b(Lcom/google/android/gms/internal/afb;Ljava/lang/String;)V

    return-object p0
.end method

.method public final c(Ljava/lang/String;)Lcom/google/android/gms/internal/afb$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/afb$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/afb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/afb;->c(Lcom/google/android/gms/internal/afb;Ljava/lang/String;)V

    return-object p0
.end method
