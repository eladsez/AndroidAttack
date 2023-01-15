.class Lcom/crashlytics/android/c/h$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/c/h$b;


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

    iput-object p1, p0, Lcom/crashlytics/android/c/h$9;->f:Lcom/crashlytics/android/c/h;

    iput-object p2, p0, Lcom/crashlytics/android/c/h$9;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/c/h$9;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/crashlytics/android/c/h$9;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/crashlytics/android/c/h$9;->d:Ljava/lang/String;

    iput p6, p0, Lcom/crashlytics/android/c/h$9;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 8

    iget-object v1, p0, Lcom/crashlytics/android/c/h$9;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/crashlytics/android/c/h$9;->f:Lcom/crashlytics/android/c/h;

    invoke-static {v0}, Lcom/crashlytics/android/c/h;->c(Lcom/crashlytics/android/c/h;)Lcom/crashlytics/android/c/a;

    move-result-object v0

    iget-object v2, v0, Lcom/crashlytics/android/c/a;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/crashlytics/android/c/h$9;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/crashlytics/android/c/h$9;->c:Ljava/lang/String;

    iget-object v5, p0, Lcom/crashlytics/android/c/h$9;->d:Ljava/lang/String;

    iget v6, p0, Lcom/crashlytics/android/c/h$9;->e:I

    iget-object v0, p0, Lcom/crashlytics/android/c/h$9;->f:Lcom/crashlytics/android/c/h;

    invoke-static {v0}, Lcom/crashlytics/android/c/h;->d(Lcom/crashlytics/android/c/h;)Ljava/lang/String;

    move-result-object v7

    move-object v0, p1

    invoke-static/range {v0 .. v7}, Lcom/crashlytics/android/c/ag;->a(Lcom/crashlytics/android/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
