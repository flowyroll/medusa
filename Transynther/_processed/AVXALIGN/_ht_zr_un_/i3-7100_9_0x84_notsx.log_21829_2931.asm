.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r12
push %r14
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0xd8f1, %rsi
lea addresses_D_ht+0x1861, %rdi
nop
nop
nop
nop
nop
add $35703, %rbx
mov $120, %rcx
rep movsb
xor %rsi, %rsi
lea addresses_UC_ht+0x1a121, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp $40270, %r14
mov $0x6162636465666768, %rdx
movq %rdx, %xmm5
movups %xmm5, (%rbx)
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x7a27, %rbx
nop
inc %r10
mov $0x6162636465666768, %r14
movq %r14, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
nop
cmp $12923, %r10
lea addresses_A_ht+0x15681, %rdi
nop
nop
nop
nop
and $21115, %rcx
mov (%rdi), %rdx
nop
nop
nop
nop
nop
cmp $7022, %rdx
lea addresses_A_ht+0xede1, %rcx
cmp $39617, %rdx
mov $0x6162636465666768, %r10
movq %r10, (%rcx)
nop
nop
nop
and %rdx, %rdx
lea addresses_WC_ht+0x1cd61, %rsi
lea addresses_D_ht+0x85f1, %rdi
xor %r12, %r12
mov $81, %rcx
rep movsb
mfence
lea addresses_D_ht+0xb761, %rsi
lea addresses_WC_ht+0x6561, %rdi
nop
nop
nop
nop
nop
inc %rdx
mov $28, %rcx
rep movsq
nop
nop
nop
dec %r10
lea addresses_WT_ht+0x3257, %rdx
nop
nop
nop
xor $23303, %rdi
mov (%rdx), %r10w
nop
nop
nop
nop
nop
xor %r10, %r10
lea addresses_WC_ht+0x6b21, %rsi
lea addresses_D_ht+0xb699, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
add $36964, %rbx
mov $112, %rcx
rep movsw
nop
cmp %rdx, %rdx
lea addresses_WT_ht+0x107dc, %rsi
lea addresses_UC_ht+0x178e1, %rdi
nop
nop
nop
cmp $14508, %r10
mov $118, %rcx
rep movsl
and %rsi, %rsi
lea addresses_D_ht+0x9461, %rdx
nop
nop
xor $47100, %r12
movw $0x6162, (%rdx)
nop
nop
nop
add %r10, %r10
lea addresses_UC_ht+0xf7c1, %r14
nop
nop
nop
xor $59388, %rbx
mov (%r14), %edx
nop
nop
nop
nop
nop
sub %r14, %r14
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r12
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r15
push %r9
push %rax
push %rbx
push %rdi

// Store
lea addresses_D+0xcb61, %r11
nop
nop
cmp $57044, %rdi
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
nop
nop
nop
xor $3226, %rbx

// Store
lea addresses_normal+0x15551, %r13
nop
nop
nop
nop
nop
and %r9, %r9
movb $0x51, (%r13)
nop
nop
nop
nop
nop
xor $23406, %rax

// Store
lea addresses_UC+0x2349, %rax
nop
nop
nop
nop
lfence
movw $0x5152, (%rax)
nop
cmp %rdi, %rdi

// Load
lea addresses_WT+0x69e1, %r15
nop
dec %rdi
movb (%r15), %r13b
nop
nop
xor %rax, %rax

// Store
lea addresses_UC+0x18361, %rdi
nop
nop
nop
nop
nop
cmp $27794, %r13
movl $0x51525354, (%rdi)
nop
nop
nop
nop
nop
cmp %r15, %r15

// Load
lea addresses_UC+0x6361, %r11
nop
xor %r13, %r13
mov (%r11), %ebx
nop
nop
dec %rbx

// Load
lea addresses_RW+0x1d1f1, %r13
nop
nop
nop
nop
nop
sub $37776, %r9
movb (%r13), %r15b
nop
nop
inc %r11

// Store
lea addresses_WC+0x1d8f5, %rdi
cmp $16860, %r9
mov $0x5152535455565758, %r11
movq %r11, %xmm0
vmovups %ymm0, (%rdi)
nop
inc %rax

