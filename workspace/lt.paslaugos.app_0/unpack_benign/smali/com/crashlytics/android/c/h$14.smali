.class Lcom/crashlytics/android/c/h$14;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/c/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:J

.field final synthetic d:J

.field final synthetic e:Z

.field final synthetic f:Ljava/util/Map;

.field final synthetic g:I

.field final synthetic h:Lcom/crashlytics/android/c/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/h;IIJJZLjava/util/Map;I)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/h$14;->h:Lcom/crashlytics/android/c/h;

    iput p2, p0, Lcom/crashlytics/android/c/h$14;->a:I

    iput p3, p0, Lcom/crashlytics/android/c/h$14;->b:I

    iput-wide p4, p0, Lcom/crashlytics/android/c/h$14;->c:J

    iput-wide p6, p0, Lcom/crashlytics/android/c/h$14;->d:J

    iput-boolean p8, p0, Lcom/crashlytics/android/c/h$14;->e:Z

    iput-object p9, p0, Lcom/crashlytics/android/c/h$14;->f:Ljava/util/Map;

    iput p10, p0, Lcom/crashlytics/android/c/h$14;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 13

    iget v1, p0, Lcom/crashlytics/android/c/h$14;->a:I

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget v3, p0, Lcom/crashlytics/android/c/h$14;->b:I

    iget-wide v4, p0, Lcom/crashlytics/android/c/h$14;->c:J

    iget-wide v6, p0, Lcom/crashlytics/android/c/h$14;->d:J

    iget-boolean v8, p0, Lcom/crashlytics/android/c/h$14;->e:Z

    iget-object v9, p0, Lcom/crashlytics/android/c/h$14;->f:Ljava/util/Map;

    iget v10, p0, Lcom/crashlytics/android/c/h$14;->g:I

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v12, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    move-object v0, p1

    invoke-static/range {v0 .. v12}, Lcom/crashlytics/android/c/ag;->a(Lcom/crashlytics/android/c/e;ILjava/lang/String;IJJZLjava/util/Map;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
