.class Lcom/mobclick/android/h;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobclick/android/MobclickAgent;


# direct methods
.method constructor <init>(Lcom/mobclick/android/MobclickAgent;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclick/android/h;->a:Lcom/mobclick/android/MobclickAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
