.class Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver$1;
.super Ljava/lang/Object;
.source "FingerNotesServiceReceiver.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;


# direct methods
.method constructor <init>(Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver$1;->this$0:Lcom/blogspot/mvnblogbuild/fingernotes/service/FingerNotesServiceReceiver;

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 109
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 110
    return-void
.end method
