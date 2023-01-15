.class Lcom/crashlytics/android/c/h$11$1;
.super Ljava/util/HashMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h$11;->a(Ljava/io/FileOutputStream;)V
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
.field final synthetic a:Lcom/crashlytics/android/c/h$11;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/h$11;)V
    .locals 1

    iput-object p1, p0, Lcom/crashlytics/android/c/h$11$1;->a:Lcom/crashlytics/android/c/h$11;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p1, "app_identifier"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$11$1;->a:Lcom/crashlytics/android/c/h$11;

    iget-object v0, v0, Lcom/crashlytics/android/c/h$11;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$11$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "api_key"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$11$1;->a:Lcom/crashlytics/android/c/h$11;

    iget-object v0, v0, Lcom/crashlytics/android/c/h$11;->f:Lcom/crashlytics/android/c/h;

    invoke-static {v0}, Lcom/crashlytics/android/c/h;->c(Lcom/crashlytics/android/c/h;)Lcom/crashlytics/android/c/a;

    move-result-object v0

    iget-object v0, v0, Lcom/crashlytics/android/c/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$11$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "version_code"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$11$1;->a:Lcom/crashlytics/android/c/h$11;

    iget-object v0, v0, Lcom/crashlytics/android/c/h$11;->b:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$11$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "version_name"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$11$1;->a:Lcom/crashlytics/android/c/h$11;

    iget-object v0, v0, Lcom/crashlytics/android/c/h$11;->c:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$11$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "install_uuid"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$11$1;->a:Lcom/crashlytics/android/c/h$11;

    iget-object v0, v0, Lcom/crashlytics/android/c/h$11;->d:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$11$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "delivery_mechanism"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$11$1;->a:Lcom/crashlytics/android/c/h$11;

    iget v0, v0, Lcom/crashlytics/android/c/h$11;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$11$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "unity_version"

    iget-object v0, p0, Lcom/crashlytics/android/c/h$11$1;->a:Lcom/crashlytics/android/c/h$11;

    iget-object v0, v0, Lcom/crashlytics/android/c/h$11;->f:Lcom/crashlytics/android/c/h;

    invoke-static {v0}, Lcom/crashlytics/android/c/h;->d(Lcom/crashlytics/android/c/h;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/crashlytics/android/c/h$11$1;->a:Lcom/crashlytics/android/c/h$11;

    iget-object v0, v0, Lcom/crashlytics/android/c/h$11;->f:Lcom/crashlytics/android/c/h;

    invoke-static {v0}, Lcom/crashlytics/android/c/h;->d(Lcom/crashlytics/android/c/h;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/crashlytics/android/c/h$11$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
