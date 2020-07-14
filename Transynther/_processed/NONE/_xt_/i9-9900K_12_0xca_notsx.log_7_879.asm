.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1abb0, %rdi
nop
and %r14, %r14
and $0xffffffffffffffc0, %rdi
vmovntdqa (%rdi), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $0, %xmm1, %rbx
nop
nop
nop
nop
and $31563, %rcx
lea addresses_D_ht+0x189f0, %rsi
nop
nop
nop
nop
nop
dec %rbx
mov (%rsi), %r8
nop
nop
nop
add $48751, %rcx
lea addresses_A_ht+0x1a7b0, %rsi
lea addresses_WT_ht+0x154b0, %rdi
nop
nop
nop
nop
nop
cmp $18602, %r14
mov $113, %rcx
rep movsl
and %rsi, %rsi
lea addresses_WT_ht+0x147b0, %rbx
sub %r12, %r12
movups (%rbx), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
cmp $40254, %r8
lea addresses_WT_ht+0xc9b0, %r8
nop
nop
nop
nop
and $63688, %r14
movb (%r8), %cl
nop
nop
nop
sub $53556, %r14
lea addresses_WC_ht+0x3170, %rbx
nop
dec %rsi
mov (%rbx), %rdi
nop
nop
nop
nop
nop
inc %r12
lea addresses_normal_ht+0x1d7b0, %r8
nop
nop
nop
sub %r14, %r14
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
and $52785, %r8
lea addresses_A_ht+0x111b0, %rdi
clflush (%rdi)
cmp $29288, %rcx
mov (%rdi), %rsi
nop
nop
add %rdi, %rdi
lea addresses_UC_ht+0x14492, %rsi
lea addresses_normal_ht+0xcdb0, %rdi
nop
nop
nop
nop
nop
sub $3906, %r14
mov $50, %rcx
rep movsw
nop
nop
nop
nop
dec %r8
lea addresses_D_ht+0x1e4b0, %rdi
nop
nop
nop
nop
and %r8, %r8
movb (%rdi), %r14b
nop
nop
nop
nop
nop
cmp $22035, %r8
lea addresses_WC_ht+0x53b0, %r8
nop
nop
nop
nop
xor $5990, %r12
movw $0x6162, (%r8)
nop
sub $36516, %r14
lea addresses_D_ht+0x1efb0, %rcx
nop
nop
sub %rdi, %rdi
vmovups (%rcx), %ymm6
vextracti128 $0, %ymm6, %xmm6
vpextrq $1, %xmm6, %r14
nop
nop
nop
and $62260, %r12
lea addresses_D_ht+0x7ed0, %rsi
lea addresses_A_ht+0x1a7c0, %rdi
nop
nop
nop
cmp $40075, %r8
mov $0, %rcx
rep movsw
nop
inc %rdi
lea addresses_UC_ht+0x1ce70, %rsi
lea addresses_D_ht+0x183b0, %rdi
nop
nop
xor $30096, %r15
mov $6, %rcx
rep movsq
nop
and $30565, %rcx
lea addresses_normal_ht+0x252e, %r15
nop
nop
nop
cmp $5122, %r12
mov $0x6162636465666768, %r8
movq %r8, %xmm6
vmovups %ymm6, (%r15)
nop
xor $7509, %r12
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r12
push %r9
push %rax
push %rcx
push %rdx

// Store
lea addresses_PSE+0x1dfb0, %r9
add %r11, %r11
movb $0x51, (%r9)
nop
sub %r11, %r11

// Store
lea addresses_WT+0x1ffb0, %rdx
nop
nop
nop
nop
sub %rcx, %rcx
mov $0x5152535455565758, %r12
movq %r12, %xmm3
movups %xmm3, (%rdx)
nop
nop
nop
nop
add %r10, %r10

// Store
mov $0x6d30470000000130, %r9
dec %r10
movw $0x5152, (%r9)
add $18979, %r9

// Load
lea addresses_WC+0x175b0, %r12
nop
nop
sub $29845, %r9
mov (%r12), %rax
dec %r10

// Store
lea addresses_D+0x124e0, %rax
nop
nop
cmp $24217, %rdx
mov $0x5152535455565758, %r10
movq %r10, (%rax)
nop
nop
nop
cmp $43033, %r10

// Store
lea addresses_WT+0x1f4f0, %r9
nop
nop
xor $10709, %r12
movb $0x51, (%r9)
nop
nop
nop
nop
nop
cmp $24016, %r12

// Faulty Load
lea addresses_WT+0x167b0, %rcx
nop
nop
nop
nop
xor $58066, %r12
mov (%rcx), %edx
lea oracles, %r12
and $0xff, %rdx
shlq $12, %rdx
mov (%r12,%rdx,1), %rdx
pop %rdx
pop %rcx
pop %rax
pop %r9
pop %r12
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT', 'NT': True, 'AVXalign': False, 'size': 4, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_PSE', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 11}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 7}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_NC', 'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 7}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_D', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 5}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'type': 'addresses_WT', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_normal_ht', 'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WT_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': True, 'size': 8, 'congruent': 6}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_A_ht', 'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_WC_ht', 'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'type': 'addresses_D_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_A_ht'}}
{'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_D_ht'}}
{'OP': 'STOR', 'dst': {'same': False, 'type': 'addresses_normal_ht', 'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 1}}
{'39': 7}
39 39 39 39 39 39 39
*/
