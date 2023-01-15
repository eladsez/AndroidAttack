.class Lanywheresoftware/b4a/objects/MediaPlayerWrapper$1;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->Initialize2(Lanywheresoftware/b4a/BA;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lanywheresoftware/b4a/objects/MediaPlayerWrapper;

.field private final synthetic val$ba:Lanywheresoftware/b4a/BA;


# direct methods
.method constructor <init>(Lanywheresoftware/b4a/objects/MediaPlayerWrapper;Lanywheresoftware/b4a/BA;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper$1;->this$0:Lanywheresoftware/b4a/objects/MediaPlayerWrapper;

    iput-object p2, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 51
    iget-object v0, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper$1;->val$ba:Lanywheresoftware/b4a/BA;

    iget-object v1, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper$1;->this$0:Lanywheresoftware/b4a/objects/MediaPlayerWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lanywheresoftware/b4a/objects/MediaPlayerWrapper$1;->this$0:Lanywheresoftware/b4a/objects/MediaPlayerWrapper;

    iget-object v3, v3, Lanywheresoftware/b4a/objects/MediaPlayerWrapper;->eventName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "_complete"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3}, Lanywheresoftware/b4a/BA;->raiseEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    return-void
.end method
