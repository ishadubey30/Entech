import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class ViewPDF extends StatefulWidget {
  const ViewPDF({Key? key}) : super(key: key);

  @override
  State<ViewPDF> createState() => _ViewPDFState();
}

class _ViewPDFState extends State<ViewPDF> {
  late Future<ListResult> futureFiles;
  Map<int, double> downloadProgress = {};

  @override
  void initState() {
    super.initState();

    futureFiles = FirebaseStorage.instance.ref('/files').listAll();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Download Files"),
        ),
        body: FutureBuilder<ListResult>(
          future: futureFiles,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final files = snapshot.data!.items;
              return ListView.builder(
                itemCount: files.length,
                itemBuilder: (context, index) {
                  final file = files[index];
                  double? progress = downloadProgress[index];
                  return ListTile(
                    title: Text(file.name),
                    subtitle: progress != null
                        ? LinearProgressIndicator(
                            value: progress,
                            backgroundColor: Colors.black,
                          )
                        : null,
                    trailing: IconButton(
                      icon: const Icon(
                        Icons.download,
                        color: Colors.black,
                      ),
                      onPressed: () => downloadFile(index, file),
                    ),
                  );
                },
              );
            } else if (snapshot.hasError) {
              return const Center(child: Text("Error occured"));
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      );
  Future downloadFile(int index, Reference ref) async {
    final url = await ref.getDownloadURL();
    final tempDir = await getTemporaryDirectory();
    final path = '${tempDir.path}/${ref.name}';

    await Dio().download(
      url,
      path,
      onReceiveProgress: (received, total) {
        double progress = received / total;

        setState(() {
          downloadProgress[index] = progress;
        });
      },
    );

    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text('Downloaded ${ref.name}')));
  }
}
