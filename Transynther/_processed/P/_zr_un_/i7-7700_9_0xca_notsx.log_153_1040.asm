.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r13
push %r9
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WT_ht+0xc93d, %rax
clflush (%rax)
nop
nop
nop
nop
mfence
movups (%rax), %xmm4
vpextrq $0, %xmm4, %rbx
nop
nop
nop
nop
nop
cmp $40457, %rbp
lea addresses_D_ht+0xd4be, %rbp
nop
nop
nop
nop
nop
add %rcx, %rcx
movl $0x61626364, (%rbp)
nop
nop
nop
xor %rcx, %rcx
lea addresses_normal_ht+0x12649, %r10
nop
nop
nop
nop
lfence
and $0xffffffffffffffc0, %r10
movaps (%r10), %xmm3
vpextrq $0, %xmm3, %rcx
nop
nop
nop
nop
nop
cmp %r10, %r10
lea addresses_A_ht+0x1431d, %r9
nop
nop
nop
nop
nop
and %rax, %rax
movups (%r9), %xmm5
vpextrq $1, %xmm5, %rbx
nop
add $27080, %rbx
lea addresses_D_ht+0x1dccf, %rsi
lea addresses_WT_ht+0x1df3d, %rdi
cmp %r13, %r13
mov $5, %rcx
rep movsl
nop
nop
nop
nop
xor %rsi, %rsi
lea addresses_UC_ht+0x898, %rsi
nop
sub %rax, %rax
movb $0x61, (%rsi)
nop
nop
nop
inc %r10
lea addresses_WT_ht+0x1e4c0, %rsi
lea addresses_WT_ht+0x1df3d, %rdi
nop
nop
nop
and %r13, %r13
mov $62, %rcx
rep movsq
nop
nop
nop
cmp $31821, %rdi
lea addresses_D_ht+0xeb3d, %rbp
sub $59145, %r9
mov (%rbp), %bx
nop
nop
nop
nop
and %rax, %rax
lea addresses_UC_ht+0x171fd, %rdi
nop
dec %rbp
mov $0x6162636465666768, %rcx
movq %rcx, %xmm4
vmovups %ymm4, (%rdi)
nop
nop
and %rbp, %rbp
lea addresses_WT_ht+0x8f3d, %r13
nop
nop
add %rax, %rax
vmovups (%r13), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $1, %xmm2, %rsi
nop
nop
nop
cmp $35424, %rcx
lea addresses_UC_ht+0x1b8ad, %rsi
lea addresses_UC_ht+0x1753d, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %rbx
mov $54, %rcx
rep movsq
nop
nop
nop
nop
nop
cmp $22334, %rsi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r9
pop %r13
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r9
push %rax
push %rdx

// Faulty Load
mov $0xf3d, %r9
nop
sub $10259, %rax
mov (%r9), %r11d
lea oracles, %r13
and $0xff, %r11
shlq $12, %r11
mov (%r13,%r11,1), %r11
pop %rdx
pop %rax
pop %r9
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 0, 'same': False, 'type': 'addresses_P'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': True, 'type': 'addresses_P'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 9, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 0, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': True, 'size': 16, 'congruent': 2, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 3, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_D_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 1, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 0, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': True, 'size': 2, 'congruent': 9, 'same': True, 'type': 'addresses_D_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 5, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'src': {'NT': False, 'AVXalign': False, 'size': 32, 'congruent': 10, 'same': False, 'type': 'addresses_WT_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 3, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'00': 136, 'de': 5, 'e3': 1, '80': 2, 'e0': 9}
00 00 00 80 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e0 00 00 e3 00 00 00 00 00 00 00 00 00 e0 00 00 de 00 00 00 00 80 00 00 00 de 00 00 00 00 00 00 00 de 00 00 e0 00 00 de 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e0 00 00 00 00 00 00 00 00 e0 de 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 e0 00 e0 00 00 00 00 00 00 00 00 00 e0 00 00 00 e0 00 00 00 00 00 00 00 00 00 00 00 00
*/
