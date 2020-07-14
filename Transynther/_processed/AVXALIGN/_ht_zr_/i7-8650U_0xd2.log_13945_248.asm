.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %r14
push %r8
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_D_ht+0x1d344, %rsi
lea addresses_normal_ht+0x13fac, %rdi
sub $41371, %r11
mov $100, %rcx
rep movsw
nop
nop
nop
nop
sub $13357, %r8
lea addresses_UC_ht+0xc23f, %r14
cmp $62942, %r13
vmovups (%r14), %ymm0
vextracti128 $1, %ymm0, %xmm0
vpextrq $0, %xmm0, %rdi
nop
nop
nop
nop
nop
cmp %r8, %r8
lea addresses_WC_ht+0x24ec, %rsi
lea addresses_A_ht+0x13127, %rdi
nop
nop
nop
add $17294, %rbp
mov $106, %rcx
rep movsl
nop
nop
nop
nop
and $31340, %r11
lea addresses_A_ht+0x120ec, %rsi
lea addresses_WT_ht+0x60ec, %rdi
nop
nop
dec %rbp
mov $17, %rcx
rep movsb
and $8543, %r11
lea addresses_D_ht+0x76ec, %r8
nop
nop
nop
nop
nop
cmp %r14, %r14
vmovups (%r8), %ymm2
vextracti128 $0, %ymm2, %xmm2
vpextrq $1, %xmm2, %rbp
nop
nop
sub %rsi, %rsi
lea addresses_WC_ht+0xf82c, %rsi
lea addresses_WC_ht+0x12769, %rdi
cmp $23948, %r13
mov $31, %rcx
rep movsq
nop
nop
nop
inc %r13
lea addresses_A_ht+0xe55d, %rdi
nop
nop
nop
nop
nop
xor $18974, %r14
mov (%rdi), %r11d
nop
nop
nop
nop
and $47969, %rbp
lea addresses_A_ht+0x1c0ec, %r8
nop
nop
nop
nop
inc %r11
movl $0x61626364, (%r8)
nop
nop
nop
nop
nop
add $45122, %rdi
lea addresses_A_ht+0x11ec, %rsi
nop
nop
nop
dec %r14
mov (%rsi), %rbp
nop
nop
nop
nop
add $26311, %r8
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r8
pop %r14
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r13
push %r8
push %rdx
push %rsi

