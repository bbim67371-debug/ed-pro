import 'package:flutter/material.dart';

void main() {
  runApp(const VideoStarProApp());
}

class VideoStarProApp extends StatelessWidget {
  const VideoStarProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Star Android Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F0F14),
        primaryColor: const Color(0xFF8A2BE2),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF9D4EDD),
          secondary: Color(0xFFFF007F),
          surface: Color(0xFF1E1E28),
        ),
      ),
      home: const MainHomeScreen(),
    );
  }
}

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  String? selectedVideoPath;
  String currentPresetCode = "Mặc định (Chưa nhập mã)";

  void _importVideo() {
    setState(() {
      selectedVideoPath = "sample_video_star_01.mp4";
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Đã chọn video từ thư viện!')),
    );
  }

  void _showImportCodeDialog() {
    final TextEditingController codeController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1E1E28),
        title: const Row(
          children: [
            Icon(Icons.qr_code_scanner, color: Color(0xFFFF007F)),
            SizedBox(width: 8),
            Text('Nhập Mã Video Star Pro'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Dán chuỗi mã hoặc mã QR Video Star Pro để tự động áp dụng Effect & Transition:',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: codeController,
              decoration: InputDecoration(
                hintText: 'Nhập mã (VD: VS-PRO-9981-FX)...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.black26,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Hủy', style: TextStyle(color: Colors.grey)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF9D4EDD),
            ),
            onPressed: () {
              if (codeController.text.isNotEmpty) {
                setState(() {
                  currentPresetCode = codeController.text;
                });
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Đã kích hoạt mã: ${codeController.text}')),
                );
              }
            },
            child: const Text('Áp dụng'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF181820),
        title: const Row(
          children: [
            Text(
              'VIDEO STAR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 6),
            ContainerProBadge(),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner, color: Color(0xFFFF007F)),
            tooltip: 'Nhập Video Star Code',
            onPressed: _showImportCodeDialog,
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Khung Xem Trước Video (Preview Screen)
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFF333345), width: 1.5),
              ),
              child: Center(
                child: selectedVideoPath == null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center
                      import 'package:flutter/material.dart';

void main() {
  runApp(const VideoStarProApp());
}

class VideoStarProApp extends StatelessWidget {
  const VideoStarProApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Video Star Android Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F0F14),
        primaryColor: const Color(0xFF8A2BE2),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF9D4EDD),
          secondary: Color(0xFFFF007F),
          surface: Color(0xFF1E1E28),
        ),
      ),
      home: const MainHomeScreen(),
    );
  }
}

class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({super.key});

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  String? selectedVideoPath;
  String currentPresetCode = "Mặc định (Chưa nhập mã)";

  void _importVideo() {
    setState(() {
      selectedVideoPath = "sample_video_star_01.mp4";
    });
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Đã chọn video từ thư viện!')),
    );
  }

  void _showImportCodeDialog() {
    final TextEditingController codeController = TextEditingController();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: const Color(0xFF1E1E28),
        title: const Row(
          children: [
            Icon(Icons.qr_code_scanner, color: Color(0xFFFF007F)),
            SizedBox(width: 8),
            Text('Nhập Mã Video Star Pro'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Dán chuỗi mã hoặc mã QR Video Star Pro để tự động áp dụng Effect & Transition:',
              style: TextStyle(fontSize: 13, color: Colors.grey),
            ),
            const SizedBox(height: 12),
            TextField(
              controller: codeController,
              decoration: InputDecoration(
                hintText: 'Nhập mã (VD: VS-PRO-9981-FX)...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                filled: true,
                fillColor: Colors.black26,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Hủy', style: TextStyle(color: Colors.grey)),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF9D4EDD),
            ),
            onPressed: () {
              if (codeController.text.isNotEmpty) {
                setState(() {
                  currentPresetCode = codeController.text;
                });
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Đã kích hoạt mã: ${codeController.text}')),
                );
              }
            },
            child: const Text('Áp dụng'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF181820),
        title: const Row(
          children: [
            Text(
              'VIDEO STAR',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                letterSpacing: 1.2,
                color: Colors.white,
              ),
            ),
            SizedBox(width: 6),
            ContainerProBadge(),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.qr_code_scanner, color: Color(0xFFFF007F)),
            tooltip: 'Nhập Video Star Code',
            onPressed: _showImportCodeDialog,
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Khung Xem Trước Video
          Expanded(
            flex: 5,
            child: Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: const Color(0xFF333345), width: 1.5),
              ),
              child: Center(
                child: selectedVideoPath == null
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.video_library_outlined,
                              size: 64, color: Color(0xFF9D4EDD)),
                          const SizedBox(height: 12),
                          const Text(
                            'Chưa có video được chọn',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF9D4EDD),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 12),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: _importVideo,
                            icon: const Icon(Icons.add_a_photo),
                            label: const Text('Thêm Video Mới'),
                          ),
                        ],
                      )
                    : Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.play_circle_fill,
                              size: 72, color: Color(0xFFFF007F)),
                          const SizedBox(height: 8),
                          Text(
                            'Video: $selectedVideoPath',
                            style: const TextStyle(color: Colors.white70),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Mã preset: $currentPresetCode',
                            style: const TextStyle(
                                color: Color(0xFF9D4EDD), fontSize: 12),
                          ),
                        ],
                      ),
              ),
            ),
          ),

          // Thanh Công Cụ Hiệu Ứng
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: const Color(0xFF181820),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildToolItem(Icons.auto_awesome, 'Multi-Layer', () {}),
                _buildToolItem(Icons.slow_motion_video, 'Velocity', () {}),
                _buildToolItem(Icons.style, 'FX Presets', () {}),
                _buildToolItem(Icons.music_note, 'Thêm Nhạc', () {}),
                _buildToolItem(Icons.qr_code, 'Nhập Code', _showImportCodeDialog),
              ],
            ),
          ),

          // Timeline & Nút Xuất Video
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(16),
              color: const Color(0xFF12121A),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'TIMELINE DỰ ÁN',
                        style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey),
                      ),
                      Text(
                        'Gói: PRO UNLOCKED',
                        style: TextStyle(
                            fontSize: 11,
                            color: Colors.greenAccent[400],
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1E1E28),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Center(
                      child: Text('--- Kéo thanh Timeline để cắt giật nhát nhạc ---',
                          style: TextStyle(color: Colors.white38, fontSize: 12)),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF007F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Đang xuất Video Full HD 60fps Pro...')),
                        );
                      },
                      icon: const Icon(Icons.file_upload_outlined),
                      label: const Text(
                        'XUẤT VIDEO (NO WATERMARK)',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildToolItem(IconData icon, String label, VoidCallback onTap) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8),
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: const Color(0xFF9D4EDD), size: 26),
            const SizedBox(height: 4),
            Text(
              label,
              style: const TextStyle(fontSize: 11, color: Colors.white70),
            ),
          ],
        ),
      ),
    );
  }
}

class ContainerProBadge extends StatelessWidget {
  const ContainerProBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFFF007F), Color(0xFF9D4EDD)],
        ),
        borderRadius: BorderRadius.circular(6),
      ),
      child: const Text(
        'PRO',
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
                      
                      
