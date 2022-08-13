#pragma once
#include "tensorflow/c/c_api.h"
#include "tensorflow/c/c_api_experimental.h"
#include <string>
#include <iostream>
class TensorflowModel
{
private:
	int inputDataSize;
	int targetDataSize;
	float* predictions;
	int* predictedIndices;
	int batchesNum;
	TF_Graph* graph;
	TF_Session* session;
	TF_Status* status;
	TF_Output input,hidden,target, output;
	TF_Operation *init_op, *train_op, *save_op, *restore_op;
	TF_Operation *assignWtDense0_op, *assignWtDense1_op,*assignWtDense2_op,*readWtDense0_op, *readWtDense1_op,*readWtDense2_op;
	TF_Operation *assignBsDense0_op, *assignBsDense1_op,*assignBsDense2_op,*readBsDense0_op, *readBsDense1_op,*readBsDense2_op;
	TF_Output checkpoint_file;
	enum SaveOrRestore { SAVE, RESTORE };
	void Okay(){if (TF_GetCode(status) != TF_OK) throw std::runtime_error("ERROR: " + std::string(TF_Message(status)));}
	TF_Buffer* ReadFile(const char* filename);
	TF_Tensor* ScalarStringTensor(const char* data, TF_Status* status);
	void Checkpoint(int type);
public:
	TensorflowModel();
	~TensorflowModel();
	void Init();
	int* Predict(const float*inputData, int batchSize);
	float* getPredictions(){return predictions;}
	void Train(const float*inputData,const float*targetData,int batch_size);
	void Save(){Checkpoint(SAVE);}
	void Load(){Checkpoint(RESTORE);}
};