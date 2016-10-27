using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Media;

namespace InkCanvasTest
{
        public class CustomStroke:Stroke
        {
            public CustomStroke(StylusPointCollection pts)
             : base(pts)
            {
                this.StylusPoints = pts;
            }

            protected override void DrawCore(DrawingContext drawingContext, DrawingAttributes drawingAttributes)
            {
                if (drawingContext == null)
                {
                    throw new ArgumentNullException("drawingContext");
                }
                if (null == drawingAttributes)
                {
                    throw new ArgumentNullException("drawingAttributes");
                }
                DrawingAttributes originalDa = drawingAttributes.Clone();
                SolidColorBrush brush2 = new SolidColorBrush(Colors.Gold);
                Pen pen = new Pen(brush2, 2);
                brush2.Freeze();
                drawingContext.DrawRectangle(brush2, null, new Rect((Point)StylusPoints[0], (Point)StylusPoints[StylusPoints.Count-1]));
            }

            Point GetTheLeftTopPoint()
            {
                if (this.StylusPoints == null)
                    throw new ArgumentNullException("StylusPoints");
                StylusPoint tmpPoint = new StylusPoint(double.MaxValue, double.MaxValue);
                foreach (StylusPoint point in this.StylusPoints)
                {
                    if ((point.X < tmpPoint.X) || (point.Y < tmpPoint.Y))
                        tmpPoint = point;
                }
                return tmpPoint.ToPoint();
            }

            Point GetTheRightBottomPoint()
            {
                if (this.StylusPoints == null)
                    throw new ArgumentNullException("StylusPoints");
                StylusPoint tmpPoint = new StylusPoint(0, 0);
                foreach (StylusPoint point in this.StylusPoints)
                {
                    if ((point.X > tmpPoint.X) || (point.Y > tmpPoint.Y))
                        tmpPoint = point;
                }
                return tmpPoint.ToPoint();
            }
        }
    
}
