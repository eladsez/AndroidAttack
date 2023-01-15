.class Lcom/crashlytics/android/c/h$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/c/h$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h;->f(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/al;

.field final synthetic b:Lcom/crashlytics/android/c/h;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/c/h;Lcom/crashlytics/android/c/al;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/h$16;->b:Lcom/crashlytics/android/c/h;

    iput-object p2, p0, Lcom/crashlytics/android/c/h$16;->a:Lcom/crashlytics/android/c/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/crashlytics/android/c/e;)V
    .locals 3

    iget-object v0, p0, Lcom/crashlytics/android/c/h$16;->a:Lcom/crashlytics/android/c/al;

    iget-object v0, v0, Lcom/crashlytics/android/c/al;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/crashlytics/android/c/h$16;->a:Lcom/crashlytics/android/c/al;

    iget-object v1, v1, Lcom/crashlytics/android/c/al;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/crashlytics/android/c/h$16;->a:Lcom/crashlytics/android/c/al;

    iget-object v2, v2, Lcom/crashlytics/android/c/al;->d:Ljava/lang/String;

    invoke-static {p1, v0, v1, v2}, Lcom/crashlytics/android/c/ag;->a(Lcom/crashlytics/android/c/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
