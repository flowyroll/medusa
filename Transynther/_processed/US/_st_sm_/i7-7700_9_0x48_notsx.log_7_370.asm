.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x12e21, %rsi
lea addresses_WC_ht+0xc041, %rdi
clflush (%rsi)
nop
sub %rdx, %rdx
mov $3, %rcx
rep movsw
nop
add $53058, %r8
lea addresses_WC_ht+0x16ea1, %r8
clflush (%r8)
nop
nop
nop
nop
nop
xor $11199, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r8)
sub $21790, %rdi
lea addresses_UC_ht+0xa61, %rcx
nop
dec %r14
mov (%rcx), %r8d
nop
nop
nop
inc %rdx
lea addresses_D_ht+0x4041, %rsi
lea addresses_WT_ht+0x1aa89, %rdi
nop
nop
nop
nop
add $51007, %r8
mov $39, %rcx
rep movsb
nop
nop
add %rdx, %rdx
lea addresses_normal_ht+0x861, %rsi
lea addresses_WC_ht+0x1c9f7, %rdi
nop
nop
sub %r13, %r13
mov $15, %rcx
rep movsq
nop
cmp %rcx, %rcx
lea addresses_WT_ht+0xac61, %r8
nop
nop
sub $22277, %rsi
mov $0x6162636465666768, %r14
movq %r14, (%r8)
nop
nop
nop
nop
nop
and $50985, %rcx
lea addresses_WT_ht+0x437b, %rcx
nop
nop
nop
mfence
vmovups (%rcx), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdx
nop
dec %r13
lea addresses_normal_ht+0x8a41, %r14
nop
nop
nop
nop
nop
xor %rsi, %rsi
and $0xffffffffffffffc0, %r14
movntdqa (%r14), %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
nop
sub $22705, %r13
lea addresses_UC_ht+0x16b11, %rsi
lea addresses_UC_ht+0x6a61, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
dec %r10
mov $99, %rcx
rep movsl
nop
nop
nop
xor $5175, %rsi
lea addresses_WT_ht+0x1a0b1, %rsi
lea addresses_A_ht+0xc05, %rdi
nop
and $33920, %r8
mov $22, %rcx
rep movsw
nop
nop
nop
and %r10, %r10
lea addresses_WT_ht+0x1e905, %r13
nop
nop
cmp %r10, %r10
movl $0x61626364, (%r13)
cmp %rcx, %rcx
lea addresses_WC_ht+0xe0e1, %r13
nop
nop
sub %rsi, %rsi
mov $0x6162636465666768, %r14
movq %r14, %xmm6
and $0xffffffffffffffc0, %r13
movaps %xmm6, (%r13)
nop
nop
nop
nop
nop
dec %r14
lea addresses_WT_ht+0xff39, %r13
nop
nop
inc %r14
mov (%r13), %edx
nop
nop
sub $59182, %rdi
lea addresses_D_ht+0x1c661, %r14
nop
nop
nop
nop
nop
xor %rdx, %rdx
mov (%r14), %r8
nop
nop
sub $53314, %r10
lea addresses_normal_ht+0x1e7f1, %rdx
nop
nop
nop
nop
dec %rcx
movw $0x6162, (%rdx)
nop
nop
mfence
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rdi
push %rdx

// Store
mov $0x4c400700000005d2, %r15
nop
nop
nop
nop
sub %r12, %r12
movb $0x51, (%r15)
nop
nop
nop
nop
nop
dec %r9

// Store
lea addresses_US+0x11a61, %rdi
clflush (%rdi)
nop
nop
add $11030, %rdx
mov $0x5152535455565758, %r9
movq %r9, %xmm2
movups %xmm2, (%rdi)
sub $56809, %rdx

// Store
lea addresses_D+0x1cb9, %rdx
nop
nop
nop
dec %rdi
mov $0x5152535455565758, %r15
movq %r15, (%rdx)
nop
and $28468, %r14

// Store
lea addresses_WC+0x15429, %r12
nop
nop
add $52240, %rdi
mov $0x5152535455565758, %rbx
movq %rbx, (%r12)
xor %rdx, %rdx

// Store
mov $0x41ff3d0000000161, %r12
dec %rdi
movb $0x51, (%r12)

// Exception!!!
nop
nop
nop
nop
nop
mov (0), %rbx
nop
nop
nop
nop
nop
add %rdx, %rdx

// Faulty Load
lea addresses_US+0x11a61, %rdi
dec %rbx
movb (%rdi), %r9b
lea oracles, %r12
and $0xff, %r9
shlq $12, %r9
mov (%r12,%r9,1), %r9
pop %rdx
pop %rdi
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_D', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_NC', 'congruent': 8}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC_ht', 'congruent': 6}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 8, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 9}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 5}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_WT_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': True, 'size': 16, 'type': 'addresses_WC_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_D_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 4}, 'OP': 'STOR'}
{'58': 7}
58 58 58 58 58 58 58
*/
