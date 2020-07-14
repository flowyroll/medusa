.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r14
push %r9
push %rbp
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x18434, %rcx
clflush (%rcx)
cmp $61557, %rdx
mov (%rcx), %r11d
nop
nop
nop
nop
nop
inc %r14
lea addresses_normal_ht+0x1926c, %rsi
lea addresses_WT_ht+0x19c2c, %rdi
clflush (%rdi)
nop
nop
nop
sub $23292, %r9
mov $12, %rcx
rep movsb
sub $55795, %rdi
lea addresses_D_ht+0x6b2f, %rcx
clflush (%rcx)
nop
nop
nop
xor %rsi, %rsi
mov (%rcx), %r14
nop
nop
nop
dec %r11
lea addresses_A_ht+0x8dac, %rsi
lea addresses_UC_ht+0x1881c, %rdi
nop
nop
nop
nop
nop
xor %rbp, %rbp
mov $5, %rcx
rep movsb
nop
cmp %rdx, %rdx
lea addresses_WC_ht+0x842c, %r14
nop
nop
and %rdi, %rdi
movb $0x61, (%r14)
nop
nop
nop
nop
nop
xor $15250, %rsi
lea addresses_WC_ht+0x136ec, %rsi
lea addresses_WC_ht+0x16e1c, %rdi
clflush (%rdi)
nop
nop
nop
nop
sub %r11, %r11
mov $75, %rcx
rep movsq
nop
nop
nop
inc %rdx
lea addresses_WT_ht+0x1752c, %rsi
lea addresses_WT_ht+0x34ee, %rdi
dec %r14
mov $115, %rcx
rep movsq
nop
nop
nop
nop
cmp %rdx, %rdx
lea addresses_UC_ht+0x1d82c, %rsi
lea addresses_A_ht+0x15eac, %rdi
nop
nop
nop
nop
nop
dec %rdx
mov $111, %rcx
rep movsq
nop
dec %rsi
lea addresses_D_ht+0x42c, %rsi
nop
nop
nop
nop
cmp $3220, %r9
mov (%rsi), %rbp
nop
nop
nop
dec %r9
lea addresses_normal_ht+0xdf57, %rsi
nop
nop
xor %r9, %r9
movl $0x61626364, (%rsi)
nop
nop
nop
and $54376, %rdx
lea addresses_UC_ht+0x2f9c, %rcx
nop
nop
nop
nop
xor %r14, %r14
mov (%rcx), %rbp
nop
nop
sub %rdx, %rdx
lea addresses_A_ht+0xd48c, %r9
sub %rdi, %rdi
movl $0x61626364, (%r9)
add %rcx, %rcx
lea addresses_WT_ht+0x1770c, %rcx
xor $65394, %rdi
mov $0x6162636465666768, %r14
movq %r14, %xmm1
movups %xmm1, (%rcx)
add $16601, %r9
lea addresses_WC_ht+0x19a2c, %rsi
lea addresses_D_ht+0x6a2c, %rdi
nop
inc %r14
mov $52, %rcx
rep movsb
nop
nop
sub $17678, %rdx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r14
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r15
push %r8
push %r9
push %rbx
push %rdx
push %rsi

// Store
lea addresses_normal+0x1a02c, %r10
nop
nop
nop
nop
nop
xor %r9, %r9
movl $0x51525354, (%r10)
nop
nop
nop
nop
add %r8, %r8

// Store
lea addresses_A+0x142c, %rbx
clflush (%rbx)
nop
nop
nop
and %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%rbx)
nop
nop
nop
nop
nop
dec %rdx

// Store
mov $0x4f17a3000000032c, %r8
clflush (%r8)
nop
nop
nop
nop
nop
sub $34188, %r15
mov $0x5152535455565758, %rdx
movq %rdx, (%r8)
nop
nop
and $5957, %r15

// Store
lea addresses_UC+0x1782c, %r15
nop
and %r10, %r10
mov $0x5152535455565758, %rbx
movq %rbx, (%r15)
nop
nop
add $30731, %r8

// Store
lea addresses_US+0x4b34, %rdx
nop
nop
nop
nop
sub $1378, %rsi
movw $0x5152, (%rdx)
nop
nop
nop
nop
dec %r8

// Faulty Load
lea addresses_A+0xcc2c, %r8
clflush (%r8)
cmp %r9, %r9
movb (%r8), %bl
lea oracles, %r10
and $0xff, %rbx
shlq $12, %rbx
mov (%r10,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rbx
pop %r9
pop %r8
pop %r15
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_normal', 'AVXalign': True, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_A', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WT_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WT_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_A_ht'}}
{'src': {'NT': True, 'same': False, 'congruent': 10, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 16}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 6, 'type': 'addresses_D_ht'}}
{'00': 360}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
