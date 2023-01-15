.class Lorg/g_oku/intruderdetection/MyGalleryActivity$AdapterComparator;
.super Ljava/lang/Object;
.source "MyGalleryActivity.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/g_oku/intruderdetection/MyGalleryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdapterComparator"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;


# direct methods
.method constructor <init>(Lorg/g_oku/intruderdetection/MyGalleryActivity;)V
    .locals 0

    .prologue
    .line 567
    iput-object p1, p0, Lorg/g_oku/intruderdetection/MyGalleryActivity$AdapterComparator;->this$0:Lorg/g_oku/intruderdetection/MyGalleryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "s"    # Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Object;

    .prologue
    .line 569
    check-cast p2, Lorg/g_oku/intruderdetection/ImageItem;

    .end local p2    # "t":Ljava/lang/Object;
    iget v0, p2, Lorg/g_oku/intruderdetection/ImageItem;->id:I

    check-cast p1, Lorg/g_oku/intruderdetection/ImageItem;

    .end local p1    # "s":Ljava/lang/Object;
    iget v1, p1, Lorg/g_oku/intruderdetection/ImageItem;->id:I

    sub-int/2addr v0, v1

    return v0
.end method
