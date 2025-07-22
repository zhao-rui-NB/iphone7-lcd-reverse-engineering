#include	<windows.h>
#include	<stdlib.h>
#include	<stdio.h>
#include	<conio.h>
#include	<winioctl.h>
#include <time.h>
#include	"CH375DLL.H"			
#pragma comment(lib,"CH375DLL")
//#define		TEST_DATA_LEN		0x8000000
#define TEST_DATA_LEN 0x800000  // 8MB
#define		TEST_NUM     		1000
#define		PRINT_DATA          1
unsigned char	mReadBuf[TEST_DATA_LEN];
unsigned char	mWriteBuf[TEST_DATA_LEN];




void test_speed() {
	unsigned long mLength, mTestCount, mErrCnt, mArg, mFirstTick, mLastTick;
	long long mTotal = 0;
	double          speed;
	USHORT          mCount = 0;
	printf("\nCH372/CH375 Bulk Data Test Program V1.1 ,   Copyright (C) W.ch 2004.12\n");
	printf("test data correctness \n");
	mArg = TEST_DATA_LEN;
	//if (CH375OpenDevice(0) == INVALID_HANDLE_VALUE) return;  /* 使用之前必须打开设备 */
	memset(mWriteBuf, 0xFF, sizeof(mWriteBuf));
	mErrCnt = 0;
	mTotal = 0.0;
	unsigned long startTime = GetTickCount();
	unsigned long test_count = 0;

	while (1)  // 循环测试
	{
		while (1) {
			if (CH375OpenDevice(0) == INVALID_HANDLE_VALUE) {
				printf("CH375OpenDevice failed, retrying...\n");
				Sleep(1000);  // 等待1秒后重试
			}
			else {
				printf("CH375OpenDevice success\n");

				startTime = GetTickCount();
				test_count = 0;
				mTotal = 0;
				break;  // 成功打开设备后跳出循环
			}
		}
		while (1)
		{
			mLength = 4096 * 512;

			if (CH375ReadEndP(0, 1, mReadBuf, &mLength))  // 接收成功
			{
				mTotal += mLength;
				if (mLength == 0)
				{
					Sleep(0);  //放弃当前线程的时间片，防止CPU出现100%情况
				}
				test_count++;
				if (test_count % 10 == 0)
				{
					// print the data as uint32 
					//for (int i = 0; i < ((mLength > 64)?64: mLength) / 4; i++)
					//{
					//	unsigned int* pData = (unsigned int*)(mReadBuf + i * 4);
					//	printf("%08X ", *pData);
					//	if ((i + 1) % 8 == 0) printf("\n");
					//}

					printf("receive %d bytes from endpoint 1\n", mLength);

# if PRINT_DATA
					int p_len = 256;
					if (mLength < p_len) {
						p_len = mLength;
					}
					printf("print len : %d\n", p_len);

					for (int i = 0; i < p_len / 4; i++) {
						if (i % (8 * 2) == 0 && i != 0) {
							printf("\n");
						}
						printf("0x%08x, ", ((UINT32*)mReadBuf)[i]);
					}
					printf("\n");

#endif
					float data_speed = mTotal / (1024 * 1024) / ((GetTickCount() - startTime) / 1000.0);
					printf("Total received: %lld bytes, Speed: %.2f MB/s\n", mTotal, data_speed);
				}
			}
			else
			{
				printf("CH375ReadData return error, length=%d\n", mTestCount, mTestCount, mTotal);
				break; // 读取失败，跳出循环
			}
		}
	}
	CH375CloseDevice(0);
}

void read_8mb_and_save() {
	unsigned long mLength;
	long long totalReceived = 0;
	FILE* fp = NULL;
	char filename[256];
	time_t rawtime;
	struct tm* timeinfo;

	// 檔名 = data_YYYYMMDD_HHMMSS.bin
	time(&rawtime);
	timeinfo = localtime(&rawtime);
	strftime(filename, sizeof(filename), "data_%Y%m%d_%H%M%S.bin", timeinfo);

	printf("CH375 Data Reader - Read 8MB and Save to File\n");

	// 嘗試開啟裝置
	while (1) {
		if (CH375OpenDevice(0) == INVALID_HANDLE_VALUE) {
			printf("CH375OpenDevice failed, retrying in 1s...\n");
			Sleep(1000);
		}
		else {
			printf("CH375OpenDevice success\n");
			break;
		}
	}

	// 開啟輸出檔案
	fp = fopen(filename, "wb");
	if (!fp) {
		printf("Failed to open output file: %s\n", filename);
		CH375CloseDevice(0);
		return;
	}

	printf("Saving data to file: %s\n", filename);

	while (totalReceived < TEST_DATA_LEN) {
		mLength = TEST_DATA_LEN;
		if (CH375ReadEndP(0, 1, mReadBuf, &mLength)) {
			if (mLength == 0) {
				Sleep(0);
				continue;
			}

			fwrite(mReadBuf, 1, mLength, fp);
			totalReceived += mLength;

			printf("Read %lu bytes, Total: %lld bytes\n", mLength, totalReceived);
		}
		else {
			printf("CH375ReadEndP failed\n");
			break;
		}
	}

	printf("Finished reading %lld bytes\n", totalReceived);

	fclose(fp);
	CH375CloseDevice(0);
}


