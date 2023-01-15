.class Lnet/sharpspot/dinnerin/Activities/SignInActivity$4;
.super Lcom/parse/SignUpCallback;
.source "SignInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Activities/SignInActivity;->CreateNewAccount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;


# direct methods
.method constructor <init>(Lnet/sharpspot/dinnerin/Activities/SignInActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$4;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    .line 115
    invoke-direct {p0}, Lcom/parse/SignUpCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 119
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$4;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    invoke-static {v0, p1}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->access$3(Lnet/sharpspot/dinnerin/Activities/SignInActivity;Lcom/parse/ParseException;)V

    .line 120
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$4;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->dismissDialog(I)V

    .line 121
    return-void
.end method
