import pickle


def extract_model(pathToModel):
    f = open(pathToModel, 'rb')
    model = pickle.load(f)
    model["y_pred"] = None
    model["y_test"] = None
    f.close()
    return model


print(extract_model("../train_model_classification_0.pkl"))
print("\n#################################################################################################################\n")

print(extract_model("../attacked_apps_classification_0.pkl"))
