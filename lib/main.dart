import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const EdProApp());
}

class EdProApp extends StatelessWidget {
  const EdProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ED Pro',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const VideoEditorHomePage(),
    );
  }
}

class VideoEditorHomePage extends StatefulWidget {
  const VideoEditorHomePage({super.key});

  @override
  State<VideoEditorHomePage> createState() => _VideoEditorHomePageState();
}

class _VideoEditorHomePageState extends State<VideoEditorHomePage> {
  final ImagePicker _picker = ImagePicker();
  XFile? _selectedVideo;

  Future<void> _pickVideo() async {
    final XFile? video = await _picker.pickVideo(source: ImageSource.gallery);
    if (video != null) {
      setState(() {
        _selectedVideo = video;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ED Pro - Trình chỉnh sửa video'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (_selectedVideo != null)
                Text(
                  'Đã chọn video:\n${_selectedVideo!.name}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              else
                const Text(
                  'Chưa chọn video nào.\nHãy nhấn nút bên dưới để chọn video!',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: _pickVideo,
                icon: const Icon(Icons.video_library),
                label: const Text('Chọn Video từ Thư viện'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
