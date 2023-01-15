.class Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$2;
.super Ljava/lang/Object;
.source "MenuActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->finishApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-virtual {v0, v1}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->setProgressBarIndeterminateVisibility(Z)V

    .line 145
    iget-object v0, p0, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity$2;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;

    invoke-virtual {v0}, Lcom/blogspot/mvnblogbuild/fingernotes/MenuActivity;->finish()V

    .line 146
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 147
    return-void
.end method
