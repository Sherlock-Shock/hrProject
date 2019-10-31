package cn.wyu.controller;

import java.io.File;

import java.io.IOException;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import java.util.Queue;

import org.apache.commons.io.FileUtils;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import cn.wyu.pojo.FileBean;

@Controller
public class UpdownFileController {
    
	@RequestMapping("upload")
	public String upload(@RequestParam String name,@RequestParam("file") List<MultipartFile> fileList ,Model model) {
		System.out.println("lailiao");
		System.out.println(name);
		
		//fileList.forEach(i->System.out.println(i));
		String uploadinfo="0";

		if(!fileList.isEmpty()&&fileList.size()!=0) {
			for(MultipartFile file:fileList) {
				String originalFilename = file.getOriginalFilename();
				String dirPath = "D:\\ssmupload\\";
				File filePath = new File(dirPath);
				
				//判断文件夹是否存在，否则创建
				if(!filePath.exists()) {
					filePath.mkdirs();
				}
				
				//文件名
				//时间戳
				String sd = new SimpleDateFormat("yyyyMMddHHmmssSSS").format(new Date());
				String newFilename=name+"_"+sd+"_"+originalFilename;
				
					
						try {
							file.transferTo(new File(dirPath+newFilename));
						} catch (IllegalStateException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						} catch (IOException e) {
							// TODO Auto-generated catch block
							e.printStackTrace();
						}
					
						uploadinfo="1";

				
			}
		}
		
		
		model.addAttribute("uploadinfo", uploadinfo);
		
		return "upload";

		
	}
	
	@RequestMapping("/getFileList")
	public String getFileList(Model model) {
		String filePath="D:\\ssmupload";
		File root =new File(filePath);			
		Queue<File> queue = new LinkedList<>();
		queue.offer(root);
		
		List<FileBean> list=new LinkedList<>();
		while(!queue.isEmpty()) {
			//获得根节点
			File file =queue.poll();
			//获得file文件下面的所有子节点
			File[] files = file.listFiles();
			
			for(File f:files) {
				if(f.isFile()) {
					FileBean bean =new FileBean();
					try {
						bean.setFilepath(f.getCanonicalPath());
					} catch (IOException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					bean.setFilename(f.getName());
					list.add(bean);
				}else {
					queue.offer(f);
				}
			}
		}
		
		System.out.println("文件列表");
		list.forEach(l->System.out.println(l));
		
		model.addAttribute("fileList",list);
		return "fileDownLoad";
	}
	
	/**
	 * 文件下载
	 * @throws IOException 
	 */
	@RequestMapping("/download")
	public ResponseEntity<byte[]> download(String filepath,String filename) throws IOException{
		
		System.out.println(filepath);
		System.out.println(filename);
		filename = URLEncoder.encode(filename,"UTF-8");
		
		File file = new File(filepath);
		
		HttpHeaders headers = new HttpHeaders();
		headers.setContentDispositionFormData("attachment", filename);
		headers.setContentType(MediaType.APPLICATION_OCTET_STREAM);
		
		
		return new  ResponseEntity<byte[]>(FileUtils.readFileToByteArray(file),headers,HttpStatus.OK);
		
	}
	
	
}
