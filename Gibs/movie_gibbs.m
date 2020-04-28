out = VideoWriter('gibbs_plot_all_5.avi');
out.FrameRate = 6;%一秒播放几帧
open(out);%打开视频文件
for k=0:200
    gibs_plot(k);
    F=getframe(gcf);%获取当前帧
    writeVideo(out, F);%将当前帧写入视频文件
end
close(out)