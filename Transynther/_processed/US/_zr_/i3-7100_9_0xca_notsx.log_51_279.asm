.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r8
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x4a9, %rdx
nop
xor %rsi, %rsi
mov (%rdx), %r9w
cmp %r13, %r13
lea addresses_A_ht+0xfa8, %rbx
and $22875, %r8
mov (%rbx), %r13w
nop
and $10721, %rbx
lea addresses_UC_ht+0x4d69, %r8
and $22146, %rsi
movw $0x6162, (%r8)
nop
nop
nop
nop
cmp %r9, %r9
lea addresses_WT_ht+0x17429, %rsi
lea addresses_WT_ht+0x17d29, %rdi
nop
nop
nop
nop
nop
xor %rbx, %rbx
mov $110, %rcx
rep movsq
sub $20374, %r13
lea addresses_normal_ht+0x229, %r13
nop
nop
nop
nop
dec %rcx
movups (%r13), %xmm4
vpextrq $1, %xmm4, %r9
nop
nop
nop
nop
nop
add %r13, %r13
lea addresses_UC_ht+0x10c29, %rbx
nop
nop
nop
mfence
mov $0x6162636465666768, %rcx
movq %rcx, (%rbx)
cmp %r8, %r8
lea addresses_D_ht+0xb429, %rdx
nop
nop
nop
nop
nop
and $12967, %r9
movb $0x61, (%rdx)
sub $52173, %r9
lea addresses_WT_ht+0xb029, %rsi
clflush (%rsi)
nop
nop
dec %rdx
movw $0x6162, (%rsi)
xor %r9, %r9
lea addresses_WT_ht+0x165e9, %rsi
lea addresses_A_ht+0xd695, %rdi
xor %r9, %r9
mov $120, %rcx
rep movsb
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_D_ht+0x12929, %r9
nop
nop
nop
nop
xor $26140, %r13
mov (%r9), %edx
nop
nop
nop
dec %rcx
lea addresses_normal_ht+0x8c29, %rsi
lea addresses_D_ht+0x12569, %rdi
nop
nop
nop
nop
nop
dec %r8
mov $116, %rcx
rep movsw
nop
sub %r9, %r9
lea addresses_D_ht+0x10ae9, %rdi
nop
nop
nop
and %r8, %r8
mov (%rdi), %si
nop
nop
nop
nop
add $38028, %rdx
lea addresses_A_ht+0x11c29, %r13
nop
nop
nop
nop
cmp $41533, %rbx
mov (%r13), %r8d
nop
nop
nop
nop
xor $29691, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r8
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r14
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_WT+0x12d0b, %rbx
nop
nop
nop
dec %r14
movl $0x51525354, (%rbx)
nop
nop
nop
xor $53889, %rbx

// Faulty Load
lea addresses_US+0x4429, %rsi
inc %rbx
movups (%rsi), %xmm5
vpextrq $0, %xmm5, %rcx
lea oracles, %r14
and $0xff, %rcx
shlq $12, %rcx
mov (%r14,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r14
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 1, 'NT': False, 'type': 'addresses_WT', 'size': 4, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_US', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 6, 'NT': True, 'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_A_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_UC_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'src': {'same': False, 'congruent': 9, 'NT': False, 'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 8, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'src': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 5, 'same': False}}
{'src': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'00': 51}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
