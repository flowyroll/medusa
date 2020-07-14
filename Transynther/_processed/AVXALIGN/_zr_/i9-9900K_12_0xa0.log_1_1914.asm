.global s_prepare_buffers
s_prepare_buffers:
push %r13
push %r15
push %rax
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_UC_ht+0xcad3, %rsi
lea addresses_WC_ht+0x96b7, %rdi
nop
nop
nop
nop
cmp $10246, %rax
mov $65, %rcx
rep movsq
nop
nop
nop
and $29670, %rbx
lea addresses_UC_ht+0xcd33, %rsi
lea addresses_normal_ht+0x19a23, %rdi
nop
nop
nop
and $57803, %r15
mov $115, %rcx
rep movsw
nop
nop
nop
dec %r15
lea addresses_UC_ht+0xe7d3, %r15
nop
nop
nop
sub $5605, %r13
mov $0x6162636465666768, %rbx
movq %rbx, (%r15)
nop
and $29242, %rdi
lea addresses_A_ht+0x1e1d3, %rsi
nop
nop
nop
xor $44045, %rax
mov $0x6162636465666768, %r15
movq %r15, %xmm5
and $0xffffffffffffffc0, %rsi
movntdq %xmm5, (%rsi)
and $20742, %r13
lea addresses_D_ht+0x1b9d3, %rbx
sub %r13, %r13
mov (%rbx), %di
nop
nop
nop
and %r13, %r13
lea addresses_WT_ht+0x8633, %rsi
nop
nop
nop
nop
nop
add $27599, %r13
movw $0x6162, (%rsi)
nop
cmp %r13, %r13
lea addresses_WC_ht+0x11ad3, %rsi
lea addresses_UC_ht+0x1e333, %rdi
nop
and $57108, %rbp
mov $87, %rcx
rep movsw
nop
nop
add %rcx, %rcx
lea addresses_D_ht+0x130d3, %rsi
lea addresses_UC_ht+0x36d3, %rdi
nop
nop
xor $54527, %rbp
mov $14, %rcx
rep movsw
nop
nop
nop
nop
and %rax, %rax
lea addresses_normal_ht+0x122d3, %rbp
nop
nop
cmp $39130, %r13
movb $0x61, (%rbp)
nop
xor %rdi, %rdi
lea addresses_A_ht+0x11eb2, %rsi
lea addresses_WC_ht+0x17ad2, %rdi
nop
nop
nop
nop
cmp $48413, %rax
mov $104, %rcx
rep movsb
nop
nop
sub %rbx, %rbx
lea addresses_D_ht+0xb23f, %rbx
clflush (%rbx)
nop
add %r13, %r13
mov $0x6162636465666768, %rax
movq %rax, %xmm4
vmovups %ymm4, (%rbx)
nop
nop
and %r13, %r13
lea addresses_WC_ht+0x4ed3, %r13
nop
nop
xor %rsi, %rsi
movb (%r13), %bl
nop
nop
nop
nop
nop
add $52131, %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %rax
pop %r15
pop %r13
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r15
push %r9
push %rbp
push %rcx
push %rdi
push %rsi

// REPMOV
lea addresses_UC+0xff57, %rsi
lea addresses_UC+0x158d3, %rdi
nop
nop
nop
nop
cmp %r11, %r11
mov $69, %rcx
rep movsw
nop
nop
nop
nop
nop
add $20490, %rdi

// Store
mov $0xa93, %rbp
nop
nop
nop
and $36264, %r15
mov $0x5152535455565758, %r11
movq %r11, (%rbp)
nop
xor $53219, %rdi

// Store
lea addresses_normal+0x8bd0, %rsi
xor $64049, %r15
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
nop
nop
nop
cmp %rdi, %rdi

// Store
lea addresses_RW+0xaa3f, %rbp
nop
and %rcx, %rcx
mov $0x5152535455565758, %rdi
movq %rdi, %xmm3
movups %xmm3, (%rbp)
nop
nop
xor %rsi, %rsi

// Store
lea addresses_normal+0x153db, %rsi
nop
nop
nop
and %r11, %r11
mov $0x5152535455565758, %rcx
movq %rcx, (%rsi)
nop
cmp %rsi, %rsi

// Store
lea addresses_WC+0xd095, %r10
add $22078, %rsi
movl $0x51525354, (%r10)
cmp $57156, %rsi

// Store
lea addresses_WC+0x19553, %r10
sub %rsi, %rsi
mov $0x5152535455565758, %r15
movq %r15, %xmm3
vmovaps %ymm3, (%r10)
nop
nop
nop
nop
add %rbp, %rbp

// Load
lea addresses_D+0x8f3b, %r11
nop
nop
mfence
movb (%r11), %cl
sub $16575, %r10

// Store
lea addresses_normal+0x15a53, %rdi
sub $23080, %r11
movb $0x51, (%rdi)
cmp %r10, %r10

// Store
lea addresses_WC+0x11ed3, %r11
nop
nop
add $58910, %r10
mov $0x5152535455565758, %r15
movq %r15, (%r11)
nop
nop
nop
nop
inc %r10

// REPMOV
lea addresses_PSE+0x19d7f, %rsi
lea addresses_WC+0xaa67, %rdi
clflush (%rdi)
nop
nop
nop
add %r9, %r9
mov $30, %rcx
rep movsb
nop
nop
nop
nop
dec %r9

// Store
lea addresses_UC+0xf953, %rcx
clflush (%rcx)
nop
nop
nop
sub %rsi, %rsi
mov $0x5152535455565758, %r10
movq %r10, %xmm0
movups %xmm0, (%rcx)
nop
cmp %r9, %r9

// Load
lea addresses_RW+0xded3, %r11
nop
nop
nop
nop
nop
xor %r15, %r15
movb (%r11), %cl

// Exception!!!
nop
nop
nop
xor %rsi, %rsi
div %rsi
and $21328, %r9

// REPMOV
lea addresses_WC+0x172a3, %rsi
lea addresses_A+0x11853, %rdi
clflush (%rdi)
nop
nop
nop
nop
dec %r11
mov $91, %rcx
rep movsq

// Exception!!!
mov (0), %r11
nop
xor $30848, %r15

// Faulty Load
lea addresses_UC+0xbed3, %r11
nop
nop
nop
nop
xor %r9, %r9
mov (%r11), %r10
lea oracles, %rdi
and $0xff, %r10
shlq $12, %r10
mov (%rdi,%r10,1), %r10
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r15
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WC', 'AVXalign': False, 'size': 4}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': True, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 11, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_UC', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_RW', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 7, 'type': 'addresses_A'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_UC', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_normal_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 8, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 8, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 16}}
{'src': {'NT': False, 'same': True, 'congruent': 8, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 5, 'type': 'addresses_WT_ht', 'AVXalign': True, 'size': 2}}
{'src': {'same': False, 'congruent': 7, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC_ht'}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_D_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_WC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_D_ht', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_WC_ht', 'AVXalign': True, 'size': 1}, 'OP': 'LOAD'}
{'00': 1}
00
*/
