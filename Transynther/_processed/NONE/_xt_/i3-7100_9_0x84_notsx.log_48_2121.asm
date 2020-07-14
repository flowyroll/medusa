.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x50c2, %r14
nop
and %rbp, %rbp
movl $0x61626364, (%r14)
nop
nop
nop
nop
nop
cmp %r14, %r14
lea addresses_D_ht+0xbfd7, %rsi
lea addresses_UC_ht+0xaabf, %rdi
nop
nop
nop
cmp %rbx, %rbx
mov $15, %rcx
rep movsl
nop
cmp $5562, %rdi
lea addresses_WT_ht+0x3d7, %rsi
lea addresses_UC_ht+0x13897, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $125, %rcx
rep movsl
nop
nop
nop
nop
cmp %rdi, %rdi
lea addresses_WC_ht+0x15219, %rbp
nop
nop
sub $60727, %rsi
mov (%rbp), %eax
nop
nop
nop
nop
nop
sub $24399, %rcx
lea addresses_normal_ht+0x1739f, %rsi
lea addresses_WC_ht+0x40d7, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
sub $18251, %rbx
mov $90, %rcx
rep movsw
nop
nop
inc %rcx
lea addresses_UC_ht+0x176db, %r11
nop
cmp $53759, %rdi
mov (%r11), %ebp
nop
add %r14, %r14
lea addresses_WT_ht+0x1add7, %rax
add %rdi, %rdi
mov (%rax), %rsi
nop
nop
nop
inc %rsi
lea addresses_WC_ht+0xdfd7, %r14
nop
nop
nop
nop
add $21151, %rbx
movw $0x6162, (%r14)
nop
nop
nop
nop
and $15139, %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %r15
push %r8
push %r9
push %rbx
push %rcx

// Load
lea addresses_WT+0x95d7, %rbx
nop
nop
nop
nop
sub %r11, %r11
movups (%rbx), %xmm0
vpextrq $0, %xmm0, %r14
nop
nop
nop
dec %r9

// Store
lea addresses_PSE+0x1ddd7, %r8
nop
nop
sub %r9, %r9
movw $0x5152, (%r8)
sub %r11, %r11

// Load
lea addresses_US+0x49d7, %r15
nop
nop
nop
nop
inc %r11
vmovups (%r15), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $0, %xmm7, %r14
nop
nop
nop
nop
sub $30261, %r15

// Faulty Load
lea addresses_WT+0x95d7, %r9
add %rcx, %rcx
movups (%r9), %xmm7
vpextrq $1, %xmm7, %r8
lea oracles, %r15
and $0xff, %r8
shlq $12, %r8
mov (%r15,%r8,1), %r8
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_PSE', 'same': False, 'size': 2, 'congruent': 10, 'NT': True, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_US', 'same': False, 'size': 32, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_WT', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 2, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 2, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'39': 48}
39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39 39
*/
