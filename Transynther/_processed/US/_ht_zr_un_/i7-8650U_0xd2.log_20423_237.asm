.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r13
push %rax
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_normal_ht+0xfb2c, %rsi
lea addresses_normal_ht+0x472c, %rdi
clflush (%rsi)
nop
nop
nop
nop
nop
inc %rbp
mov $4, %rcx
rep movsw
nop
nop
nop
nop
cmp $3567, %rcx
lea addresses_D_ht+0x12dc, %r13
add $62347, %rsi
movups (%r13), %xmm5
vpextrq $0, %xmm5, %r11
xor %rbp, %rbp
lea addresses_WT_ht+0xa3ac, %r11
clflush (%r11)
nop
nop
cmp $59798, %rax
mov (%r11), %edi
nop
xor %rax, %rax
lea addresses_normal_ht+0x442c, %rsi
nop
nop
inc %rbp
mov $0x6162636465666768, %r13
movq %r13, %xmm0
movups %xmm0, (%rsi)
nop
nop
nop
nop
nop
dec %r13
lea addresses_UC_ht+0xf92c, %rsi
xor $14615, %rcx
mov (%rsi), %ebp
nop
dec %rcx
lea addresses_normal_ht+0x118dc, %rsi
add $63184, %rbp
movb (%rsi), %al
nop
nop
nop
nop
and %rdi, %rdi
lea addresses_WC_ht+0xd1a9, %rsi
lea addresses_UC_ht+0x1b3ec, %rdi
clflush (%rsi)
nop
nop
nop
nop
and %rax, %rax
mov $37, %rcx
rep movsb
nop
inc %rdi
lea addresses_A_ht+0xefa4, %rsi
lea addresses_WC_ht+0xcfac, %rdi
nop
nop
nop
nop
sub %rdx, %rdx
mov $112, %rcx
rep movsq
cmp %rcx, %rcx
lea addresses_WC_ht+0xf104, %rsi
lea addresses_D_ht+0x10bbc, %rdi
sub $36954, %rax
mov $52, %rcx
rep movsl
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_D_ht+0x9b2c, %rdx
nop
nop
nop
nop
nop
add $58039, %rax
mov (%rdx), %edi
nop
nop
nop
nop
nop
cmp %rsi, %rsi
lea addresses_normal_ht+0x1aa8f, %r13
nop
nop
nop
nop
nop
and %rcx, %rcx
mov (%r13), %r11w
nop
nop
sub %rbp, %rbp
lea addresses_WT_ht+0x1d0aa, %rbp
nop
nop
nop
and %rsi, %rsi
mov (%rbp), %edi
nop
nop
add $6259, %rax
lea addresses_D_ht+0x1779a, %rax
nop
nop
nop
nop
xor %rsi, %rsi
movb $0x61, (%rax)
nop
nop
nop
nop
dec %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r13
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r12
push %r13
push %r14
push %r8
push %r9
push %rdx

// Store
lea addresses_UC+0x689c, %rdx
nop
nop
nop
xor $15281, %r13
mov $0x5152535455565758, %r8
movq %r8, (%rdx)
nop
nop
nop
nop
nop
sub $3704, %r9

// Store
lea addresses_RW+0x1bd44, %r9
nop
nop
nop
nop
nop
inc %r10
mov $0x5152535455565758, %r14
movq %r14, %xmm6
movaps %xmm6, (%r9)
nop
nop
nop
nop
dec %r12

