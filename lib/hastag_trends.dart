import 'package:flutter/material.dart';

class HastagTrends extends StatelessWidget {
  const HastagTrends({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Trends',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '#SweaterVests',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        _buildSmallItem(
                            'assets/images/shirts_10.png', '₹2,899', '₹1,299'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_9.png', '₹2,999', '₹1,199'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_12.png', '₹2,899', '₹1,699'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_15.png', '₹2,899', '₹1,299'),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: _buildLargeItem(
                        'assets/images/shirts_13.png', '₹2,899', '₹1,199'),
                  ),
                ],
              ),
              SizedBox(height: 36),
              Text(
                '#BohoDresses',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        _buildSmallItem(
                            'assets/images/shirts_11.png', '₹2,899', '₹1,299'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_9.png', '₹2,999', '₹1,199'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_14.png', '₹2,899', '₹1,699'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_15.png', '₹2,899', '₹1,299'),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Expanded(
                    flex: 3,
                    child: _buildLargeItem(
                        'assets/images/shirts_11.png', '₹2,899', '₹1,199'),
                  ),
                ],
              ),
              SizedBox(height: 36),
              Text(
                '#CuteFemmeDresses',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        _buildSmallItem(
                            'assets/images/shirts_11.png', '₹2,899', '₹1,299'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_9.png', '₹2,999', '₹1,199'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_13.png', '₹2,899', '₹1,699'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_15.png', '₹2,899', '₹1,299'),
                      ],
                    ),
                  ),
                  SizedBox(height: 8),
                  Expanded(
                    flex: 3,
                    child: _buildLargeItem(
                        'assets/images/shirts_9.png', '₹2,899', '₹1,199'),
                  ),
                ],
              ),
              SizedBox(height: 36),
              Text(
                '#BandauMaxiDresses',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        _buildSmallItem(
                            'assets/images/shirts_15.png', '₹2,899', '₹1,299'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_12.png', '₹2,999', '₹1,199'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_13.png', '₹2,899', '₹1,699'),
                        SizedBox(height: 8),
                        _buildSmallItem(
                            'assets/images/shirts_10.png', '₹2,899', '₹1,299'),
                      ],
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    flex: 3,
                    child: _buildLargeItem(
                        'assets/images/shirts_15.png', '₹2,899', '₹1,199'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSmallItem(String image, String oldPrice, String newPrice) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(image, height: 80, fit: BoxFit.cover),
          _buildPriceTag(oldPrice, newPrice),
        ],
      ),
    );
  }

  Widget _buildLargeItem(String image, String oldPrice, String newPrice) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Image.asset(image, height: 344, fit: BoxFit.cover),
          _buildPriceTag(oldPrice, newPrice),
        ],
      ),
    );
  }

  Widget _buildPriceTag(String oldPrice, String newPrice) {
    return Container(
      padding: EdgeInsets.all(6),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
          colors: [Colors.black54, const Color.fromARGB(0, 151, 11, 11)],
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            oldPrice,
            style: TextStyle(
              color: Colors.white70,
              decoration: TextDecoration.lineThrough,
              fontSize: 14,
            ),
          ),
          SizedBox(width: 5),
          Text(
            newPrice,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
