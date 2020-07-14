.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %r8
push %r9
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_D_ht+0x1b715, %r8
cmp %rcx, %rcx
movl $0x61626364, (%r8)
nop
nop
nop
nop
and $47754, %rdx
lea addresses_WT_ht+0x10115, %rsi
lea addresses_A_ht+0x15175, %rdi
nop
nop
nop
nop
and $21681, %r9
mov $53, %rcx
rep movsl
nop
nop
nop
nop
inc %rsi
lea addresses_UC_ht+0x9015, %rsi
lea addresses_A_ht+0x2fb5, %rdi
nop
nop
nop
inc %r8
mov $72, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $38014, %r8
lea addresses_normal_ht+0x7915, %r8
nop
nop
nop
nop
cmp $31793, %r13
vmovups (%r8), %ymm4
vextracti128 $0, %ymm4, %xmm4
vpextrq $1, %xmm4, %rdx
nop
nop
dec %r13
lea addresses_A_ht+0x192d5, %rsi
nop
nop
and $11752, %rdx
and $0xffffffffffffffc0, %rsi
movntdqa (%rsi), %xmm4
vpextrq $1, %xmm4, %r8
nop
nop
dec %rcx
lea addresses_D_ht+0x189d4, %rsi
lea addresses_A_ht+0x1bf5d, %rdi
nop
nop
nop
nop
and $48222, %r15
mov $48, %rcx
rep movsl
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0xf023, %rsi
lea addresses_normal_ht+0x2995, %rdi
cmp $7690, %r9
mov $64, %rcx
rep movsw
nop
nop
nop
sub %r9, %r9
lea addresses_D_ht+0x8675, %rcx
nop
nop
nop
nop
sub %r13, %r13
mov $0x6162636465666768, %rsi
movq %rsi, (%rcx)
nop
and $4627, %r13
lea addresses_D_ht+0x10915, %r15
nop
nop
nop
nop
nop
sub %r9, %r9
movl $0x61626364, (%r15)
sub $55415, %rdi
lea addresses_WC_ht+0x15aa5, %r15
nop
nop
nop
nop
nop
xor %r13, %r13
mov (%r15), %ecx
nop
nop
nop
add $56837, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %r9
pop %r8
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r14
push %r8
push %rax
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_A+0x1e915, %rsi
lea addresses_A+0x17675, %rdi
nop
nop
nop
nop
nop
sub $30027, %r8
mov $78, %rcx
rep movsw
nop
nop
nop
cmp %rcx, %rcx

// Store
mov $0xa61, %rsi
nop
and $18862, %r8
movl $0x51525354, (%rsi)

// Exception!!!
nop
nop
nop
nop
mov (0), %r10
inc %rcx

// Store
lea addresses_A+0x7635, %r10
nop
nop
nop
nop
and %rax, %rax
mov $0x5152535455565758, %r8
movq %r8, %xmm0
movups %xmm0, (%r10)
nop
nop
dec %rsi

// Store
lea addresses_WT+0x1d20d, %rsi
clflush (%rsi)
nop
nop
nop
nop
and $25870, %rdi
mov $0x5152535455565758, %rax
movq %rax, %xmm1
vmovups %ymm1, (%rsi)
nop
nop
sub %rsi, %rsi

// Store
lea addresses_WC+0xd15, %r8
nop
nop
nop
cmp $60307, %rdi
movb $0x51, (%r8)
nop
nop
nop
add $12814, %rsi

// Store
lea addresses_A+0x532b, %r10
nop
xor $55571, %rdi
movw $0x5152, (%r10)
nop
nop
add $52656, %r10

// Store
mov $0x4e7d360000000d15, %rsi
nop
nop
nop
sub $46564, %rdi
movw $0x5152, (%rsi)
nop
nop
nop
nop
cmp %r10, %r10

// Faulty Load
mov $0x4e7d360000000d15, %rax
nop
nop
nop
add %rsi, %rsi
mov (%rax), %r14
lea oracles, %r8
and $0xff, %r14
shlq $12, %r14
mov (%r8,%r14,1), %r14
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r14
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 0, 'same': True}}
{'OP': 'REPM', 'src': {'type': 'addresses_A', 'congruent': 9, 'same': False}, 'dst': {'type': 'addresses_A', 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_P', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 16, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WT', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 2, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_WC', 'size': 1, 'AVXalign': False, 'NT': False, 'congruent': 8, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_A', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 1, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_NC', 'size': 2, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'type': 'addresses_NC', 'size': 8, 'AVXalign': False, 'NT': False, 'congruent': 0, 'same': True}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_WT_ht', 'congruent': 10, 'same': True}, 'dst': {'type': 'addresses_A_ht', 'congruent': 5, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_UC_ht', 'congruent': 6, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_normal_ht', 'size': 32, 'AVXalign': False, 'NT': False, 'congruent': 9, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_A_ht', 'size': 16, 'AVXalign': False, 'NT': True, 'congruent': 6, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_D_ht', 'congruent': 0, 'same': False}, 'dst': {'type': 'addresses_A_ht', 'congruent': 2, 'same': False}}
{'OP': 'REPM', 'src': {'type': 'addresses_A_ht', 'congruent': 1, 'same': False}, 'dst': {'type': 'addresses_normal_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 8, 'AVXalign': True, 'NT': False, 'congruent': 5, 'same': False}}
{'OP': 'STOR', 'dst': {'type': 'addresses_D_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 10, 'same': False}}
{'OP': 'LOAD', 'src': {'type': 'addresses_WC_ht', 'size': 4, 'AVXalign': False, 'NT': False, 'congruent': 4, 'same': True}}
{'00': 173, '52': 3}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 52 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
