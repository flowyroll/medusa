.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xe19a, %rsi
lea addresses_A_ht+0x1bd3a, %rdi
nop
and %rdx, %rdx
mov $24, %rcx
rep movsw
nop
nop
nop
nop
inc %rbx
lea addresses_normal_ht+0x14c3a, %rsi
lea addresses_UC_ht+0x16aca, %rdi
nop
nop
xor $22898, %rbp
mov $86, %rcx
rep movsb
nop
nop
nop
nop
nop
inc %rdi
lea addresses_WC_ht+0x13cd0, %rdi
nop
nop
nop
add $12624, %r10
movl $0x61626364, (%rdi)
nop
inc %rsi
lea addresses_WT_ht+0x3d7a, %rsi
lea addresses_UC_ht+0xd83a, %rdi
nop
nop
nop
xor $12214, %rbx
mov $96, %rcx
rep movsb
nop
nop
nop
nop
cmp $4630, %rdi
lea addresses_normal_ht+0x1403a, %rsi
lea addresses_WT_ht+0x179a, %rdi
clflush (%rsi)
nop
nop
xor $63817, %rbx
mov $125, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp %rbp, %rbp
lea addresses_normal_ht+0xeca, %rsi
lea addresses_UC_ht+0x1bd12, %rdi
nop
nop
nop
nop
nop
xor $12813, %rax
mov $93, %rcx
rep movsq
nop
and $44468, %rdx
lea addresses_WT_ht+0x1b8ba, %rdx
nop
nop
dec %r10
mov $0x6162636465666768, %rcx
movq %rcx, (%rdx)
nop
nop
sub $45462, %r10
lea addresses_normal_ht+0xb0a2, %rdx
nop
nop
nop
inc %r10
mov (%rdx), %rcx
nop
nop
nop
nop
nop
cmp $55510, %r10
lea addresses_D_ht+0xb03a, %rdx
nop
nop
xor $4394, %rcx
movb (%rdx), %al
nop
nop
nop
nop
sub $59243, %rax
lea addresses_WC_ht+0x16bba, %rcx
clflush (%rcx)
nop
nop
nop
cmp $26238, %rdi
vmovups (%rcx), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $1, %xmm4, %r10
nop
nop
nop
nop
nop
sub $6393, %rcx
lea addresses_A_ht+0x10d72, %r10
clflush (%r10)
nop
nop
nop
nop
and %rdi, %rdi
mov (%r10), %ax
nop
nop
nop
nop
sub %rax, %rax
lea addresses_A_ht+0x283a, %rbx
clflush (%rbx)
nop
nop
nop
nop
cmp $15273, %rbp
movw $0x6162, (%rbx)
nop
nop
xor $37914, %rdi
lea addresses_D_ht+0x25fa, %rsi
lea addresses_WT_ht+0xb23a, %rdi
xor %r10, %r10
mov $119, %rcx
rep movsq
nop
nop
nop
nop
nop
dec %rsi
lea addresses_A_ht+0x1183a, %rsi
lea addresses_normal_ht+0x303a, %rdi
nop
inc %rax
mov $95, %rcx
rep movsw
nop
nop
nop
xor $7722, %rcx
lea addresses_normal_ht+0x1d902, %rax
nop
nop
inc %rbp
movb (%rax), %bl
xor %rbx, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rbx
push %rcx
push %rdi
push %rsi

// Store
lea addresses_UC+0x1c4d6, %r11
nop
nop
nop
nop
nop
sub %rsi, %rsi
movb $0x51, (%r11)
nop
nop
nop
nop
nop
inc %rsi

// REPMOV
lea addresses_WC+0x171da, %rsi
lea addresses_RW+0x1d83a, %rdi
nop
nop
nop
nop
nop
and $17245, %rbx
mov $31, %rcx
rep movsl
nop
nop
nop
cmp $64232, %rbx

// Faulty Load
mov $0x3d0dca000000083a, %r14
nop
nop
nop
add %rbx, %rbx
movups (%r14), %xmm7
vpextrq $0, %xmm7, %rcx
lea oracles, %r10
and $0xff, %rcx
shlq $12, %rcx
mov (%r10,%rcx,1), %rcx
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_NC', 'same': False, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WC', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_RW', 'congruent': 11, 'same': False}, 'OP': 'REPM'}
[Faulty Load]
{'src': {'type': 'addresses_NC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 8, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WC_ht', 'same': False, 'size': 4, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 4, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'dst': {'type': 'addresses_WT_ht', 'same': False, 'size': 8, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 8, 'congruent': 3, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': True, 'size': 1, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WC_ht', 'same': True, 'size': 32, 'congruent': 7, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 1, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': True, 'size': 2, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_D_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 5, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 10, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_normal_ht', 'same': False, 'size': 1, 'congruent': 2, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'0a': 1, '1a': 1, '79': 1, 'b0': 16163, '00': 5662, 'd0': 1}
00 00 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 00 b0 b0 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 00 00 00 00 00 b0 b0 b0 b0 00 b0 b0 b0 00 00 b0 00 00 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 00 b0 b0 b0 b0 b0 00 00 00 00 00 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 00 00 00 00 00 b0 b0 00 00 00 00 00 00 00 00 00 00 b0 00 00 00 00 b0 b0 00 00 00 b0 b0 b0 b0 00 00 00 b0 b0 00 00 b0 b0 b0 b0 00 00 00 b0 00 00 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 00 00 00 b0 b0 b0 00 00 b0 00 b0 b0 b0 b0 00 00 b0 00 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 00 00 b0 00 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 00 b0 b0 00 00 00 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 b0 b0 00 00 00 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 00 00 00 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 00 00 00 b0 b0 b0 00 00 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 00 00 00 b0 b0 b0 00 00 b0 b0 00 b0 b0 b0 00 b0 b0 00 00 b0 00 b0 b0 b0 00 b0 b0 b0 b0 00 b0 b0 b0 00 00 00 00 00 b0 00 00 b0 b0 00 00 00 00 b0 b0 b0 b0 b0 00 00 00 00 00 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 00 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 b0 00 00 00 00 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 00 00 00 b0 00 00 b0 00 b0 b0 b0 b0 00 b0 00 00 00 b0 00 b0 00 00 00 b0 b0 b0 00 b0 00 b0 00 00 00 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 00 b0 b0 b0 00 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 00 b0 00 00 b0 b0 b0 b0 b0 b0 00 b0 00 b0 b0 00 00 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 00 00 00 00 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 00 b0 b0 00 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 b0 b0 b0 b0 b0 b0 b0 b0 00 00 00 00 00 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 00 00 00 b0 00 b0 b0 b0 b0 00 00 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 b0 00 00 00 b0 b0 b0 b0 b0 00 00 b0 b0 00 b0 b0 b0 b0 b0 00 00 00 00 00 b0 b0 b0 00 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 b0 00 00 00 b0 b0 b0 00 00 00 00 b0 00 00 00 00 b0 00 00 b0 00 00 b0 b0 b0 b0
*/