// Faulty Load
lea addresses_US+0x1bb2c, %r10
nop
nop
nop
nop
add $1157, %r8
vmovups (%r10), %ymm3
vextracti128 $0, %ymm3, %xmm3
vpextrq $1, %xmm3, %r12
lea oracles, %r14
and $0xff, %r12
shlq $12, %r12
mov (%r14,%r12,1), %r12
pop %rdx
pop %r9
pop %r8
pop %r14
pop %r13
pop %r12
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_UC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_RW', 'size': 16, 'AVXalign': True, 'NT': False, 'congruent': 3, 'same': False}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_US', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'type': 'addresses_normal_ht', 'congruent': 11, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': True}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_normal_ht', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_UC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_WC_ht', 'congruent': 7, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WC_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_D_ht', 'congruent': 1, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WT_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
{'45': 9497, '00': 4705, '20': 1179, '47': 2900, '1f': 372, '48': 1614, '44': 124, '49': 7, '63': 19, '46': 6}
45 00 45 45 45 45 20 45 47 45 00 45 00 45 45 45 47 45 00 45 1f 45 47 00 00 45 1f 45 45 48 45 47 45 1f 45 44 45 00 45 45 00 47 45 45 00 45 48 45 00 00 45 48 45 47 00 45 45 45 00 45 00 45 45 47 47 47 47 00 00 00 45 00 00 00 45 47 47 45 44 45 20 48 45 00 45 45 00 45 45 48 45 47 47 47 47 00 45 47 45 20 45 48 45 00 47 45 00 45 00 45 45 47 45 48 45 49 45 45 45 47 45 45 45 45 47 00 45 44 45 47 45 45 00 00 47 47 48 48 45 00 45 47 45 47 45 00 00 45 1f 45 48 47 47 45 00 45 00 00 45 45 20 45 20 45 45 45 20 45 47 45 00 48 45 00 45 00 45 48 00 45 48 00 20 45 47 00 45 48 45 20 45 47 48 48 45 00 00 00 48 45 47 45 00 45 45 20 45 1f 00 00 45 47 45 45 47 45 00 45 45 20 45 47 48 45 45 45 47 20 45 47 00 00 45 45 00 45 47 45 47 45 44 00 00 45 47 20 00 00 45 47 48 45 47 00 45 00 45 47 47 45 00 45 00 47 45 1f 00 48 47 45 45 1f 45 00 48 45 47 45 00 00 45 45 20 45 47 45 00 45 00 45 00 45 00 45 48 20 48 45 00 45 00 45 00 45 48 45 47 00 48 45 47 45 00 45 00 45 00 45 45 45 45 48 45 45 00 45 48 00 48 00 00 45 20 45 00 48 47 45 47 47 00 00 45 00 20 45 45 47 63 45 00 45 20 45 47 45 00 45 00 00 48 45 47 45 20 45 48 45 45 47 00 45 20 45 00 45 00 00 45 47 45 48 45 47 47 00 47 45 00 45 00 45 45 47 45 47 48 45 47 45 00 45 45 00 45 47 45 48 00 45 44 00 47 45 47 47 47 00 45 00 48 45 47 45 00 45 00 45 47 45 48 45 45 45 45 00 45 45 00 45 48 45 47 45 00 45 45 1f 45 48 00 45 45 45 45 00 45 00 45 00 45 45 45 45 00 45 45 1f 48 45 44 00 47 48 00 47 47 45 00 45 45 47 00 45 45 00 45 45 44 45 45 47 45 20 45 00 45 00 45 47 20 45 47 45 00 45 45 47 45 00 20 45 47 47 47 48 45 45 45 45 00 45 00 45 47 00 45 47 45 00 47 48 45 45 45 45 00 00 45 20 45 48 45 00 45 47 00 44 45 00 45 00 00 00 00 45 47 00 45 47 45 47 45 00 45 45 47 45 44 45 45 47 47 44 45 20 47 47 00 00 00 47 45 00 45 45 00 47 47 48 45 47 45 45 1f 00 20 48 45 00 45 45 00 45 20 45 00 20 45 20 45 45 47 00 45 45 00 47 45 20 45 00 1f 47 00 45 00 45 47 00 45 47 45 47 00 45 48 20 48 45 1f 00 45 00 45 00 45 45 00 00 48 45 20 45 45 45 47 00 00 47 00 45 1f 45 00 47 45 47 00 45 00 45 47 45 48 00 48 45 47 47 48 45 45 00 45 45 00 45 47 00 00 46 45 45 47 00 45 00 47 45 20 45 00 00 45 20 45 47 45 1f 00 00 45 48 00 47 00 45 45 00 00 45 00 47 20 45 47 45 45 00 00 00 00 47 47 47 45 48 45 47 00 47 1f 1f 45 47 45 00 45 00 47 45 45 47 20 47 47 45 45 44 45 48 45 00 47 20 00 45 45 48 00 47 45 00 45 45 45 00 45 1f 00 00 45 47 45 45 00 45 45 00 47 48 00 1f 45 00 45 00 45 45 47 45 00 45 00 45 48 45 47 1f 47 45 00 47 00 47 45 47 48 48 45 20 47 47 45 47 45 20 45 45 47 47 48 45 20 45 00 20 45 00 45 20 45 00 47 48 45 45 47 45 48 45 47 45 00 47 45 45 45 00 45 00 45 45 1f 45 00 00 48 00 45 45 48 45 00 48 45 45 00 45 45 47 1f 47 45 45 47 00 45 45 45 00 20 45 00 45 48 45 45 1f 45 47 45 00 45 00 45 45 47 45 48 45 45 47 45 47 45 00 45 47 47 45 20 45 45 20 45 00 45 20 45 47 45 47 45 00 45 47 00 00 45 00 00 45 00 45 45 45 00 47 45 45 00 45 45 47 45 47 45 00 45 45 00 47 00 45 45 00 45 00 45 45 00 45 45 48 45 00 45 45 00 45 00 45 47 45 00 45 00 00 00 45 00 45 00 45 47 48 45 48
*/
