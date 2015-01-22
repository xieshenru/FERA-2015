function [geom_data] = Read_geom_files(users, hog_data_dir)

    geom_data = [];

    for i=1:numel(users)
        
        geom_file = [hog_data_dir, '/../clm_params/LeftVideo' users{i} '_comp.txt'];
        res = dlmread(geom_file, ' ');
        res = res(:,15:2:end);       
        
        geom_data = cat(1, geom_data, res);
                
    end
end