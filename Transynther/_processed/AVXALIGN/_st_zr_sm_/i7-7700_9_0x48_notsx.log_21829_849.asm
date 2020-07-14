.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x8227, %rsi
lea addresses_D_ht+0x4c87, %rdi
nop
nop
nop
nop
and %r14, %r14
mov $8, %rcx
rep movsq
nop
inc %rbx
lea addresses_normal_ht+0x2e75, %rsi
lea addresses_WC_ht+0x15dc7, %rdi
nop
nop
and %r10, %r10
mov $34, %rcx
rep movsq
nop
cmp %rdi, %rdi
lea addresses_A_ht+0xe491, %r14
cmp %rbp, %rbp
mov (%r14), %rsi
nop
nop
nop
nop
xor %rdi, %rdi
lea addresses_D_ht+0x763f, %rsi
lea addresses_normal_ht+0x152c7, %rdi
nop
nop
nop
nop
xor %r8, %r8
mov $38, %rcx
rep movsl
nop
nop
nop
add $47888, %rbp
lea addresses_WC_ht+0x5698, %r14
nop
nop
nop
sub %rbx, %rbx
movw $0x6162, (%r14)
nop
nop
nop
nop
nop
sub $20218, %rdi
lea addresses_A_ht+0x1625a, %r10
nop
nop
nop
sub $51961, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm3
vmovups %ymm3, (%r10)
nop
nop
nop
nop
inc %rdi
lea addresses_WT_ht+0x11947, %rsi
lea addresses_D_ht+0x9f07, %rdi
xor %rbx, %rbx
mov $33, %rcx
rep movsq
nop
sub %rsi, %rsi
lea addresses_normal_ht+0x1d947, %r14
nop
nop
dec %rbp
movb $0x61, (%r14)
nop
nop
nop
nop
nop
inc %rbp
lea addresses_A_ht+0x5a47, %rsi
lea addresses_UC_ht+0x9a7, %rdi
nop
nop
nop
nop
nop
inc %rbx
mov $50, %rcx
rep movsb
add $4268, %rbx
lea addresses_normal_ht+0x17e8b, %rsi
lea addresses_A_ht+0x1cdcb, %rdi
inc %rbp
mov $12, %rcx
rep movsb
nop
cmp %rcx, %rcx
lea addresses_UC_ht+0x1df47, %rsi
lea addresses_WC_ht+0x13247, %rdi
nop
nop
nop
dec %r10
mov $96, %rcx
rep movsw
nop
xor $17350, %rdi
lea addresses_D_ht+0x7747, %r10
clflush (%r10)
add $56440, %rcx
movw $0x6162, (%r10)
nop
xor $11739, %rdi
lea addresses_A_ht+0x58c7, %r8
sub $7153, %rbx
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $0, %xmm2, %r14
nop
nop
add $57067, %r8
lea addresses_UC_ht+0x8547, %rcx
nop
nop
nop
nop
dec %rsi
mov $0x6162636465666768, %r10
movq %r10, %xmm5
movups %xmm5, (%rcx)
nop
nop
nop
nop
nop
cmp $39531, %rdi
lea addresses_WC_ht+0x12637, %rbx
cmp $25210, %rsi
mov $0x6162636465666768, %rdi
movq %rdi, (%rbx)
nop
nop
nop
nop
inc %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r8
push %r9
push %rdi
push %rdx

// Store
mov $0xe57, %rdi
nop
nop
nop
nop
cmp %r14, %r14
mov $0x5152535455565758, %r11
movq %r11, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
nop
nop
inc %r11

// Store
lea addresses_UC+0x1a5c7, %r10
xor $38768, %r9
mov $0x5152535455565758, %r8
movq %r8, %xmm7
movntdq %xmm7, (%r10)
nop
nop
nop
nop
nop
add $40564, %r10

// Store
lea addresses_RW+0x1af31, %rdi
nop
nop
nop
nop
xor $19455, %r11
movl $0x51525354, (%rdi)
nop
and %r9, %r9

// Store
lea addresses_RW+0x19eb7, %r14
clflush (%r14)
xor $50672, %r8
movl $0x51525354, (%r14)
xor $20945, %r8

// Store
lea addresses_WC+0x102d8, %r8
nop
nop
nop
inc %rdi
movw $0x5152, (%r8)
nop
xor $21962, %r8

// Store
mov $0x3ff5970000000d47, %rdi
nop
nop
and $33585, %r10
mov $0x5152535455565758, %r8
movq %r8, %xmm7
vmovups %ymm7, (%rdi)
nop
nop
nop
nop
xor %r11, %r11

// Store
lea addresses_US+0x3907, %r8
clflush (%r8)
sub $4432, %r11
movb $0x51, (%r8)
and $28487, %rdx

// Store
mov $0xd47, %r8
nop
nop
nop
nop
cmp $20912, %r14
mov $0x5152535455565758, %r9
movq %r9, %xmm1
vmovups %ymm1, (%r8)
xor %rdx, %rdx

// Store
lea addresses_PSE+0x16f7, %r10
nop
nop
nop
nop
nop
inc %rdx
movl $0x51525354, (%r10)
nop
nop
xor $30943, %r8

// Faulty Load
mov $0x3ff5970000000d47, %r14
nop
nop
nop
sub %r8, %r8
mov (%r14), %r10w
lea oracles, %r11
and $0xff, %r10
shlq $12, %r10
mov (%r11,%r10,1), %r10
pop %rdx
pop %rdi
pop %r9
pop %r8
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_RW', 'congruent': 4}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_US', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_P', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 4}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal_ht'}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_A_ht', 'congruent': 1}}
{'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_WC_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_normal_ht', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': True, 'congruent': 1, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}}
{'dst': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 2, 'type': 'addresses_normal_ht'}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_D_ht', 'congruent': 5}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_A_ht', 'congruent': 3}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 11}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'58': 18369, '00': 3460}
58 58 58 58 58 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 00 58 58 58 58 00 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 00 00 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 00 00 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 00 58 00 00 58 58 58 00 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 00 00 58 58 58 00 58 58 58 00 58 58 58 00 00 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 00 58 58 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 00 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 00 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 00 58 58 58 58 58 00 58 00 58 00 00 00 58 58 58 58 00 58 58 58 58 58 58 00 00 58 58 00 58 58 00 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 00 58 00 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 00 00 58 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 58 00 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 58 00 58 58 58 58 58 58 00 00 00 58 58 00 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 00 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 00 58 58 58 00 58 58 58 00 58 00 58 58 58 58 58 58 58 58 58 58 58 58 58 58 00 58 58 58 58 58 58 58 58
*/
