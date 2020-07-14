.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r11
push %r12
push %r14
push %r8
push %rcx
push %rdi
push %rsi
lea addresses_A_ht+0x7eb, %rsi
lea addresses_normal_ht+0x1d0b, %rdi
clflush (%rdi)
nop
nop
nop
nop
nop
sub $2500, %r14
mov $76, %rcx
rep movsw
nop
add %r10, %r10
lea addresses_WT_ht+0x920b, %r12
nop
sub %r11, %r11
and $0xffffffffffffffc0, %r12
movntdqa (%r12), %xmm4
vpextrq $0, %xmm4, %r14
nop
nop
nop
cmp $2857, %r14
lea addresses_WT_ht+0xd4eb, %rcx
xor %r12, %r12
movb $0x61, (%rcx)
nop
nop
nop
nop
nop
and $54047, %r12
lea addresses_UC_ht+0x18133, %rsi
nop
inc %rcx
movups (%rsi), %xmm2
vpextrq $0, %xmm2, %r14
nop
cmp %r10, %r10
lea addresses_UC_ht+0x1c50b, %rsi
lea addresses_A_ht+0x12cb, %rdi
nop
nop
nop
nop
xor %r11, %r11
mov $61, %rcx
rep movsq
nop
nop
nop
nop
nop
inc %r10
lea addresses_D_ht+0x1e46b, %r10
cmp %r12, %r12
movb $0x61, (%r10)
xor %r12, %r12
lea addresses_WT_ht+0x1ec0b, %rdi
dec %rsi
movw $0x6162, (%rdi)
nop
nop
nop
nop
xor $30866, %r10
lea addresses_A_ht+0x1554b, %rsi
lea addresses_D_ht+0x1a58b, %rdi
nop
nop
nop
nop
nop
dec %r14
mov $72, %rcx
rep movsb
nop
nop
xor $5377, %r10
lea addresses_WT_ht+0x1db0b, %r11
nop
nop
nop
nop
nop
sub $1688, %rdi
movw $0x6162, (%r11)
nop
nop
nop
nop
cmp $22437, %r14
lea addresses_WT_ht+0x8d8b, %rsi
lea addresses_UC_ht+0x1670b, %rdi
nop
nop
nop
cmp $15606, %r8
mov $96, %rcx
rep movsw
cmp $22063, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r14
pop %r12
pop %r11
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r14
push %r15
push %r8
push %rcx
push %rdi
push %rsi

// Store
lea addresses_D+0xa441, %rdi
sub $49993, %r12
movw $0x5152, (%rdi)
nop
cmp %r12, %r12

// Store
lea addresses_WT+0x628b, %r14
clflush (%r14)
nop
nop
nop
nop
cmp $61844, %r15
mov $0x5152535455565758, %r12
movq %r12, %xmm4
movups %xmm4, (%r14)
nop
and %r14, %r14

// REPMOV
lea addresses_PSE+0xc70b, %rsi
lea addresses_A+0x330b, %rdi
nop
nop
nop
nop
inc %r14
mov $58, %rcx
rep movsw
nop
nop
nop
nop
xor %r14, %r14

// Store
lea addresses_normal+0x298b, %rdi
nop
nop
nop
and $64079, %r12
mov $0x5152535455565758, %r15
movq %r15, (%rdi)
nop
nop
nop
and $21808, %r8

// Store
lea addresses_D+0x2a47, %r12
nop
nop
nop
nop
mfence
mov $0x5152535455565758, %rcx
movq %rcx, (%r12)
nop
nop
inc %r11

// Faulty Load
mov $0x5559050000000b0b, %r14
nop
nop
nop
xor %rsi, %rsi
mov (%r14), %r8d
lea oracles, %rdi
and $0xff, %r8
shlq $12, %r8
mov (%rdi,%r8,1), %r8
pop %rsi
pop %rdi
pop %rcx
pop %r8
pop %r15
pop %r14
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 0, 'NT': False, 'type': 'addresses_D', 'size': 2, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_WT', 'size': 16, 'AVXalign': False}}
{'src': {'type': 'addresses_PSE', 'congruent': 10, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A', 'congruent': 10, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 7, 'NT': False, 'type': 'addresses_normal', 'size': 8, 'AVXalign': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 2, 'NT': False, 'type': 'addresses_D', 'size': 8, 'AVXalign': False}}
[Faulty Load]
{'src': {'same': True, 'congruent': 0, 'NT': False, 'type': 'addresses_NC', 'size': 4, 'AVXalign': True}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'type': 'addresses_A_ht', 'congruent': 3, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_normal_ht', 'congruent': 9, 'same': False}}
{'src': {'same': False, 'congruent': 8, 'NT': True, 'type': 'addresses_WT_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'same': True, 'congruent': 5, 'NT': False, 'type': 'addresses_WT_ht', 'size': 1, 'AVXalign': False}}
{'src': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_UC_ht', 'size': 16, 'AVXalign': False}, 'OP': 'LOAD'}
{'src': {'type': 'addresses_UC_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_A_ht', 'congruent': 6, 'same': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 5, 'NT': False, 'type': 'addresses_D_ht', 'size': 1, 'AVXalign': True}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 3, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_A_ht', 'congruent': 4, 'same': True}, 'OP': 'REPM', 'dst': {'type': 'addresses_D_ht', 'congruent': 7, 'same': False}}
{'OP': 'STOR', 'dst': {'same': False, 'congruent': 10, 'NT': False, 'type': 'addresses_WT_ht', 'size': 2, 'AVXalign': False}}
{'src': {'type': 'addresses_WT_ht', 'congruent': 7, 'same': False}, 'OP': 'REPM', 'dst': {'type': 'addresses_UC_ht', 'congruent': 9, 'same': False}}
{'00': 21829}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
