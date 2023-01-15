.class Lcom/crashlytics/android/c/h$12;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/c/h$b;


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

    iput-object p1, p0, Lcom/crashlytics/android/c/h$12;->b:Lcom/crashlytics/android/c/h;

    iput-boolean p2, p0, Lcom/crashlytics/android/c/h$12;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 3

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget-object v1, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/crashlytics/android/c/h$12;->a:Z

    invoke-static {p1, v0, v1, v2}, Lcom/crashlytics/android/c/ag;->a(Lcom/crashlytics/android/c/e;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