void clear_buffer(int dev_id, int check_times, unsigned long totalBytes) {
	// try to continue reading totalBytes from device dev_id, until contunue get 0 bytes check_times times
	unsigned long length;
	int emptyCount = 0;
	while (emptyCount < check_times) {
		length = totalBytes;
		unsigned char success = CH375ReadEndP(dev_id, 1, mReadBuf, &length);
		if (success) {
			if (length == 0) {
				emptyCount++;
				printf("[clear_buffer] Read 0 bytes, count: %d\n", emptyCount);
			}
			else {
				emptyCount = 0;  // 重置计数器
			}
		}
		else {
			printf("[clear_buffer] CH375ReadEndP failed\n");
			break;
		}
	}
	// 如果连续 check_times 次都读取到 0 字节，认为缓冲区已清空
	if (emptyCount >= check_times) {
		printf("[clear_buffer] Buffer cleared\n");
	}
	else {
		printf("[clear_buffer] Buffer not cleared, still has data\n");
	}
}
	

void read_and_save_to_file(int dev_id, const char* filename, unsigned long totalBytes) {
	FILE* fp = fopen(filename, "wb");
	if (!fp) {
		printf("Failed to open output file: %s\n", filename);
		return;
	}
	unsigned long length;
	long long totalReceived = 0;
	while (totalReceived < totalBytes) {
		length = totalBytes - totalReceived;
		unsigned char success = CH375ReadEndP(dev_id, 1, mReadBuf, &length);
		if (success) {
			if (length == 0) {
				Sleep(0);  // 放弃当前线程的时间片，防止CPU出现100%情况
				continue;
			}
			fwrite(mReadBuf, 1, length, fp);
			totalReceived += length;
		}
		else {
			printf("CH375ReadEndP failed\n");
			break;
		}
	}
	printf("Finished reading %lld bytes, saved to %s\n", totalReceived, filename);
	fclose(fp);
}

void make_filename(char* buffer, size_t size) {
	time_t rawtime;
	struct tm* timeinfo;
	time(&rawtime);
	timeinfo = localtime(&rawtime);
	strftime(buffer, size, "data_%Y%m%d_%H%M%S.bin", timeinfo);
}
// comp 2 file is the same 
unsigned char compare_files(const char* file1, const char* file2) {
    FILE* fp1 = fopen(file1, "rb");
    FILE* fp2 = fopen(file2, "rb");
    if (!fp1 || !fp2) {
        printf("[compare_files] Failed to open files for comparison\n");
        if (fp1) fclose(fp1);
        if (fp2) fclose(fp2);
        return 0;  // Return 0 if files cannot be opened
    }

    // 檢查檔案大小是否相同
    fseek(fp1, 0, SEEK_END);
    fseek(fp2, 0, SEEK_END);
    long size1 = ftell(fp1);
    long size2 = ftell(fp2);
    
    if (size1 != size2) {
        fclose(fp1);
        fclose(fp2);
        return 0;  // 大小不同，檔案肯定不同
    }
    
    // 回到檔案開頭
    rewind(fp1);
    rewind(fp2);
    
    // 逐字節比較
    int ch1, ch2;
    do {
        ch1 = fgetc(fp1);
        ch2 = fgetc(fp2);
        
        if (ch1 != ch2) {
            fclose(fp1);
            fclose(fp2);
            return 0;  // 發現不同字節
        }
    } while (ch1 != EOF && ch2 != EOF);
    
    fclose(fp1);
    fclose(fp2);
    return 1;  // 檔案完全相同
}

	

void test_read_2_file() {
	unsigned long length;

	char filename1[256];
	char filename2[256];

	// 嘗試開啟裝置
	while (1) {
		if (CH375OpenDevice(0) == INVALID_HANDLE_VALUE) {
			printf("CH375OpenDevice failed, retrying in 1s...\n");
			Sleep(1000);
		}
		else {
			printf("CH375OpenDevice success\n");
			//CH375SetBufUploadEx(  // 设定内部缓冲上传模式
			//	0,  // 指定CH375设备序号,0对应第一个设备
			//	1,// 为0则禁止内部缓冲上传模式,使用直接上传,非0则启用内部缓冲上传模式并清除缓冲区中的已有数据
			//	0,		// 端点号，有效值为1到8
			//	4*1024*1024 );   //每包缓冲区大小，最大4MB

			CH375SetTimeoutEx(  // 设置USB数据读写的超时
				0,  // 指定CH375设备序号
				500,  // 指定USB写出数据块的超时时间,以毫秒mS为单位,0xFFFFFFFF指定不超时(默认值)
				500,  // 指定USB读取数据块的超时时间,以毫秒mS为单位,0xFFFFFFFF指定不超时(默认值)
				500,  // 指定USB辅助下传数据的超时时间,以毫秒mS为单位,0xFFFFFFFF指定不超时(默认值)
				500);  // 指定USB中断上传数据的超时时间,以毫秒mS为单位,0xFFFFFFFF指定不超时(默认值)
			break;
		}
	}


	printf("Starting to clear buffer...\n");
	clear_buffer(0, 5, TEST_DATA_LEN);
	// printf("Buffer cleared, now reading and saving to file...\n");
	// try to save 2 file 

	for (int i = 0; i < 10; i++) {
		printf("please press output data to file %d\n", 1);
		make_filename(filename1, sizeof(filename1));
		read_and_save_to_file(0, filename1, TEST_DATA_LEN);

		printf("please press output data to file %d\n", 2);
		make_filename(filename2, sizeof(filename2));
		read_and_save_to_file(0, filename2, TEST_DATA_LEN);

		printf("Data saved to %s and %s\n", filename1, filename2);

		printf("Comparing files %s and %s...\n", filename1, filename2);
		if (compare_files(filename1, filename2)) {
			printf("[success] Files are same!\n");
		}
		else {
			printf("[error] Files are different!\n");
		}
	}
	CH375CloseDevice(0);
}



void main(int argc, char** argv)
{
	//test_speed();
	//read_8mb_and_save();
	test_read_2_file();

}
