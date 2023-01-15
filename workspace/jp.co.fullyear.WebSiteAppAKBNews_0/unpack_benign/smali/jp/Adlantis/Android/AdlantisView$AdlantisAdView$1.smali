.class Ljp/Adlantis/Android/AdlantisView$AdlantisAdView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/Adlantis/Android/AsyncImageLoader$ImageLoadedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->setAdByIndex(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;


# direct methods
.method constructor <init>(Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;)V
    .locals 0

    iput-object p1, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView$1;->this$1:Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imageLoaded(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, "AdlantisAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAdByIndex.imageLoaded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView$1;->this$1:Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;->access$400(Ljp/Adlantis/Android/AdlantisView$AdlantisAdView;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method
