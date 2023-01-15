.class Lcom/crashlytics/android/c/h$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/c/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/c/h;->a(Ljava/lang/Thread$UncaughtExceptionHandler;)V
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

    iput-object p1, p0, Lcom/crashlytics/android/c/h$20;->a:Lcom/crashlytics/android/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/h$20;->a:Lcom/crashlytics/android/c/h;

    invoke-virtual {v0, p1, p2}, Lcom/crashlytics/android/c/h;->a(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void
.end method
