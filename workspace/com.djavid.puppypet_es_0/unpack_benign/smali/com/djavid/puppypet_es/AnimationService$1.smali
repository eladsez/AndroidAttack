.class Lcom/djavid/puppypet_es/AnimationService$1;
.super Ljava/lang/Object;
.source "AnimationService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/djavid/puppypet_es/AnimationService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/djavid/puppypet_es/AnimationService;


# direct methods
.method constructor <init>(Lcom/djavid/puppypet_es/AnimationService;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/djavid/puppypet_es/AnimationService$1;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/djavid/puppypet_es/AnimationService$1;->this$0:Lcom/djavid/puppypet_es/AnimationService;

    invoke-static {v0, p1}, Lcom/djavid/puppypet_es/AnimationService;->access$10(Lcom/djavid/puppypet_es/AnimationService;Landroid/os/Message;)Z

    move-result v0

    return v0
.end method
