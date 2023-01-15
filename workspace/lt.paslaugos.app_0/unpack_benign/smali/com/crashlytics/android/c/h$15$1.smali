.class Lcom/crashlytics/android/c/h$15$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h$15;->a(Ljava/io/FileOutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/h$15;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/h$15;)V
    .locals 2

    iput-object p1, p0, Lcom/crashlytics/android/c/h$15$1;->a:Lcom/crashlytics/android/c/h$15;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "arch"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$15$1;->a:Lcom/crashlytics/android/c/h$15;

    iget v0, v0, Lcom/crashlytics/android/c/h$15;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "build_model"

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "available_processors"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$15$1;->a:Lcom/crashlytics/android/c/h$15;

    iget v0, v0, Lcom/crashlytics/android/c/h$15;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "total_ram"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$15$1;->a:Lcom/crashlytics/android/c/h$15;

    iget-wide v0, v0, Lcom/crashlytics/android/c/h$15;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "disk_space"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$15$1;->a:Lcom/crashlytics/android/c/h$15;

    iget-wide v0, v0, Lcom/crashlytics/android/c/h$15;->d:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "is_emulator"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$15$1;->a:Lcom/crashlytics/android/c/h$15;

    iget-boolean v0, v0, Lcom/crashlytics/android/c/h$15;->e:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "ids"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$15$1;->a:Lcom/crashlytics/android/c/h$15;

    iget-object v0, v0, Lcom/crashlytics/android/c/h$15;->f:Ljava/util/Map;

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "state"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$15$1;->a:Lcom/crashlytics/android/c/h$15;

    iget v0, v0, Lcom/crashlytics/android/c/h$15;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "build_manufacturer"

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "build_product"

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$15$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
