.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r13
push %r14
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0x1725d, %rdi
clflush (%rdi)
nop
nop
nop
inc %rdx
mov $0x6162636465666768, %r12
movq %r12, (%rdi)
xor $21278, %rdx
lea addresses_A_ht+0x1b95d, %rdi
nop
nop
nop
cmp $16039, %r14
mov $0x6162636465666768, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
nop
xor $26079, %r12
lea addresses_D_ht+0x1425d, %rax
nop
nop
nop
nop
nop
sub %rbp, %rbp
movb $0x61, (%rax)
nop
nop
sub %rax, %rax
lea addresses_D_ht+0x13813, %rdi
nop
and %r12, %r12
movl $0x61626364, (%rdi)
nop
cmp $56885, %r14
lea addresses_WC_ht+0x525d, %rbp
cmp %r13, %r13
movb $0x61, (%rbp)
nop
xor %r13, %r13
lea addresses_WC_ht+0xd1fd, %rsi
lea addresses_WC_ht+0x1ab5d, %rdi
nop
nop
nop
add %r13, %r13
mov $122, %rcx
rep movsw
nop
nop
nop
nop
nop
and $45969, %r14
lea addresses_UC_ht+0xc25d, %r13
sub $13413, %rax
movups (%r13), %xmm0
vpextrq $1, %xmm0, %rdx
nop
nop
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x10b4d, %rax
nop
nop
nop
nop
inc %r14
movw $0x6162, (%rax)
cmp %rdi, %rdi
lea addresses_UC_ht+0x1365d, %rbp
nop
nop
nop
nop
xor %r12, %r12
movl $0x61626364, (%rbp)
nop
nop
xor $3862, %r14
lea addresses_WT_ht+0x465d, %rsi
lea addresses_WT_ht+0xa19d, %rdi
nop
sub %r14, %r14
mov $11, %rcx
rep movsq
nop
nop
cmp %rax, %rax
lea addresses_normal_ht+0x1cd9d, %r12
nop
nop
nop
xor %rdi, %rdi
vmovups (%r12), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $0, %xmm3, %rsi
dec %rdi
lea addresses_D_ht+0x1d05d, %r14
nop
xor $63722, %rbp
mov (%r14), %r13w
nop
nop
nop
dec %rbp
lea addresses_UC_ht+0xe25d, %rsi
nop
nop
nop
nop
nop
and %rdx, %rdx
movb $0x61, (%rsi)
nop
nop
nop
nop
nop
add %r12, %r12
lea addresses_A_ht+0x1c8bd, %r12
nop
nop
nop
nop
nop
add %rbp, %rbp
mov $0x6162636465666768, %r14
movq %r14, %xmm7
movups %xmm7, (%r12)
nop
nop
nop
nop
nop
sub $55795, %rsi
lea addresses_WT_ht+0x14fb, %r12
nop
nop
nop
and %rsi, %rsi
mov (%r12), %r13d
nop
nop
xor %rdi, %rdi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r14
pop %r13
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %r8
push %r9
push %rbp
push %rbx
push %rsi

// Store
mov $0x77d7ba000000065d, %rsi
nop
nop
nop
inc %rbp
movl $0x51525354, (%rsi)
sub %r11, %r11

// Store
lea addresses_D+0x1fb7d, %rsi
nop
inc %r8
mov $0x5152535455565758, %r13
movq %r13, %xmm7
vmovups %ymm7, (%rsi)
nop
nop
nop
nop
nop
and %r8, %r8

// Faulty Load
mov $0x77d7ba000000065d, %rsi
add %r9, %r9
mov (%rsi), %r11w
lea oracles, %rsi
and $0xff, %r11
shlq $12, %r11
mov (%rsi,%r11,1), %r11
pop %rsi
pop %rbx
pop %rbp
pop %r9
pop %r8
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 2, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_WT_ht', 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 6, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC_ht', 'size': 1, 'AVXalign': True, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': True, 'congruent': 1, 'same': False}}
{'00': 330, '54': 140, '16': 4}
00 54 00 54 00 00 00 00 00 00 00 00 00 54 00 54 54 00 00 00 00 00 00 54 54 54 00 54 00 54 00 54 00 54 00 00 54 00 54 54 00 00 54 00 00 00 00 00 00 00 00 00 00 54 54 00 00 54 00 00 00 00 00 00 16 00 54 54 00 54 00 00 00 54 00 00 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 54 00 54 54 00 54 00 00 54 54 00 54 00 00 00 54 00 00 00 00 16 00 54 00 54 00 00 00 00 00 00 54 00 00 54 54 54 54 00 00 54 54 00 00 00 54 54 00 00 00 00 00 00 00 00 54 00 00 54 00 00 00 00 00 54 00 00 00 00 00 00 54 54 00 00 00 00 54 00 00 00 00 00 00 00 00 54 00 00 00 00 00 54 00 00 00 00 00 00 54 54 54 54 54 00 00 54 54 54 54 00 00 00 00 54 00 00 00 00 00 54 00 00 00 54 00 00 00 00 00 54 00 00 00 00 00 54 00 00 00 00 54 00 54 00 00 00 00 00 00 00 54 00 00 54 00 54 00 00 00 00 00 00 00 00 00 54 54 00 54 00 00 00 54 00 54 16 00 00 54 00 00 00 54 00 00 00 00 00 54 54 00 00 54 00 00 54 54 54 00 00 00 54 00 00 00 00 54 00 54 00 54 54 00 00 00 00 00 00 00 00 00 54 00 00 54 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 54 54 54 54 00 00 00 54 00 00 00 00 00 00 54 00 00 00 00 54 00 54 00 54 00 54 00 54 54 54 54 00 00 00 00 00 00 00 00 00 00 00 00 00 54 00 00 00 00 00 54 54 54 00 00 00 00 54 00 00 54 54 54 00 00 00 00 00 00 00 00 00 54 00 00 54 00 54 54 54 00 00 00 00 00 54 00 00 00 00 54 00 00 16 54 00 54 54 00 54 00 00 00 00 00 00 54 54 54 00 54 00 00 00 54 00 00 00 54 54 00 00 54 00 00 54 00 00 54 54 00 00 00 00 54 54 00 54 54 54 00 00
*/
