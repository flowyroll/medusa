.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x19c21, %rdx
nop
nop
nop
nop
cmp $51408, %rsi
and $0xffffffffffffffc0, %rdx
movaps (%rdx), %xmm4
vpextrq $0, %xmm4, %rcx
cmp %r14, %r14
lea addresses_normal_ht+0x17541, %r8
clflush (%r8)
add $7907, %rbp
movl $0x61626364, (%r8)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_D_ht+0x3d6d, %r8
nop
nop
nop
nop
nop
xor $58647, %rbp
movw $0x6162, (%r8)
cmp %rsi, %rsi
lea addresses_UC_ht+0x13021, %rcx
add %r11, %r11
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x1cf51, %rdx
nop
nop
nop
add %r14, %r14
movl $0x61626364, (%rdx)
xor $7012, %r14
lea addresses_UC_ht+0x11cd1, %rsi
nop
nop
xor %rbp, %rbp
movups (%rsi), %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
nop
nop
cmp $63458, %r11
lea addresses_WT_ht+0xaad1, %rsi
lea addresses_WC_ht+0x1cc21, %rdi
nop
nop
nop
nop
nop
sub $32134, %rdx
mov $99, %rcx
rep movsw
nop
nop
nop
sub $6152, %rcx
lea addresses_D_ht+0x10e41, %rsi
lea addresses_WC_ht+0x80cd, %rdi
clflush (%rdi)
nop
nop
cmp $11154, %r11
mov $110, %rcx
rep movsq
nop
nop
nop
add $35075, %rdx
lea addresses_UC_ht+0x19e21, %rdx
nop
inc %r11
mov (%rdx), %bp
nop
nop
inc %rcx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r13
push %r8
push %r9
push %rax

// Load
lea addresses_US+0x6568, %r13
clflush (%r13)
nop
add $49606, %r9
movb (%r13), %r12b
nop
nop
nop
sub $23845, %r10

// Store
lea addresses_A+0x4991, %rax
add %r10, %r10
movb $0x51, (%rax)
cmp $52647, %r13

// Store
lea addresses_WT+0x2c21, %r11
nop
nop
nop
nop
nop
and %r8, %r8
mov $0x5152535455565758, %r10
movq %r10, %xmm7
movups %xmm7, (%r11)
nop
xor %r10, %r10

// Load
lea addresses_UC+0xd141, %r8
nop
sub $58794, %r11
vmovups (%r8), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r10
nop
nop
add %r8, %r8

// Store
lea addresses_normal+0x1cd21, %r9
nop
nop
nop
nop
nop
sub $25899, %r13
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%r9)
nop
nop
nop
nop
nop
and $31699, %r12

// Store
lea addresses_PSE+0x11551, %r12
nop
nop
nop
nop
sub %r11, %r11
movb $0x51, (%r12)
nop
xor %rax, %rax

// Store
lea addresses_UC+0x3349, %r10
nop
nop
nop
nop
nop
add %r11, %r11
mov $0x5152535455565758, %rax
movq %rax, (%r10)
xor %r8, %r8

// Faulty Load
lea addresses_WT+0x2c21, %r10
nop
nop
nop
nop
dec %r13
movaps (%r10), %xmm6
vpextrq $0, %xmm6, %r8
lea oracles, %r11
and $0xff, %r8
shlq $12, %r8
mov (%r11,%r8,1), %r8
pop %rax
pop %r9
pop %r8
pop %r13
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_US', 'same': False, 'AVXalign': True, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'LOAD', 'src': {'size': 32, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 1}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': True, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 3}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_WT_ht', 'same': True, 'AVXalign': True, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': False, 'type': 'addresses_normal_ht', 'same': True, 'AVXalign': False, 'congruent': 5}}
{'OP': 'STOR', 'dst': {'size': 2, 'NT': False, 'type': 'addresses_D_ht', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 4, 'NT': True, 'type': 'addresses_normal_ht', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 3}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_D_ht', 'congruent': 5}, 'dst': {'same': False, 'type': 'addresses_WC_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'58': 64}
58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58
*/
