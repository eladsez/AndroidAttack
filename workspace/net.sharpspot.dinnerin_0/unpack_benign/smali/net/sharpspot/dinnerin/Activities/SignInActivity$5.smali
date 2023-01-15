.class Lnet/sharpspot/dinnerin/Activities/SignInActivity$5;
.super Lcom/parse/LogInCallback;
.source "SignInActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/sharpspot/dinnerin/Activities/SignInActivity;->SignIn()V
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
    iput-object p1, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    .line 132
    invoke-direct {p0}, Lcom/parse/LogInCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Lcom/parse/ParseUser;Lcom/parse/ParseException;)V
    .locals 2
    .param p1, "user"    # Lcom/parse/ParseUser;
    .param p2, "e"    # Lcom/parse/ParseException;

    .prologue
    .line 136
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    invoke-static {v0, p2}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->access$3(Lnet/sharpspot/dinnerin/Activities/SignInActivity;Lcom/parse/ParseException;)V

    .line 137
    iget-object v0, p0, Lnet/sharpspot/dinnerin/Activities/SignInActivity$5;->this$0:Lnet/sharpspot/dinnerin/Activities/SignInActivity;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lnet/sharpspot/dinnerin/Activities/SignInActivity;->dismissDialog(I)V

    .line 138
    return-void
.end method
