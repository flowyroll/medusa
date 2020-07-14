.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_WC_ht+0xe7a3, %rsi
lea addresses_A_ht+0x13c91, %rdi
nop
nop
sub $156, %r8
mov $62, %rcx
rep movsl
sub $64258, %r14
lea addresses_WT_ht+0xea3, %rsi
lea addresses_A_ht+0x1e3a3, %rdi
clflush (%rdi)
nop
nop
nop
dec %r11
mov $117, %rcx
rep movsq
sub %rsi, %rsi
lea addresses_UC_ht+0x139d7, %r14
clflush (%r14)
sub $27490, %rcx
mov (%r14), %si
nop
sub $25654, %r14
lea addresses_A_ht+0x12c7f, %rsi
lea addresses_UC_ht+0x1e837, %rdi
nop
nop
inc %r12
mov $46, %rcx
rep movsl
nop
nop
nop
sub $22022, %r12
lea addresses_UC_ht+0x1dba3, %r8
clflush (%r8)
nop
nop
cmp %r12, %r12
mov (%r8), %rsi
nop
nop
nop
nop
and %rcx, %rcx
lea addresses_UC_ht+0x7223, %r14
nop
cmp $43478, %r8
movl $0x61626364, (%r14)
nop
nop
inc %rdi
lea addresses_D_ht+0xfda3, %r14
nop
nop
sub $3207, %r11
mov $0x6162636465666768, %rcx
movq %rcx, (%r14)
add $35010, %rdi
lea addresses_UC_ht+0x136ab, %rsi
lea addresses_A_ht+0x13fa3, %rdi
nop
nop
nop
dec %rdx
mov $94, %rcx
rep movsq
nop
nop
nop
nop
dec %rsi
lea addresses_WC_ht+0xbf7f, %rsi
lea addresses_WC_ht+0x137a3, %rdi
nop
nop
sub $56223, %rdx
mov $116, %rcx
rep movsb
nop
nop
nop
sub %r14, %r14
lea addresses_normal_ht+0xeb63, %rsi
lea addresses_normal_ht+0x58e3, %rdi
nop
nop
nop
nop
cmp %r12, %r12
mov $58, %rcx
rep movsl
nop
nop
nop
nop
nop
and $4981, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rax
push %rbp
push %rsi

// Load
lea addresses_D+0x16aeb, %rax
nop
nop
nop
sub $41975, %r15
mov (%rax), %bp
nop
nop
sub $9127, %r15

