.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x66a2, %rax
cmp $12340, %r12
mov $0x6162636465666768, %r11
movq %r11, %xmm3
vmovups %ymm3, (%rax)
nop
nop
nop
nop
add $6185, %rbx
lea addresses_A_ht+0x176a2, %r8
xor $8475, %r14
mov $0x6162636465666768, %rdi
movq %rdi, %xmm3
movups %xmm3, (%r8)
nop
nop
nop
nop
nop
cmp $6726, %rax
lea addresses_WC_ht+0xa162, %rsi
lea addresses_D_ht+0x67f0, %rdi
nop
dec %rax
mov $76, %rcx
rep movsw
nop
nop
nop
inc %r12
lea addresses_D_ht+0x1ed8a, %r11
nop
nop
nop
nop
nop
cmp %rsi, %rsi
mov (%r11), %ax
nop
nop
nop
and %r12, %r12
lea addresses_D_ht+0x16d92, %rax
nop
nop
nop
nop
inc %r12
movups (%rax), %xmm2
vpextrq $0, %xmm2, %r8
nop
nop
nop
nop
and $51318, %rbx
lea addresses_WC_ht+0xe5a2, %rsi
lea addresses_A_ht+0x11262, %rdi
inc %r12
mov $12, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0xa16d, %rax
clflush (%rax)
nop
cmp $17016, %r14
movw $0x6162, (%rax)
nop
nop
nop
xor %r8, %r8
lea addresses_normal_ht+0x1d362, %r11
nop
nop
nop
nop
nop
xor %r12, %r12
mov (%r11), %edi
nop
nop
nop
nop
and %rsi, %rsi
lea addresses_normal_ht+0x11362, %rax
clflush (%rax)
nop
nop
nop
nop
nop
xor %rdi, %rdi
movw $0x6162, (%rax)
add %rcx, %rcx
lea addresses_A_ht+0x17942, %rsi
lea addresses_A_ht+0xdf62, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
xor $60185, %r8
mov $72, %rcx
rep movsq
nop
nop
nop
nop
nop
and %r14, %r14
lea addresses_WT_ht+0x1b7e2, %rsi
lea addresses_D_ht+0x88c2, %rdi
nop
nop
nop
nop
and %r12, %r12
mov $14, %rcx
rep movsl
nop
nop
nop
nop
nop
add $12698, %r12
lea addresses_WT_ht+0x1ef62, %r12
nop
nop
nop
nop
xor %r11, %r11
mov (%r12), %rsi
nop
nop
nop
nop
dec %rsi
lea addresses_normal_ht+0x37d2, %rax
clflush (%rax)
and %rdi, %rdi
mov (%rax), %rbx
and %r11, %r11
lea addresses_D_ht+0xe122, %r12
nop
nop
nop
nop
sub %r8, %r8
movb (%r12), %al
nop
and %rax, %rax
lea addresses_A_ht+0x7882, %rdi
nop
nop
nop
xor $58978, %rcx
mov (%rdi), %r8d
nop
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r9
push %rbx
push %rcx
push %rsi

// Store
lea addresses_RW+0x1eeca, %r9
clflush (%r9)
nop
nop
nop
nop
xor %r13, %r13
movl $0x51525354, (%r9)
nop
nop
add %r12, %r12

// Load
lea addresses_US+0x16362, %r10
nop
nop
cmp $16932, %rcx
movb (%r10), %r12b
nop
nop
nop
and %r10, %r10

// Store
lea addresses_normal+0xd562, %rbx
nop
cmp %r12, %r12
mov $0x5152535455565758, %rcx
movq %rcx, %xmm2
movups %xmm2, (%rbx)
nop
and %r10, %r10

// Store
mov $0x18e6b60000000f22, %rbx
nop
nop
nop
nop
nop
and %r9, %r9
mov $0x5152535455565758, %r13
movq %r13, (%rbx)

// Exception!!!
nop
mov (0), %rcx
nop
nop
sub %r10, %r10

// Store
lea addresses_RW+0x2022, %r10
nop
nop
nop
nop
nop
dec %rcx
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%r10)
nop
nop
nop
nop
nop
and $33744, %rsi

// Store
lea addresses_normal+0x11b62, %rcx
sub %r9, %r9
mov $0x5152535455565758, %rsi
movq %rsi, (%rcx)
nop
nop
nop
nop
xor %rbx, %rbx

// Store
lea addresses_A+0x1bad9, %rsi
clflush (%rsi)
nop
nop
nop
nop
nop
xor %r12, %r12
movw $0x5152, (%rsi)
nop
nop
sub %r12, %r12

// Store
lea addresses_UC+0x14f0e, %rbx
nop
nop
nop
nop
nop
cmp %r9, %r9
mov $0x5152535455565758, %r12
movq %r12, %xmm3
vmovups %ymm3, (%rbx)
nop
nop
nop
add $56463, %rcx

// Faulty Load
lea addresses_RW+0x8762, %r12
nop
nop
nop
nop
nop
add %rsi, %rsi
movb (%r12), %r9b
lea oracles, %r10
and $0xff, %r9
shlq $12, %r9
mov (%r10,%r9,1), %r9
pop %rsi
pop %rcx
pop %rbx
pop %r9
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': True, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 1}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_NC', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_A', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_RW', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_A_ht', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 1, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WC_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal_ht', 'congruent': 10}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_normal_ht', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 8, 'type': 'addresses_WT_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 4}}
{'32': 18905}
32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32 32
*/