// Faulty Load
lea addresses_D+0x10ec, %r10
nop
nop
nop
nop
nop
sub %r11, %r11
vmovaps (%r10), %ymm5
vextracti128 $1, %ymm5, %xmm5
vpextrq $0, %xmm5, %r8
lea oracles, %r13
and $0xff, %r8
shlq $12, %r8
mov (%r13,%r8,1), %r8
pop %rsi
pop %rdx
pop %r8
pop %r13
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_D', 'size': 32, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 8, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 0, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 8, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'48': 4517, '00': 8005, '46': 1408, '47': 15}
48 48 00 46 00 00 48 48 00 00 00 00 00 00 00 46 00 46 00 48 48 00 00 48 48 48 48 48 00 00 46 48 00 00 00 00 00 00 00 00 48 48 00 48 00 00 00 00 00 00 48 00 00 46 46 00 48 00 00 00 46 00 00 00 00 00 48 00 46 00 00 00 00 48 00 00 48 00 48 46 00 46 48 48 48 48 00 00 00 48 48 48 48 48 48 48 48 48 00 00 48 48 00 00 00 46 00 48 48 48 00 00 00 00 00 46 00 00 00 48 00 00 00 00 46 00 46 00 46 00 00 00 48 46 00 00 00 00 48 00 00 48 46 00 00 48 00 00 00 00 46 46 48 00 00 00 00 00 00 00 00 00 48 00 00 48 00 00 48 00 00 00 46 48 48 48 48 00 48 00 48 00 00 48 48 00 48 00 00 00 00 00 00 46 48 46 48 00 48 48 48 00 48 00 48 00 00 00 00 00 48 48 00 00 00 48 48 48 48 48 00 00 00 00 00 46 48 00 48 00 00 00 00 48 48 00 48 48 00 00 00 48 48 00 00 00 48 48 00 48 00 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 48 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 00 00 00 46 46 48 00 00 00 46 48 00 00 46 46 48 00 00 00 00 00 00 00 00 00 48 48 00 48 48 48 00 48 00 00 00 00 00 48 00 00 00 00 48 48 48 00 00 48 00 00 46 00 48 00 00 00 00 00 00 00 00 48 00 46 00 48 00 00 00 48 46 00 00 00 00 00 00 48 48 00 00 00 48 48 48 00 48 00 46 00 48 00 00 46 46 46 46 00 00 00 00 48 00 00 00 00 00 46 00 46 48 00 48 00 48 00 00 00 00 00 00 00 48 00 46 00 00 48 00 00 00 00 48 00 46 00 00 00 46 00 48 48 48 46 00 00 00 48 00 00 00 46 00 48 00 00 00 00 00 46 00 00 46 48 00 00 00 00 48 48 48 48 00 00 48 00 00 00 48 00 00 46 00 00 00 00 48 00 00 48 00 00 00 00 00 00 00 46 00 00 00 48 00 46 00 00 00 00 48 48 00 00 00 48 48 48 48 00 00 00 46 00 48 48 00 00 00 00 00 00 00 48 00 46 48 00 48 00 00 00 00 00 00 00 48 00 00 00 00 00 48 48 00 00 00 00 00 00 00 00 00 00 46 00 00 00 00 00 00 00 48 00 00 00 00 00 48 00 00 00 00 00 48 48 48 48 00 00 00 00 48 46 00 48 00 48 00 00 48 48 48 48 00 46 00 48 00 00 46 46 00 00 00 00 00 00 48 00 48 00 48 46 00 00 48 46 46 48 48 48 46 48 46 00 48 00 46 00 00 00 46 00 00 00 00 46 00 00 00 48 00 00 00 00 00 00 00 46 48 48 00 00 48 00 48 48 00 00 00 00 00 48 48 48 00 48 48 00 46 00 00 48 48 00 00 48 00 48 48 46 48 00 00 00 48 00 48 00 48 00 46 48 46 00 00 00 48 46 48 48 00 00 46 48 48 48 46 48 46 48 00 00 00 00 48 48 00 00 46 00 00 00 00 00 00 00 00 48 48 48 48 46 48 48 48 00 00 00 48 48 00 48 48 00 46 46 00 00 00 00 00 48 48 48 48 48 48 00 46 00 48 48 48 00 46 00 00 00 00 00 00 00 46 00 00 00 48 00 00 48 46 46 46 00 00 00 46 00 00 46 46 00 00 00 00 00 00 00 00 48 46 00 00 46 00 46 00 00 00 48 46 00 48 00 00 00 00 46 00 00 00 48 00 00 48 00 00 00 00 00 00 00 00 00 48 48 48 48 48 46 00 00 00 48 48 00 46 00 00 48 00 48 48 00 00 48 48 00 48 00 00 00 00 00 00 00 00 48 48 48 00 48 48 48 00 00 00 46 00 00 00 46 46 00 00 00 00 00 00 00 00 00 48 00 48 46 00 46 48 48 48 00 00 48 00 00 48 00 48 00 00 00 00 00 48 48 48 00 00 48 48 48 00 48 00 48 00 48 48 00 48 48 48 48 00 00 48 48 48 48 00 00 00 00 48 00 00 00 48 00 48 00 48 00 00 48 46 00 46 46 00 48 00 48 48 48 00 00 00 00 48 48 48 48 48 48 00 00 46 48 48 48 48 00 00 00 46 00 46 00 00 00 00 46 00 46 00 48 00 00 00 48 00 00 00 48
*/