// Faulty Load
lea addresses_normal+0x17a3, %r15
and $2465, %rsi
vmovntdqa (%r15), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rax
lea oracles, %r10
and $0xff, %rax
shlq $12, %rax
mov (%r10,%rax,1), %rax
pop %rsi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'AVXalign': False, 'size': 16, 'congruent': 0, 'same': False, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_D'}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': True, 'AVXalign': False, 'size': 32, 'congruent': 0, 'same': True, 'type': 'addresses_normal'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 8, 'same': False, 'type': 'addresses_WT_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 2, 'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 1, 'same': False, 'type': 'addresses_A_ht'}, 'dst': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM'}
{'src': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 10, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 4, 'congruent': 4, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'STOR'}
{'dst': {'NT': False, 'AVXalign': False, 'size': 8, 'congruent': 7, 'same': False, 'type': 'addresses_D_ht'}, 'OP': 'STOR'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_UC_ht'}, 'dst': {'congruent': 9, 'same': False, 'type': 'addresses_A_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 2, 'same': False, 'type': 'addresses_WC_ht'}, 'dst': {'congruent': 11, 'same': False, 'type': 'addresses_WC_ht'}, 'OP': 'REPM'}
{'src': {'congruent': 4, 'same': False, 'type': 'addresses_normal_ht'}, 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM'}
{'00': 11941, '45': 3271, '48': 4884, '44': 614, '49': 1119}
00 00 45 00 48 45 00 00 00 45 00 45 00 00 00 45 45 48 00 00 00 00 00 48 00 00 00 00 00 45 48 48 00 00 48 49 44 00 00 00 45 48 00 48 49 00 00 00 00 45 00 00 00 00 45 48 00 00 00 45 00 00 00 45 48 00 45 48 48 00 00 48 49 48 00 00 00 48 48 00 00 00 00 00 45 00 45 49 00 00 00 00 00 45 48 00 00 00 00 48 48 00 48 00 49 00 00 00 48 00 44 00 00 00 00 45 00 00 00 00 48 48 48 00 00 00 00 00 49 48 00 00 00 00 48 45 48 00 48 00 00 45 48 45 00 45 00 00 00 00 00 45 48 44 45 00 00 00 00 48 44 00 45 48 00 00 00 48 48 00 00 00 48 48 00 00 00 00 00 45 44 00 00 00 45 48 00 00 00 49 48 00 00 45 48 00 00 00 00 00 48 49 00 00 00 48 00 44 00 00 00 45 45 00 00 48 00 48 00 00 00 49 48 00 00 00 44 00 00 00 00 48 00 00 45 00 48 49 48 48 00 00 00 45 45 49 45 00 48 00 00 00 00 00 00 00 48 00 48 00 45 48 48 00 48 00 48 00 45 45 48 00 00 45 00 00 00 45 45 49 00 00 00 00 00 00 45 48 00 00 00 48 00 48 48 00 00 45 00 00 00 00 48 48 48 00 00 00 00 44 44 00 00 45 48 45 49 48 00 00 48 45 48 48 00 00 00 00 48 00 00 00 00 48 45 48 44 00 00 00 45 48 00 00 00 48 00 00 00 49 44 48 00 00 48 00 00 00 00 00 00 49 48 00 45 45 00 00 48 00 00 00 48 48 48 48 45 48 00 48 00 00 00 00 48 00 48 48 00 00 00 48 48 45 48 00 00 45 48 48 48 00 00 00 00 48 00 00 00 00 00 45 00 48 00 00 45 44 48 00 00 45 00 00 00 00 00 00 48 45 00 00 49 44 00 00 45 48 00 00 00 00 49 00 48 00 00 00 00 00 48 00 00 00 45 48 48 00 00 00 00 45 48 00 00 00 00 45 00 49 00 00 00 00 00 00 45 49 49 00 00 00 00 00 00 00 45 48 00 00 00 00 45 44 00 00 00 00 00 49 00 00 45 00 00 00 48 00 00 00 00 45 00 00 00 48 00 00 48 00 00 45 48 44 00 00 00 00 00 48 00 48 00 00 00 48 44 48 00 00 00 00 45 45 49 00 00 00 48 48 00 48 48 49 44 00 00 00 00 48 00 00 00 45 00 00 45 00 49 45 00 48 48 44 00 00 00 00 00 45 45 49 48 00 49 48 00 48 00 00 00 48 48 48 00 00 00 45 45 45 48 00 00 00 00 48 48 00 00 00 00 00 45 00 00 00 00 45 45 00 00 48 00 45 45 00 48 48 45 49 00 00 00 00 00 48 00 00 45 49 00 00 48 00 00 48 45 00 00 00 00 48 00 00 00 45 49 45 48 44 00 45 48 44 00 00 00 45 00 00 45 00 00 45 45 44 00 00 00 48 00 00 45 48 44 00 00 00 00 45 00 44 00 00 00 00 45 45 48 44 00 00 48 48 00 00 45 45 48 48 00 00 49 44 48 00 00 00 00 45 45 00 49 48 45 00 00 00 00 00 00 48 00 00 00 00 00 00 49 00 48 48 44 00 00 00 45 00 00 00 00 49 00 49 45 48 00 00 00 48 48 00 00 00 48 48 48 00 00 00 45 00 48 00 00 00 00 00 48 00 00 00 48 00 00 00 45 00 48 00 00 00 00 00 49 00 45 00 48 00 00 00 00 44 00 00 00 45 45 48 00 00 00 00 48 00 00 45 00 45 44 00 48 48 00 00 00 00 48 00 00 45 48 00 44 00 00 45 48 49 45 49 48 00 00 00 48 49 00 00 00 00 49 00 00 45 44 00 00 45 48 00 00 00 45 44 00 00 00 49 49 48 00 00 45 48 00 48 00 00 00 00 00 45 00 00 48 48 00 00 49 00 00 48 00 00 00 45 00 00 00 00 45 00 00 48 00 48 00 00 00 48 48 00 00 45 45 44 00 00 00 45 00 45 00 00 44 00 48 48 48 00 00 00 00 48 48 00 00 00 45 48 48 00 00 45 00 00 49 44 00 00 49 49 44 00 00 00 45 00 00 45 00 44 00 00 00 00 48 48 44 00 48 48 00 00 00 45 44 00 00 00 00 48 48 45 44 00 00 48 48 00 00 00 48 00 00 49 48 00
*/
