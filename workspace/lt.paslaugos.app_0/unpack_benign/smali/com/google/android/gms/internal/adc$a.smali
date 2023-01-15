.class public final Lcom/google/android/gms/internal/adc$a;
.super Lcom/google/android/gms/internal/aky$a;

# interfaces
.implements Lcom/google/android/gms/internal/alz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/adc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/aky$a<",
        "Lcom/google/android/gms/internal/adc;",
        "Lcom/google/android/gms/internal/adc$a;",
        ">;",
        "Lcom/google/android/gms/internal/alz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/adc;->g()Lcom/google/android/gms/internal/adc;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aky$a;-><init>(Lcom/google/android/gms/internal/aky;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/add;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/adc$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/adc$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object p1, p0, Lcom/google/android/gms/internal/adc$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast p1, Lcom/google/android/gms/internal/adc;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/adc;->a(Lcom/google/android/gms/internal/adc;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/adg;)Lcom/google/android/gms/internal/adc$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/adc$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/adc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/adc;->a(Lcom/google/android/gms/internal/adc;Lcom/google/android/gms/internal/adg;)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/aka;)Lcom/google/android/gms/internal/adc$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/adc$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/adc;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/adc;->a(Lcom/google/android/gms/internal/adc;Lcom/google/android/gms/internal/aka;)V

    return-object p0
.end method