// Faulty Load
lea addresses_A+0x18361, %r11
nop
nop
nop
add %r13, %r13
vmovntdqa (%r11), %ymm0
vextracti128 $0, %ymm0, %xmm0
vpextrq $1, %xmm0, %rdi
lea oracles, %r13
and $0xff, %rdi
shlq $12, %rdi
mov (%r13,%rdi,1), %rdi
pop %rdi
pop %rbx
pop %rax
pop %r9
pop %r15
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_A', 'same': False, 'size': 8, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_D', 'same': False, 'size': 8, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal', 'same': False, 'size': 1, 'congruent': 3, 'NT': False, 'AVXalign': True}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 2, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 1, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC', 'same': False, 'size': 4, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_RW', 'same': False, 'size': 1, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_WC', 'same': False, 'size': 32, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
[Faulty Load]
{'src': {'type': 'addresses_A', 'same': True, 'size': 32, 'congruent': 0, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 6, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'dst': {'type': 'addresses_normal_ht', 'same': False, 'size': 32, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': True, 'AVXalign': True}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_D_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': True}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': True}, 'OP': 'REPM'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_D_ht', 'same': False, 'size': 2, 'congruent': 8, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 4, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'68': 2, '25': 3705, '48': 160, '2a': 9, '49': 686, '46': 476, '00': 16602, 'ff': 181, '09': 2, '40': 2, '08': 4}
00 46 00 25 00 00 00 49 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 25 49 00 00 00 00 00 25 49 00 00 25 00 25 00 25 00 25 00 25 00 48 00 00 00 00 00 00 25 00 25 00 00 49 00 00 25 00 00 25 00 00 25 00 00 25 00 25 00 25 00 00 00 00 00 00 00 00 00 00 00 25 00 00 25 25 00 00 00 00 00 00 00 00 25 00 00 00 00 25 00 25 00 00 00 00 00 00 00 25 00 25 25 00 00 49 00 00 25 00 25 00 25 25 00 00 00 00 25 00 00 09 25 00 00 00 00 49 25 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 ff 00 25 48 25 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 ff 00 00 00 00 00 00 00 00 00 00 00 25 ff 00 25 00 00 48 00 00 00 25 00 00 00 25 00 00 00 00 00 25 00 25 00 00 48 25 00 00 00 00 00 00 00 00 25 00 00 00 25 25 00 25 00 00 00 00 00 00 00 00 25 00 00 25 00 00 25 25 00 00 00 25 00 00 00 48 25 00 00 00 00 00 25 25 00 00 00 00 00 00 00 48 00 00 00 25 00 00 00 25 25 00 00 00 25 25 00 00 00 00 00 00 00 25 00 00 00 00 00 49 25 00 25 00 00 49 00 25 00 25 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 25 00 00 25 25 00 00 00 25 00 00 25 00 00 00 25 00 00 00 00 00 00 00 49 00 00 25 25 25 00 25 00 00 48 00 00 00 00 00 00 00 00 00 00 25 25 25 49 00 00 25 00 00 49 00 25 00 00 00 00 00 25 00 00 00 00 25 00 00 00 00 00 00 00 00 00 25 25 00 00 00 00 00 00 25 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 48 00 00 00 00 00 00 25 00 00 49 00 00 00 00 00 00 25 25 25 00 49 00 00 25 00 25 49 00 00 00 00 00 00 25 25 00 00 00 49 00 25 00 00 00 00 00 25 00 00 49 00 00 00 00 49 00 25 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 25 25 00 00 49 25 00 00 00 25 49 00 00 00 00 00 25 00 00 00 25 00 00 00 ff 00 49 00 25 00 00 25 49 25 00 00 00 00 00 25 00 25 00 00 00 00 00 00 00 00 00 00 00 00 25 00 25 00 00 00 00 25 25 00 25 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 25 00 00 00 49 00 25 00 00 00 25 25 00 00 48 00 25 00 25 00 00 25 25 25 00 25 00 25 25 00 00 25 49 00 25 00 00 25 00 25 00 00 00 00 46 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 25 00 49 00 00 00 00 00 00 00 00 25 00 00 00 25 00 00 00 25 49 00 00 00 00 00 00 25 00 00 00 00 25 00 00 25 00 00 ff 00 25 00 00 00 25 00 00 00 00 25 00 00 25 00 00 49 00 00 00 25 00 00 25 00 00 00 00 00 25 25 00 00 00 00 00 25 25 00 25 00 25 00 00 00 00 00 25 00 00 00 00 25 00 25 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 25 25 00 00 00 25 00 00 00 00 25 00 00 25 00 00 00 00 00 00 00 25 00 00 00 00 00 00 25 00 00 00 00 25 46 00 00 00 00 00 00 00 00 00 00 25 00 00 00 25 00 25 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 00 00 00 25 00 00 25 00 25 00 49 00 00 00 00 00 00 25 00 25 00 00 25 25 00 00 00 00 25 00 00 00 00 25 25 25 00 00 00 00 25 ff 00 00 25 25 00 00 00 49 00 2a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 25 00 00 00 00 00 00 00 00 25 25 00 00 00 25 00 00 00 46 49 25 00 25 00 00 00 ff 00 00 00 ff 49 00 25 00 46 00 25 00 25 00 00 00 25 00 00 00 00 00 25
*/
