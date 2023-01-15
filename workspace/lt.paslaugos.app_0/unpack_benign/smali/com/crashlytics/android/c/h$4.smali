.class Lcom/crashlytics/android/c/h$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/h$4;->a:Lcom/crashlytics/android/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/c/h$4;->a:Lcom/crashlytics/android/c/h;

    iget-object v1, p0, Lcom/crashlytics/android/c/h$4;->a:Lcom/crashlytics/android/c/h;

    new-instance v2, Lcom/crashlytics/android/c/h$e;

    invoke-direct {v2}, Lcom/crashlytics/android/c/h$e;-><init>()V

    invoke-static {v1, v2}, Lcom/crashlytics/android/c/h;->a(Lcom/crashlytics/android/c/h;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/crashlytics/android/c/h;->a([Ljava/io/File;)V

    return-void
.end method
