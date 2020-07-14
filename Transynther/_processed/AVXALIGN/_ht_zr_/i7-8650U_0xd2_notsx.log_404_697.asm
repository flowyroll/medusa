.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r15
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x10996, %rcx
sub %r12, %r12
mov (%rcx), %r15w
nop
sub $25852, %rbx
lea addresses_D_ht+0x11f52, %rbp
nop
nop
sub %r15, %r15
vmovups (%rbp), %ymm4
vextracti128 $1, %ymm4, %xmm4
vpextrq $0, %xmm4, %rdx
nop
nop
nop
nop
nop
cmp %rbx, %rbx
lea addresses_WC_ht+0xb452, %rsi
lea addresses_UC_ht+0xab32, %rdi
clflush (%rsi)
add %r12, %r12
mov $0, %rcx
rep movsq
dec %r15
lea addresses_normal_ht+0x17552, %rsi
nop
nop
nop
inc %r12
movb (%rsi), %bl
nop
nop
cmp %rbx, %rbx
lea addresses_A_ht+0xc452, %rsi
lea addresses_D_ht+0x10852, %rdi
nop
nop
nop
sub %r15, %r15
mov $57, %rcx
rep movsw
nop
nop
and %rsi, %rsi
lea addresses_WT_ht+0x1a052, %r12
nop
nop
nop
nop
nop
cmp %rdi, %rdi
movb (%r12), %bl
nop
nop
inc %rdi
lea addresses_WC_ht+0x14352, %rsi
lea addresses_A_ht+0xcc52, %rdi
nop
nop
nop
sub %r12, %r12
mov $61, %rcx
rep movsq
nop
nop
nop
sub %rbx, %rbx
lea addresses_normal_ht+0xac2, %rsi
lea addresses_D_ht+0xb852, %rdi
nop
nop
nop
xor %r12, %r12
mov $83, %rcx
rep movsl
nop
nop
nop
and $20281, %rsi
lea addresses_A_ht+0x6852, %rbp
nop
nop
nop
nop
nop
and $49674, %rsi
and $0xffffffffffffffc0, %rbp
movntdqa (%rbp), %xmm2
vpextrq $0, %xmm2, %r12
nop
xor $24746, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r15
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r8
push %r9
push %rcx

// Faulty Load
lea addresses_WC+0x3852, %r10
nop
sub $16652, %r8
movaps (%r10), %xmm1
vpextrq $1, %xmm1, %r9
lea oracles, %r8
and $0xff, %r9
shlq $12, %r9
mov (%r8,%r9,1), %r9
pop %rcx
pop %r9
pop %r8
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_WC', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 10, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 7, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 11, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 10, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 3, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 11, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 11, 'same': True}}
{'00': 381, '48': 22, '44': 1}
00 00 00 48 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 48 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 44 00 00 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 48 00 00 00 00 00 00
*/
