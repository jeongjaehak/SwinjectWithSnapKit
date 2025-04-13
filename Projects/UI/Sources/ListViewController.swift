//
//  ListViewController.swift
//  UI
//
//  Created by 정재학 on 4/13/25.
//

import Combine
import Controllers
import SnapKit
import UIKit

/// 리스트 UI
public class ListViewController: UIViewController {
    
    // MARK: - Properties
    
    /// 리스트 뷰 모델
    private let viewModel: ListViewModel
    private let input = PassthroughSubject<ListViewModel.Input, Never>()
    private var cancellables = Set<AnyCancellable>()
    
    // MARK: - Init
    
    public init( viewModel: ListViewModel ) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Override
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
        bind()
        input.send(.requestUsers)
    }
}

// MARK: - Private Function

extension ListViewController {
    
    // MARK: - Render
    
    private func setupUI() {
        
    }
    
    // MARK: - Update
    
    private func bind() {
        viewModel.transform(input: input.eraseToAnyPublisher()).sink { [weak self] event in
            guard let self else { return }
            switch event {
            case .updateList(users: let users):
                break
            }
        }.store(in: &cancellables)
    }
}
