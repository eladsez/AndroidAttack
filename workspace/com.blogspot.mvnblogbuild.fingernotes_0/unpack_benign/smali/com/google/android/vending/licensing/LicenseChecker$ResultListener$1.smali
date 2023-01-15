.class Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;
.super Ljava/lang/Object;
.source "LicenseChecker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;-><init>(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;


# direct methods
.method constructor <init>(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 206
    const-string v0, "LicenseChecker"

    const-string v1, "Check timed out."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-static {v0}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->access$2(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/google/android/vending/licensing/LicenseChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-static {v1}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->access$0(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/google/android/vending/licensing/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->access$0(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V

    .line 208
    iget-object v0, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-static {v0}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->access$2(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/google/android/vending/licensing/LicenseChecker;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener$1;->this$1:Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;

    invoke-static {v1}, Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;->access$0(Lcom/google/android/vending/licensing/LicenseChecker$ResultListener;)Lcom/google/android/vending/licensing/LicenseValidator;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/vending/licensing/LicenseChecker;->access$1(Lcom/google/android/vending/licensing/LicenseChecker;Lcom/google/android/vending/licensing/LicenseValidator;)V

    .line 209
    return-void
.end method
