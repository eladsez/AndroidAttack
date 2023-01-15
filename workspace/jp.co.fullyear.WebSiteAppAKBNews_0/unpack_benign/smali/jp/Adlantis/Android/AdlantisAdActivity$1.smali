.class Ljp/Adlantis/Android/AdlantisAdActivity$1;
.super Ljp/Adlantis/Android/ExpandedAdImageView;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisAdActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/Adlantis/Android/AdlantisAdActivity;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdlantisAdActivity;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisAdActivity$1;->this$0:Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-direct {p0, p2}, Ljp/Adlantis/Android/ExpandedAdImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Ljp/Adlantis/Android/ExpandedAdImageView;->onSizeChanged(IIII)V

    const-string v0, "AdlantisAdActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ExpandedAdImageView onSizeChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisAdActivity$1;->this$0:Ljp/Adlantis/Android/AdlantisAdActivity;

    invoke-static {v0}, Ljp/Adlantis/Android/AdlantisAdActivity;->access$000(Ljp/Adlantis/Android/AdlantisAdActivity;)V

    return-void
.end method
