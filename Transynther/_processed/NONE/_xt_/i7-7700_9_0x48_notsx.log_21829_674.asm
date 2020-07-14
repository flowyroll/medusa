.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r15
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WT_ht+0x19c01, %rcx
nop
xor %r15, %r15
movups (%rcx), %xmm5
vpextrq $0, %xmm5, %r9
nop
nop
nop
inc %rdx
lea addresses_normal_ht+0xa788, %r10
nop
nop
nop
nop
add $40762, %r13
movups (%r10), %xmm0
vpextrq $0, %xmm0, %rdi
nop
sub %rcx, %rcx
lea addresses_A_ht+0x1278d, %rcx
nop
sub $52046, %rdx
mov (%rcx), %r13d
nop
nop
nop
nop
xor $46179, %r10
lea addresses_normal_ht+0x14b8d, %r13
nop
inc %r15
mov (%r13), %rdi
nop
nop
add $1300, %rcx
lea addresses_D_ht+0x1338d, %r15
nop
nop
nop
nop
inc %rdx
mov (%r15), %ecx
nop
nop
xor %r9, %r9
lea addresses_UC_ht+0xdb8d, %rsi
lea addresses_UC_ht+0x12acd, %rdi
nop
nop
add $19320, %r15
mov $106, %rcx
rep movsq
add $20026, %r15
lea addresses_WT_ht+0xb78d, %r10
sub %r15, %r15
movl $0x61626364, (%r10)
nop
nop
inc %r9
lea addresses_WC_ht+0x12677, %rdi
add $53924, %r9
mov (%rdi), %r10
nop
dec %rsi
lea addresses_A_ht+0xf2cd, %rsi
lea addresses_normal_ht+0x71ed, %rdi
and %r9, %r9
mov $97, %rcx
rep movsb
inc %rcx
lea addresses_D_ht+0x3b8d, %rsi
lea addresses_A_ht+0x1a08d, %rdi
nop
nop
nop
sub %r15, %r15
mov $55, %rcx
rep movsl
nop
nop
nop
nop
and %r15, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r15
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r9
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x13c76, %rbx
nop
nop
sub %r9, %r9
movb $0x51, (%rbx)
nop
nop
nop
nop
nop
cmp %rbx, %rbx

// REPMOV
lea addresses_normal+0xeb8d, %rsi
lea addresses_WC+0xc48d, %rdi
nop
cmp %r11, %r11
mov $98, %rcx
rep movsw
nop
nop
nop
nop
nop
and $34483, %rbp

// REPMOV
lea addresses_WC+0x3b8d, %rsi
lea addresses_UC+0x8d19, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $126, %rcx
rep movsw
nop
nop
nop
nop
nop
add $31266, %r11

// Store
lea addresses_normal+0x270d, %rbx
and %rcx, %rcx
movl $0x51525354, (%rbx)
nop
xor %rbx, %rbx

// Store
mov $0xfa3, %r9
nop
nop
nop
nop
nop
sub $53999, %rsi
movw $0x5152, (%r9)
nop
nop
nop
xor %rbp, %rbp

// Store
lea addresses_UC+0x1398d, %r10
nop
nop
nop
nop
nop
add $8355, %r11
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r10)
nop
nop
nop
nop
nop
and %r11, %r11

// Store
lea addresses_normal+0xdbed, %r9
inc %rbp
movl $0x51525354, (%r9)
nop
nop
nop
nop
inc %r10

// Store
lea addresses_RW+0xa826, %r10
nop
add $35156, %rbp
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
movups %xmm1, (%r10)
nop
nop
sub $8446, %rdi

// Load
mov $0x625713000000038d, %r10
nop
nop
nop
nop
add %rcx, %rcx
movups (%r10), %xmm5
vpextrq $1, %xmm5, %rdi
nop
nop
nop
nop
nop
and $1710, %rcx

// Store
lea addresses_WT+0xa78d, %r9
cmp $32600, %r10
mov $0x5152535455565758, %r11
movq %r11, %xmm5
vmovups %ymm5, (%r9)
nop
nop
nop
nop
inc %rsi

// Faulty Load
lea addresses_WT+0x15b8d, %r11
nop
nop
nop
nop
nop
cmp %rcx, %rcx
mov (%r11), %ebp
lea oracles, %r10
and $0xff, %rbp
shlq $12, %rbp
mov (%r10,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r9
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_WT', 'congruent': 0}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 1, 'type': 'addresses_normal', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'congruent': 7, 'type': 'addresses_WC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}}
{'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC'}}
{'dst': {'same': False, 'NT': False, 'AVXalign': True, 'size': 4, 'type': 'addresses_normal', 'congruent': 3}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 2, 'type': 'addresses_P', 'congruent': 0}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_UC', 'congruent': 6}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_normal', 'congruent': 5}, 'OP': 'STOR'}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_RW', 'congruent': 0}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_NC', 'congruent': 11}}
{'dst': {'same': False, 'NT': False, 'AVXalign': False, 'size': 32, 'type': 'addresses_WT', 'congruent': 10}, 'OP': 'STOR'}
[Faulty Load]
{'OP': 'LOAD', 'src': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT', 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_WT_ht', 'congruent': 2}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 16, 'type': 'addresses_normal_ht', 'congruent': 0}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_A_ht', 'congruent': 10}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_normal_ht', 'congruent': 11}}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_D_ht', 'congruent': 11}}
{'dst': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'src': {'same': True, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'dst': {'same': True, 'NT': False, 'AVXalign': False, 'size': 4, 'type': 'addresses_WT_ht', 'congruent': 8}, 'OP': 'STOR'}
{'OP': 'LOAD', 'src': {'same': False, 'NT': False, 'AVXalign': False, 'size': 8, 'type': 'addresses_WC_ht', 'congruent': 0}}
{'dst': {'same': False, 'congruent': 5, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 5, 'type': 'addresses_A_ht'}}
{'dst': {'same': True, 'congruent': 8, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'src': {'same': False, 'congruent': 11, 'type': 'addresses_D_ht'}}
{'39': 21829}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
