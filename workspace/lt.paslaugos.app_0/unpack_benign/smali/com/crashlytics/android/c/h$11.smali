.class Lcom/crashlytics/android/c/h$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/c/h$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h;->c(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/crashlytics/android/c/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/h$11;->f:Lcom/crashlytics/android/c/h;

    iput-object p2, p0, Lcom/crashlytics/android/c/h$11;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/c/h$11;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/c/h$11;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/crashlytics/android/c/h$11;->d:Ljava/lang/String;

    iput p6, p0, Lcom/crashlytics/android/c/h$11;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/FileOutputStream;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Lcom/crashlytics/android/c/h$11$1;

    invoke-direct {v1, p0}, Lcom/crashlytics/android/c/h$11$1;-><init>(Lcom/crashlytics/android/c/h$11;)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method
