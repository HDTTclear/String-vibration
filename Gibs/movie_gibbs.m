out = VideoWriter('gibbs_plot_all_5.avi');
out.FrameRate = 6;%һ�벥�ż�֡
open(out);%����Ƶ�ļ�
for k=0:200
    gibs_plot(k);
    F=getframe(gcf);%��ȡ��ǰ֡
    writeVideo(out, F);%����ǰ֡д����Ƶ�ļ�
end
close(out)