.class public final Lcom/google/android/gms/internal/aff$a;
.super Lcom/google/android/gms/internal/aky$a;

# interfaces
.implements Lcom/google/android/gms/internal/alz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/aff;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/aky$a<",
        "Lcom/google/android/gms/internal/aff;",
        "Lcom/google/android/gms/internal/aff$a;",
        ">;",
        "Lcom/google/android/gms/internal/alz;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/aff;->b()Lcom/google/android/gms/internal/aff;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/aky$a;-><init>(Lcom/google/android/gms/internal/aky;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/afg;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/aff$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Lcom/google/android/gms/internal/aff$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aff$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/aff;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aff;->a(Lcom/google/android/gms/internal/aff;I)V

    return-object p0
.end method

.method public final a(Lcom/google/android/gms/internal/aff$b;)Lcom/google/android/gms/internal/aff$a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/aky$a;->b()V

    iget-object v0, p0, Lcom/google/android/gms/internal/aff$a;->a:Lcom/google/android/gms/internal/aky;

    check-cast v0, Lcom/google/android/gms/internal/aff;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/aff;->a(Lcom/google/android/gms/internal/aff;Lcom/google/android/gms/internal/aff$b;)V

    return-object p0
.end method
