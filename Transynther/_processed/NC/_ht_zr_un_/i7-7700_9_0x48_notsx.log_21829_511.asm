.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rdx
lea addresses_D_ht+0xb4e0, %r10
nop
cmp $31905, %r8
movups (%r10), %xmm0
vpextrq $0, %xmm0, %r15
nop
nop
nop
nop
nop
dec %rbx
lea addresses_UC_ht+0xbc08, %rdx
nop
nop
nop
nop
and $27873, %rbx
mov (%rdx), %ax
sub %r15, %r15
lea addresses_UC_ht+0x15708, %rbx
nop
nop
nop
nop
sub $10133, %r11
mov $0x6162636465666768, %rax
movq %rax, %xmm7
and $0xffffffffffffffc0, %rbx
movntdq %xmm7, (%rbx)
nop
dec %rdx
lea addresses_UC_ht+0x136c2, %r15
nop
nop
nop
nop
lfence
movb $0x61, (%r15)
nop
nop
nop
sub %rbx, %rbx
lea addresses_A_ht+0x9188, %r10
nop
nop
add $24465, %rdx
movb $0x61, (%r10)
nop
nop
nop
sub $14389, %r10
pop %rdx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r14
push %r9
push %rbx
push %rcx
push %rdx
push %rsi

// Store
lea addresses_UC+0x180e0, %r14
nop
nop
nop
nop
xor $35556, %rcx
movw $0x5152, (%r14)
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_WC+0x18b08, %r12
nop
cmp $4658, %r9
movb $0x51, (%r12)
inc %rsi

// Store
lea addresses_D+0xe7a8, %rdx
inc %r9
movl $0x51525354, (%rdx)
nop
nop
nop
nop
add %rsi, %rsi

// Store
lea addresses_normal+0x1f908, %r14
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rsi
movq %rsi, (%r14)
nop
nop
nop
nop
and %rbx, %rbx

// Store
lea addresses_WC+0x9f08, %r14
nop
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %rcx
movq %rcx, %xmm3
vmovups %ymm3, (%r14)
nop
nop
nop
nop
nop
sub $29280, %r14

// Store
lea addresses_RW+0x1bca8, %rdx
nop
nop
nop
nop
xor $21234, %r9
movw $0x5152, (%rdx)
nop
nop
and %rcx, %rcx

// Store
lea addresses_WT+0x6108, %rsi
nop
nop
nop
nop
inc %r9
movb $0x51, (%rsi)
nop
nop
nop
nop
nop
sub %rcx, %rcx

// Store
lea addresses_PSE+0xcf08, %rdx
nop
nop
nop
nop
nop
cmp %r12, %r12
movl $0x51525354, (%rdx)
nop
nop
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_normal+0x1db08, %rsi
clflush (%rsi)
cmp %r9, %r9
mov $0x5152535455565758, %rcx
movq %rcx, %xmm6
movups %xmm6, (%rsi)
nop
and $50966, %r14

// Store
lea addresses_D+0xca00, %rdx
nop
nop
sub $29566, %rsi
movb $0x51, (%rdx)
nop
nop
nop
inc %rcx

// Store
lea addresses_PSE+0x1208, %rsi
nop
nop
nop
nop
and %rcx, %rcx
movb $0x51, (%rsi)
nop
nop
add %r9, %r9

// Store
lea addresses_PSE+0xe608, %r14
nop
nop
nop
nop
nop
cmp %rsi, %rsi
movl $0x51525354, (%r14)
nop
add %rcx, %rcx

// Faulty Load
mov $0x58e0940000000308, %r12
nop
nop
nop
and %rbx, %rbx
movups (%r12), %xmm0
vpextrq $1, %xmm0, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdx
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_NC', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 2, 'type': 'addresses_UC', 'congruent': 2}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 1, 'type': 'addresses_WC', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WC', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_RW', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_PSE', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal', 'congruent': 10}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_D', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 1, 'type': 'addresses_PSE', 'congruent': 8}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_PSE', 'congruent': 7}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_D_ht', 'congruent': 1}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_UC_ht', 'congruent': 6}}
{'dst': {'same': False, 'NT': True, 'AVXalign': False, 'size': 16, 'type': 'addresses_UC_ht', 'congruent': 9}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_UC_ht', 'congruent': 1}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_A_ht', 'congruent': 7}, 'OP': 'STOR'}
{'ff': 1, '7b': 32, '00': 5201, '08': 46, '93': 10, '46': 16539}
46 00 00 00 00 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 00 46 46 00 46 46 00 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 46 46 46 08 00 46 46 46 00 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 00 00 00 46 46 46 46 00 46 00 46 46 00 46 46 46 46 00 00 46 46 46 46 46 46 46 00 46 46 46 00 46 00 46 00 46 46 46 46 00 46 46 46 46 00 46 46 00 46 00 46 46 46 46 46 46 00 00 46 46 46 46 46 00 00 46 46 00 46 00 46 46 46 46 00 46 46 46 46 00 46 46 00 46 00 46 46 46 46 00 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 00 46 46 46 00 46 46 00 46 00 00 00 00 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 00 46 00 00 46 46 46 46 46 46 00 46 46 46 00 46 46 46 00 00 46 46 46 00 00 00 46 46 00 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 08 00 00 00 46 46 46 46 46 00 00 46 00 46 46 46 00 46 46 46 00 00 00 46 46 00 00 46 46 46 46 46 46 00 46 00 00 46 00 46 00 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 46 00 00 46 46 46 46 46 46 46 46 46 08 00 00 00 46 46 46 46 00 00 46 46 00 00 46 46 46 46 46 46 46 46 00 00 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 46 00 46 00 46 46 00 46 46 46 46 46 46 00 00 00 46 00 46 46 46 46 00 00 46 46 00 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 46 00 00 46 46 00 46 00 46 46 46 46 46 46 00 00 46 00 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 46 00 00 46 46 46 46 46 46 00 00 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 46 46 46 00 00 46 46 46 00 46 46 46 00 46 46 46 46 00 46 00 46 46 46 46 46 46 00 00 00 00 46 46 00 46 46 46 00 46 46 00 46 00 00 00 00 46 00 46 00 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 00 46 46 46 00 46 46 46 00 46 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 00 00 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 00 46 00 00 46 00 46 46 46 46 00 00 46 46 46 00 00 46 00 46 46 46 46 46 00 46 46 46 46 00 00 46 46 46 00 46 46 46 46 46 46 46 00 46 46 46 46 46 00 46 46 46 46 46 46 46 00 46 00 00 46 00 46 46 00 00 46 46 00 00 46 08 00 00 46 46 46 46 46 46 00 46 00 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 46 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 00 46 46 46 46 00 46 00 46 46 46 46 46 46 46 00 00 00 00 46 46 46 46 00 08 00 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 00 00 00 46 46 00 00 00 46 46 46 00 00 46 00 46 46 46 46 46 46 46 46 46 00 46 46 00 46 46 46 46 46 46 00 46 46 46 46 46 46 00 46 46 46 46 08 46 46 00 00 46 46 46 46 00 00 46 46 46 46 46 46 00 00 46 46 46 00 00 46 46 46 46 00 00 00 00 46 00 46 46 46 46 00 46 00 46 00 00 00 46 46 46 46 46 46 00 00 46 46 00 00 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46 46
*/
