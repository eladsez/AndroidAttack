.class Lcom/crashlytics/android/c/h$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/c/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/crashlytics/android/c/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/h;Z)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/h$13;->b:Lcom/crashlytics/android/c/h;

    iput-boolean p2, p0, Lcom/crashlytics/android/c/h$13;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/FileOutputStream;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/crashlytics/android/c/h$13$1;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/h$13$1;-><init>(Lcom/crashlytics/android/c/h$13;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method
