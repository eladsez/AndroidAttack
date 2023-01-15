.class Lcom/crashlytics/android/c/i$1;
.super La/a/a/a/a/c/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/i;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/a/a/c/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/i;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/i$1;->a:Lcom/crashlytics/android/c/i;

    invoke-direct {p0}, La/a/a/a/a/c/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/i$1;->a:Lcom/crashlytics/android/c/i;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/i;->d()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b()La/a/a/a/a/c/e;
    .locals 1

    sget-object v0, La/a/a/a/a/c/e;->d:La/a/a/a/a/c/e;

    return-object v0
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/crashlytics/android/c/i$1;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
