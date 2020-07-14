.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x925e, %rax
nop
cmp $13299, %r14
movl $0x61626364, (%rax)
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x6b7e, %r14
nop
nop
and $50347, %r12
mov $0x6162636465666768, %rdx
movq %rdx, (%r14)
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x1b25e, %rsi
lea addresses_WC_ht+0xddde, %rdi
nop
add %r14, %r14
mov $13, %rcx
rep movsq
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_normal_ht+0x15a5e, %rdx
nop
nop
nop
nop
xor %rdi, %rdi
mov $0x6162636465666768, %r14
movq %r14, (%rdx)
nop
nop
add $34866, %rbx
lea addresses_WC_ht+0x1c844, %rdi
nop
nop
nop
nop
nop
sub %rdx, %rdx
mov $0x6162636465666768, %rsi
movq %rsi, (%rdi)
nop
nop
nop
nop
lfence
lea addresses_D_ht+0x1a5e, %rsi
lea addresses_normal_ht+0x1d81e, %rdi
and %rdx, %rdx
mov $81, %rcx
rep movsb
nop
nop
nop
nop
nop
add %r14, %r14
lea addresses_normal_ht+0xd5e9, %rbx
nop
nop
nop
nop
and $40513, %rax
mov $0x6162636465666768, %r12
movq %r12, %xmm7
vmovups %ymm7, (%rbx)
nop
sub %r12, %r12
lea addresses_D_ht+0x2cee, %rcx
nop
nop
nop
xor %r12, %r12
movups (%rcx), %xmm7
vpextrq $0, %xmm7, %rsi
nop
nop
and $43972, %rax
lea addresses_WT_ht+0x8a5e, %r12
sub $43941, %rdi
mov (%r12), %rsi
sub %rcx, %rcx
lea addresses_WC_ht+0x914e, %rbx
clflush (%rbx)
nop
sub %rcx, %rcx
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rdx
nop
nop
and $51842, %rdi
lea addresses_normal_ht+0x825e, %rsi
nop
nop
cmp %rcx, %rcx
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rsi)
nop
nop
nop
nop
nop
sub %r12, %r12
lea addresses_D_ht+0x9756, %r14
nop
nop
nop
nop
nop
sub %rax, %rax
mov $0x6162636465666768, %rsi
movq %rsi, %xmm5
vmovups %ymm5, (%r14)
nop
nop
nop
nop
add %rsi, %rsi
lea addresses_normal_ht+0x5e5e, %rbx
nop
nop
nop
nop
inc %rcx
mov (%rbx), %rax
nop
and $12736, %rcx
lea addresses_WT_ht+0x1495e, %rax
nop
nop
nop
nop
add $36890, %rcx
movl $0x61626364, (%rax)
nop
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0x1e25e, %rdx
add %rdi, %rdi
mov (%rdx), %rsi
nop
nop
nop
nop
nop
sub $24656, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r14
push %r15
push %r9
push %rbx

// Store
mov $0x85e, %r14
nop
nop
and %r11, %r11
movw $0x5152, (%r14)
nop
add $44381, %rbx

// Store
lea addresses_WC+0xae5e, %r13
nop
nop
inc %r15
mov $0x5152535455565758, %r9
movq %r9, %xmm3
movups %xmm3, (%r13)
nop
nop
nop
cmp $54837, %r13

// Store
lea addresses_WT+0x9016, %r15
nop
nop
nop
nop
nop
dec %r12
mov $0x5152535455565758, %r9
movq %r9, %xmm5
vmovups %ymm5, (%r15)
nop
nop
xor $4728, %r13

// Store
lea addresses_US+0x13d5e, %r9
nop
nop
nop
cmp %r15, %r15
movb $0x51, (%r9)
nop
nop
sub %rbx, %rbx

// Load
lea addresses_WT+0x1d25e, %r13
clflush (%r13)
nop
nop
nop
and $46979, %r15
mov (%r13), %r14d
nop
nop
nop
nop
and $56460, %r11

// Load
lea addresses_WT+0x1d25e, %r15
add $177, %r12
vmovntdqa (%r15), %ymm1
vextracti128 $0, %ymm1, %xmm1
vpextrq $1, %xmm1, %r11
cmp $25808, %r13

// Faulty Load
lea addresses_WT+0x1d25e, %rbx
xor %r15, %r15
mov (%rbx), %r12w
lea oracles, %r13
and $0xff, %r12
shlq $12, %r12
mov (%r13,%r12,1), %r12
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 7}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 0}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 4}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_normal_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 7}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
