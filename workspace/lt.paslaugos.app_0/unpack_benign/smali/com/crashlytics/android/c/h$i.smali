.class final Lcom/crashlytics/android/c/h$i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/crashlytics/android/c/af$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/c/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lcom/crashlytics/android/c/h;


# direct methods
.method private constructor <init>(Lcom/crashlytics/android/c/h;)V
    .locals 0

    iput-object p1, p0, Lcom/crashlytics/android/c/h$i;->a:Lcom/crashlytics/android/c/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/c/h;Lcom/crashlytics/android/c/h$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/crashlytics/android/c/h$i;-><init>(Lcom/crashlytics/android/c/h;)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/crashlytics/android/c/h$i;->a:Lcom/crashlytics/android/c/h;

    invoke-virtual {v0}, Lcom/crashlytics/android/c/h;->e()Z

    move-result v0

    return v0
.end method
