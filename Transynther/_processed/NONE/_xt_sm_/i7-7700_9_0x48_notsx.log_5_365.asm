.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r14
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1cf4c, %rsi
lea addresses_WC_ht+0x1af4c, %rdi
nop
nop
nop
nop
dec %r14
mov $117, %rcx
rep movsq
nop
inc %rdi
lea addresses_WT_ht+0x1304c, %rdx
clflush (%rdx)
nop
sub %r12, %r12
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
add $21556, %rcx
lea addresses_UC_ht+0x169d8, %rcx
nop
nop
nop
nop
nop
add %rax, %rax
movl $0x61626364, (%rcx)
nop
nop
nop
nop
and $1378, %rcx
lea addresses_A_ht+0x874c, %r14
nop
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%r14)
sub %rcx, %rcx
lea addresses_D_ht+0x1afc, %rdi
nop
nop
nop
xor %r12, %r12
mov (%rdi), %eax
nop
nop
sub $4097, %r14
lea addresses_normal_ht+0x16d4c, %rdi
nop
nop
nop
nop
nop
inc %r14
mov (%rdi), %r12
nop
nop
mfence
lea addresses_UC_ht+0x3a4c, %rcx
nop
nop
nop
nop
sub $48160, %rax
vmovups (%rcx), %ymm3
vextracti128 $1, %ymm3, %xmm3
vpextrq $1, %xmm3, %rdi
nop
add %r12, %r12
lea addresses_WC_ht+0x15f14, %rax
nop
xor %r14, %r14
movl $0x61626364, (%rax)
nop
nop
nop
nop
cmp $16885, %rcx
lea addresses_WC_ht+0x2b7a, %rdi
add %rax, %rax
mov (%rdi), %rsi
nop
and $26575, %rdi
lea addresses_D_ht+0xb74c, %rax
nop
nop
nop
add $59398, %rdi
mov $0x6162636465666768, %rcx
movq %rcx, %xmm3
movups %xmm3, (%rax)
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x16ccc, %r14
nop
nop
nop
sub %rdi, %rdi
mov $0x6162636465666768, %rsi
movq %rsi, (%r14)
nop
add $8374, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r14
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r9
push %rbx
push %rdx

// Store
lea addresses_A+0xcb1c, %r15
inc %r14
mov $0x5152535455565758, %r9
movq %r9, (%r15)
nop
nop
nop
nop
add $10834, %r14

// Store
lea addresses_normal+0x374c, %r11
nop
nop
nop
cmp $28437, %rbx
movl $0x51525354, (%r11)
and $61593, %r9

// Store
lea addresses_UC+0x664c, %r15
nop
inc %r12
mov $0x5152535455565758, %rdx
movq %rdx, (%r15)
nop
nop
add %r15, %r15

// Store
lea addresses_D+0x1bf6c, %rbx
nop
nop
add %r11, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rbx)
xor %rbx, %rbx

// Store
lea addresses_normal+0xb4cc, %r11
nop
nop
nop
nop
sub %r14, %r14
movb $0x51, (%r11)
nop
nop
nop
nop
nop
sub $13145, %r14

// Store
lea addresses_WC+0x17dcc, %rdx
nop
nop
nop
add %r9, %r9
mov $0x5152535455565758, %r15
movq %r15, %xmm7
vmovups %ymm7, (%rdx)
add $50129, %rbx

// Store
lea addresses_WC+0x8d4c, %rdx
nop
nop
xor $28350, %r11
mov $0x5152535455565758, %r9
movq %r9, %xmm4
vmovntdq %ymm4, (%rdx)
nop
nop
nop
and %r9, %r9

// Store
lea addresses_US+0x60d7, %r9
nop
nop
nop
nop
and $40303, %rdx
movw $0x5152, (%r9)
add $65514, %r14

// Store
lea addresses_RW+0xdb4c, %rbx
nop
nop
nop
add $30299, %r15
movl $0x51525354, (%rbx)
nop
nop
xor %r15, %r15

// Faulty Load
lea addresses_RW+0xdb4c, %rdx
nop
nop
nop
nop
inc %r9
mov (%rdx), %r11w
lea oracles, %r9
and $0xff, %r11
shlq $12, %r11
mov (%r9,%r11,1), %r11
pop %rdx
pop %rbx
pop %r9
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_UC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_US', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 10}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 9}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC_ht', 'congruent': 8}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WC_ht', 'congruent': 2}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 1}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 7}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'54': 5}
54 54 54 54 54
*/
