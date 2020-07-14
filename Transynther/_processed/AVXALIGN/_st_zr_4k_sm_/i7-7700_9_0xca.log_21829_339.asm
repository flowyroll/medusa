.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x6977, %rsi
lea addresses_UC_ht+0x12777, %rdi
add %r14, %r14
mov $99, %rcx
rep movsw
nop
inc %r9
lea addresses_UC_ht+0x131b7, %r10
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov (%r10), %r14
dec %rdx
lea addresses_normal_ht+0xa177, %rcx
nop
nop
nop
add $23970, %r10
mov (%rcx), %edx
nop
and %rsi, %rsi
lea addresses_WC_ht+0xea77, %rsi
lea addresses_D_ht+0x15577, %rdi
nop
nop
add $52652, %rax
mov $103, %rcx
rep movsb
xor $12577, %r9
lea addresses_UC_ht+0xb577, %rsi
lea addresses_UC_ht+0x8337, %rdi
nop
nop
nop
nop
cmp %r10, %r10
mov $10, %rcx
rep movsl
xor %r9, %r9
lea addresses_D_ht+0x12e77, %r10
nop
nop
nop
nop
cmp $64468, %rdi
mov (%r10), %eax
cmp %r14, %r14
lea addresses_WT_ht+0x12973, %r10
nop
nop
nop
nop
nop
cmp %r14, %r14
movl $0x61626364, (%r10)
nop
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_WC_ht+0x19ddf, %r10
nop
nop
sub $53821, %rsi
movb $0x61, (%r10)
nop
nop
nop
cmp $16966, %r10
lea addresses_normal_ht+0x2db7, %rcx
nop
nop
nop
nop
xor $11656, %rax
mov $0x6162636465666768, %r14
movq %r14, %xmm6
movups %xmm6, (%rcx)
nop
nop
xor $29864, %rsi
lea addresses_normal_ht+0x19d77, %rsi
lea addresses_A_ht+0x11bac, %rdi
nop
nop
nop
cmp $22929, %rdx
mov $62, %rcx
rep movsq
nop
xor %rdx, %rdx
lea addresses_normal_ht+0x1e0b7, %rsi
lea addresses_normal_ht+0x5bb7, %rdi
nop
nop
nop
inc %rdx
mov $56, %rcx
rep movsl
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x1e977, %r14
clflush (%r14)
nop
nop
nop
add $14842, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm3
vmovups %ymm3, (%r14)
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0x1cb77, %r14
nop
and %rax, %rax
mov (%r14), %r10w
dec %rax
lea addresses_WC_ht+0x8475, %rsi
lea addresses_WT_ht+0xfc77, %rdi
nop
nop
xor $37725, %r9
mov $108, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %rcx
lea addresses_WC_ht+0x977, %r10
nop
xor %rax, %rax
movb (%r10), %dl
nop
nop
nop
nop
sub $64351, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r8
push %rbp
push %rbx
push %rcx
push %rdx
push %rsi

// Store
mov $0x6bf, %r8
nop
nop
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%r8)
nop
nop
nop
nop
nop
inc %r8

// Load
lea addresses_normal+0x1d9f7, %rdx
nop
nop
cmp %r13, %r13
movntdqa (%rdx), %xmm7
vpextrq $0, %xmm7, %rsi
nop
and %rsi, %rsi

// Store
mov $0x977, %rdx
inc %rbx
movw $0x5152, (%rdx)
nop
nop
nop
inc %rbp

// Store
lea addresses_PSE+0x13977, %rsi
nop
nop
nop
nop
xor %rbx, %rbx
mov $0x5152535455565758, %r13
movq %r13, %xmm1
vmovaps %ymm1, (%rsi)
nop
inc %rbp

// Store
lea addresses_D+0x18b47, %rdx
and %r8, %r8
movb $0x51, (%rdx)
nop
nop
nop
sub %r8, %r8

// Store
lea addresses_normal+0x1894b, %r13
nop
nop
inc %rbp
movl $0x51525354, (%r13)
nop
nop
nop
nop
nop
dec %rbp

// Faulty Load
mov $0x977, %rsi
nop
nop
nop
xor %rdx, %rdx
movaps (%rsi), %xmm1
vpextrq $0, %xmm1, %rcx
lea oracles, %r8
and $0xff, %rcx
shlq $12, %rcx
mov (%r8,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 1, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_P'}}
{'src': {'congruent': 7, 'AVXalign': False, 'same': False, 'size': 16, 'NT': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 2, 'NT': False, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': True, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': True, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 2, 'AVXalign': False, 'same': False, 'size': 4, 'NT': True, 'type': 'addresses_normal'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': True, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_D_ht'}}
{'src': {'congruent': 6, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 5, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 4, 'NT': False, 'type': 'addresses_WT_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 3, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': True, 'size': 16, 'NT': False, 'type': 'addresses_normal_ht'}}
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 6, 'same': True, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 10, 'AVXalign': False, 'same': False, 'size': 32, 'NT': False, 'type': 'addresses_WC_ht'}}
{'src': {'congruent': 9, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}}
{'src': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_WC_ht'}, 'OP': 'LOAD'}
{'00': 2544, '58': 19285}
58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 00 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 00 00 00 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 00 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 00 58 58 58 58 58 00 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 00 58 00 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58
*/
