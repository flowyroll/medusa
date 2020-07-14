.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x8939, %rbx
nop
nop
nop
add %rdx, %rdx
movb (%rbx), %al
nop
nop
cmp %rax, %rax
lea addresses_UC_ht+0x17f69, %r15
nop
add %rbx, %rbx
mov $0x6162636465666768, %rsi
movq %rsi, %xmm0
vmovups %ymm0, (%r15)
nop
nop
dec %r15
lea addresses_WC_ht+0x3175, %rsi
lea addresses_normal_ht+0x9ce9, %rdi
nop
nop
nop
cmp %r11, %r11
mov $93, %rcx
rep movsw
nop
nop
nop
nop
nop
xor %r11, %r11
lea addresses_normal_ht+0x17a9, %r15
nop
nop
cmp $28680, %rcx
mov (%r15), %edi
nop
nop
nop
nop
sub $7080, %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r11
push %r14
push %r15
push %rax
push %rcx
push %rdi
push %rsi

// Store
mov $0x841, %rax
nop
nop
nop
nop
sub $28687, %r11
mov $0x5152535455565758, %r15
movq %r15, %xmm6
vmovups %ymm6, (%rax)
nop
and %r14, %r14

// REPMOV
lea addresses_WT+0x1c8e9, %rsi
mov $0x42d6bf0000000ae9, %rdi
clflush (%rdi)
nop
nop
sub $57989, %r10
mov $6, %rcx
rep movsl
cmp $30095, %rax

// REPMOV
lea addresses_WT+0x1d8e9, %rsi
lea addresses_WT+0x1a4e9, %rdi
nop
nop
sub %r11, %r11
mov $53, %rcx
rep movsw
nop
nop
nop
nop
xor $28213, %rax

// Store
mov $0x7122040000000189, %r11
nop
sub $21596, %rcx
mov $0x5152535455565758, %r14
movq %r14, (%r11)
nop
nop
inc %rax

// Store
lea addresses_US+0x17b31, %r15
nop
nop
cmp $9093, %rdi
mov $0x5152535455565758, %r11
movq %r11, %xmm7
vmovups %ymm7, (%r15)
inc %r14

// Load
lea addresses_PSE+0x120cd, %rsi
nop
nop
sub %r15, %r15
mov (%rsi), %cx
nop
nop
nop
nop
nop
cmp $29061, %r10

// Store
lea addresses_RW+0x18fe4, %rdi
nop
cmp $26440, %rcx
movb $0x51, (%rdi)
dec %rsi

// Store
lea addresses_WC+0x1c869, %rax
nop
nop
dec %r15
movw $0x5152, (%rax)
nop
xor %r10, %r10

// Load
lea addresses_WT+0x1c8e9, %rcx
nop
nop
nop
nop
nop
dec %r14
vmovntdqa (%rcx), %ymm1
vextracti128 $1, %ymm1, %xmm1
vpextrq $1, %xmm1, %rdi
and $31849, %rdi

// REPMOV
lea addresses_UC+0xc139, %rsi
lea addresses_PSE+0x1e4e9, %rdi
nop
nop
add %rax, %rax
mov $115, %rcx
rep movsq
nop
and $29745, %r10

// REPMOV
lea addresses_RW+0x24e9, %rsi
mov $0xe9, %rdi
nop
nop
nop
and $7959, %rax
mov $98, %rcx
rep movsb
nop
nop
nop
nop
and %rsi, %rsi

// Store
lea addresses_UC+0x1e8e9, %rax
nop
nop
xor $39586, %rcx
movw $0x5152, (%rax)
nop
nop
nop
nop
and $42267, %r14

// REPMOV
lea addresses_UC+0x1f50f, %rsi
mov $0x6249470000000ce9, %rdi
nop
nop
dec %r10
mov $2, %rcx
rep movsw
nop
nop
cmp $25801, %r10

// Store
mov $0xee9, %r15
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %r11
movq %r11, (%r15)
nop
nop
nop
nop
nop
add %rdi, %rdi

// Store
lea addresses_WT+0xf429, %rcx
clflush (%rcx)
nop
nop
nop
nop
nop
and $46820, %r14
mov $0x5152535455565758, %rdi
movq %rdi, (%rcx)
nop
nop
nop
nop
nop
sub %rax, %rax

// Faulty Load
lea addresses_WT+0x1c8e9, %rcx
nop
nop
nop
nop
nop
dec %r11
mov (%rcx), %rax
lea oracles, %r14
and $0xff, %rax
shlq $12, %rax
mov (%r14,%rax,1), %rax
pop %rsi
pop %rdi
pop %rcx
pop %rax
pop %r15
pop %r14
pop %r11
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_P', 'AVXalign': False, 'size': 32}}
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_NC'}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_WT'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_WT'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_US', 'AVXalign': False, 'size': 32}}
{'src': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_WC', 'AVXalign': False, 'size': 2}}
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_PSE'}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_RW'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_P'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC', 'AVXalign': False, 'size': 2}}
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_NC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_P', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'NT': False, 'same': False, 'congruent': 2, 'type': 'addresses_A_ht', 'AVXalign': False, 'size': 1}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 2, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 10, 'type': 'addresses_normal_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'17': 1}
17
*/
