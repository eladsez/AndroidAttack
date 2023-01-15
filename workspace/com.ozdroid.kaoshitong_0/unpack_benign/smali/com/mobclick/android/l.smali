.class Lcom/mobclick/android/l;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/mobclick/android/UmengFeedback;


# direct methods
.method constructor <init>(Lcom/mobclick/android/UmengFeedback;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclick/android/l;->a:Lcom/mobclick/android/UmengFeedback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/mobclick/android/l;->a:Lcom/mobclick/android/UmengFeedback;

    invoke-static {v0}, Lcom/mobclick/android/UmengFeedback;->a(Lcom/mobclick/android/UmengFeedback;)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    iget-object v1, p0, Lcom/mobclick/android/l;->a:Lcom/mobclick/android/UmengFeedback;

    invoke-static {v1}, Lcom/mobclick/android/UmengFeedback;->b(Lcom/mobclick/android/UmengFeedback;)Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iget-object v2, p0, Lcom/mobclick/android/l;->a:Lcom/mobclick/android/UmengFeedback;

    invoke-static {v2}, Lcom/mobclick/android/UmengFeedback;->c(Lcom/mobclick/android/UmengFeedback;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mobclick/android/l;->a:Lcom/mobclick/android/UmengFeedback;

    iget-object v4, p0, Lcom/mobclick/android/l;->a:Lcom/mobclick/android/UmengFeedback;

    invoke-static {v4, v0, v1, v2}, Lcom/mobclick/android/UmengFeedback;->a(Lcom/mobclick/android/UmengFeedback;IILjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/mobclick/android/UmengFeedback;->a(Lcom/mobclick/android/UmengFeedback;Lorg/json/JSONObject;)V

    invoke-static {}, Lcom/mobclick/android/UmengFeedback;->a()Lcom/mobclick/android/e;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclick/android/l;->a:Lcom/mobclick/android/UmengFeedback;

    invoke-static {v1}, Lcom/mobclick/android/UmengFeedback;->d(Lcom/mobclick/android/UmengFeedback;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mobclick/android/e;->onFeedbackReturned(Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/mobclick/android/l;->a:Lcom/mobclick/android/UmengFeedback;

    invoke-virtual {v0}, Lcom/mobclick/android/UmengFeedback;->finish()V

    return-void
.end method
