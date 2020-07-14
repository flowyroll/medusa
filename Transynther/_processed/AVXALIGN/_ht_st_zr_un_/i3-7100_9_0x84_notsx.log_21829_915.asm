.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x198, %rcx
nop
nop
nop
nop
sub %r8, %r8
mov (%rcx), %rdi
nop
nop
add %rbp, %rbp
lea addresses_A_ht+0x175b8, %rdx
nop
nop
nop
nop
cmp $7623, %rbp
mov $0x6162636465666768, %r11
movq %r11, (%rdx)
nop
nop
sub $55078, %rdx
lea addresses_WT_ht+0x1a998, %rdx
nop
nop
cmp $36744, %r14
mov (%rdx), %di
sub $15128, %rdx
lea addresses_A_ht+0x1e598, %r8
sub $37849, %r14
mov $0x6162636465666768, %rcx
movq %rcx, %xmm5
vmovups %ymm5, (%r8)
nop
add $53542, %r14
lea addresses_WT_ht+0x1bd68, %r14
sub $49873, %r11
and $0xffffffffffffffc0, %r14
movaps (%r14), %xmm7
vpextrq $0, %xmm7, %rcx
nop
nop
nop
nop
sub $31577, %r14
lea addresses_D_ht+0x147d8, %rcx
nop
nop
sub $31725, %rdi
movb (%rcx), %dl
add %r11, %r11
lea addresses_UC_ht+0x1b00, %rsi
lea addresses_A_ht+0x191c4, %rdi
clflush (%rsi)
nop
nop
nop
inc %r11
mov $13, %rcx
rep movsl
nop
sub $6032, %r11
lea addresses_UC_ht+0x1e68, %rbp
nop
dec %r8
mov (%rbp), %di
nop
and $2895, %rdi
lea addresses_UC_ht+0x19998, %rdx
clflush (%rdx)
nop
nop
nop
nop
add %r8, %r8
movups (%rdx), %xmm5
vpextrq $0, %xmm5, %rsi
nop
nop
nop
nop
cmp %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r13
push %r9
push %rbp
push %rbx
push %rdx

// Load
lea addresses_WT+0x725a, %r9
nop
nop
nop
dec %r12
mov (%r9), %ebp
nop
sub %r13, %r13

// Faulty Load
lea addresses_UC+0x11998, %r9
nop
nop
nop
nop
nop
and %rbx, %rbx
movaps (%r9), %xmm6
vpextrq $1, %xmm6, %r13
lea oracles, %r9
and $0xff, %r13
shlq $12, %r13
mov (%r9,%r13,1), %r13
pop %rdx
pop %rbx
pop %rbp
pop %r9
pop %r13
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'type': 'addresses_UC', 'same': False, 'size': 1, 'congruent': 0, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_WT', 'same': False, 'size': 4, 'congruent': 1, 'NT': True, 'AVXalign': False}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'type': 'addresses_UC', 'same': True, 'size': 16, 'congruent': 0, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 8, 'congruent': 5, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 2, 'congruent': 9, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'dst': {'type': 'addresses_A_ht', 'same': False, 'size': 32, 'congruent': 10, 'NT': False, 'AVXalign': False}, 'OP': 'STOR'}
{'src': {'type': 'addresses_WT_ht', 'same': False, 'size': 16, 'congruent': 4, 'NT': False, 'AVXalign': True}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_D_ht', 'same': False, 'size': 1, 'congruent': 6, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'OP': 'REPM'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 2, 'congruent': 4, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'same': False, 'size': 16, 'congruent': 11, 'NT': False, 'AVXalign': False}, 'OP': 'LOAD'}
{'01': 20, '54': 1, '45': 3, 'dd': 1, '82': 1, 'd0': 2, '13': 1, '19': 1, '49': 5756, '02': 1, '46': 1, '08': 3, '00': 15851, 'c0': 1, '47': 172, '96': 1, 'b4': 1, 'dc': 1, 'b0': 2, '59': 1, '68': 2, '30': 1, '03': 3, 'e8': 1, '40': 1}
00 00 00 00 49 00 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 49 49 49 49 00 00 00 00 49 00 00 49 49 00 00 00 00 49 00 49 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 49 49 49 49 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 49 00 00 00 00 00 00 49 00 49 00 49 00 49 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 47 00 00 00 00 00 49 49 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 49 00 49 49 00 00 49 49 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 49 00 49 49 00 00 00 00 00 00 00 00 00 00 49 00 49 00 00 00 49 00 49 00 49 00 49 49 00 00 00 00 00 00 00 00 00 00 49 49 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 00 49 00 49 00 00 00 00 00 00 00 00 49 49 49 00 00 49 00 49 49 49 00 00 00 00 49 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 49 00 49 49 00 00 00 00 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 00 49 00 49 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 00 00 00 49 00 49 00 00 00 00 00 47 00 49 00 00 00 00 00 49 49 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 00 49 49 00 49 49 00 00 00 49 00 00 47 49 00 00 00 00 00 49 49 00 00 49 49 00 00 00 00 00 49 00 00 49 00 00 00 00 49 00 00 00 49 49 00 00 49 00 49 00 49 00 00 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 49 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 49 00 49 49 00 00 00 47 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 03 49 00 00 49 00 00 00 49 00 00 00 00 49 49 49 00 00 00 00 49 00 00 00 00 00 00 00 00 49 00 00 49 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 00 00 49 00 49 00 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 49 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 49 00 00 00 00 00 00 00 00 00 00 49 00 49 49 00 49 00 00 49 00 00 00 00 00 00 49 00 00 49 00 00 00 00 00 47 00 49 00 49 49 49 00 49 00 49 00 49 00 00 49 00 00 00 00 00 00 49 00 00 00 00 00 49 00 00 00 00 49 49 00 00 00 00 00 49 00 00 00 49 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 00 00 00 00 00 00 00 00 49 49 00 00 00 00 49 00 00 00 00 49 49 00 00 49 00 00 00 00 49 00 00 49 49 00 49 00 00 00 00 00 00 00 00 00 00 49 49 49 49 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 49 49 49 00 49 00 49
*/
