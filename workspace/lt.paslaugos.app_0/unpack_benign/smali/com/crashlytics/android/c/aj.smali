.class Lcom/crashlytics/android/c/aj;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:[Ljava/lang/StackTraceElement;

.field public final d:Lcom/crashlytics/android/c/aj;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;Lcom/crashlytics/android/c/ai;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/c/aj;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/c/aj;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/crashlytics/android/c/ai;->a([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v0

    iput-object v0, p0, Lcom/crashlytics/android/c/aj;->c:[Ljava/lang/StackTraceElement;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/crashlytics/android/c/aj;

    invoke-direct {v0, p1, p2}, Lcom/crashlytics/android/c/aj;-><init>(Ljava/lang/Throwable;Lcom/crashlytics/android/c/ai;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/crashlytics/android/c/aj;->d:Lcom/crashlytics/android/c/aj;

    return-void
.end method
