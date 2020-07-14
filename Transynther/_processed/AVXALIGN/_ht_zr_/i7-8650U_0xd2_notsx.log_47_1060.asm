.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r14
push %r15
push %r8
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_WC_ht+0x1a33b, %r8
nop
xor %rsi, %rsi
movb $0x61, (%r8)
nop
add $55130, %r13
lea addresses_WC_ht+0xae43, %r15
nop
nop
inc %rsi
mov (%r15), %di
nop
nop
nop
nop
sub %r13, %r13
lea addresses_WT_ht+0x1ccb7, %r8
nop
nop
nop
nop
dec %rbx
movl $0x61626364, (%r8)
nop
nop
nop
nop
xor $60252, %r15
lea addresses_WC_ht+0x10b3b, %rsi
lea addresses_WC_ht+0x1a73b, %rdi
nop
nop
nop
nop
nop
and %r15, %r15
mov $48, %rcx
rep movsb
nop
nop
sub $18849, %r14
lea addresses_D_ht+0x1999b, %r13
nop
nop
nop
nop
nop
inc %rsi
mov (%r13), %rcx
nop
nop
cmp %r14, %r14
lea addresses_WC_ht+0x11a3b, %rsi
lea addresses_normal_ht+0x1713b, %rdi
clflush (%rdi)
xor %rbx, %rbx
mov $6, %rcx
rep movsq
nop
nop
nop
cmp $21923, %rsi
lea addresses_A_ht+0xec0b, %rsi
lea addresses_normal_ht+0x14b3b, %rdi
xor %r13, %r13
mov $91, %rcx
rep movsq
xor $43680, %r14
lea addresses_UC_ht+0xe13b, %rcx
clflush (%rcx)
and $16640, %rsi
mov (%rcx), %r8
sub %r15, %r15
lea addresses_UC_ht+0x8889, %rbx
nop
nop
nop
nop
add $293, %rcx
vmovups (%rbx), %ymm2
vextracti128 $1, %ymm2, %xmm2
vpextrq $0, %xmm2, %r13
nop
cmp %r8, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r15
pop %r14
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r9
push %rdx
push %rsi

// Faulty Load
lea addresses_normal+0x10d3b, %r14
nop
nop
nop
nop
nop
cmp %rdx, %rdx
vmovaps (%r14), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %rsi
lea oracles, %r14
and $0xff, %rsi
shlq $12, %rsi
mov (%r14,%rsi,1), %rsi
pop %rsi
pop %rdx
pop %r9
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_normal', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 3, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': True}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 8, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'47': 7, '00': 30, '45': 10}
47 47 00 00 00 00 00 45 00 00 00 47 00 00 00 00 45 00 00 00 00 00 47 45 00 00 45 47 45 00 00 45 00 00 47 45 00 45 00 45 47 00 00 00 45 00 00
*/
