.class Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Lcom/google/android/vending/licensing/LicenseCheckerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyLicenseCheckerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;


# direct methods
.method private constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;)V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;-><init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V

    return-void
.end method


# virtual methods
.method public allow(I)V
    .locals 1
    .param p1, "policyReason"    # I

    .prologue
    .line 113
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    :cond_0
    return-void
.end method

.method public applicationError(I)V
    .locals 1
    .param p1, "errorCode"    # I

    .prologue
    .line 129
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    :cond_0
    return-void
.end method

.method public dontAllow(I)V
    .locals 1
    .param p1, "policyReason"    # I

    .prologue
    .line 119
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    const/16 v0, 0x123

    if-eq p1, v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$MyLicenseCheckerCallback;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-static {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->access$3(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V

    goto :goto_0
.end method
