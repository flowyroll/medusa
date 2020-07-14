.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r15
push %r8
push %rax
push %rbx
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1a7fb, %rsi
lea addresses_D_ht+0x1b58c, %rdi
xor %rbx, %rbx
mov $96, %rcx
rep movsb
nop
nop
cmp $26944, %rbx
lea addresses_UC_ht+0x162cc, %rcx
nop
nop
nop
add $25852, %r15
mov (%rcx), %eax
nop
nop
nop
nop
sub %rsi, %rsi
lea addresses_UC_ht+0x1cfa4, %rsi
nop
xor %r11, %r11
movl $0x61626364, (%rsi)
nop
nop
nop
nop
sub $44976, %rbx
lea addresses_UC_ht+0x132cc, %rsi
lea addresses_UC_ht+0x144cc, %rdi
nop
nop
nop
nop
nop
add %r8, %r8
mov $14, %rcx
rep movsl
nop
nop
mfence
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r8
pop %r15
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r12
push %r8
push %rbp
push %rbx
push %rcx
push %rdi
push %rsi

// Load
lea addresses_A+0x110ac, %rdi
nop
nop
nop
and %r8, %r8
vmovups (%rdi), %ymm5
vextracti128 $0, %ymm5, %xmm5
vpextrq $0, %xmm5, %r12
nop
nop
nop
nop
nop
sub %rbp, %rbp

// Load
lea addresses_WT+0x72cc, %rdi
add $41964, %rcx
mov (%rdi), %rbx
nop
nop
nop
nop
nop
and %rcx, %rcx

// Store
lea addresses_US+0x18acc, %rbp
nop
nop
nop
nop
nop
xor $55095, %r8
mov $0x5152535455565758, %r11
movq %r11, (%rbp)
nop
nop
nop
nop
nop
and $28472, %r12

// Store
lea addresses_PSE+0xea0c, %rbp
nop
sub $26219, %r12
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
cmp $43393, %r8

// Load
lea addresses_D+0x15ecc, %r11
nop
inc %rdi
mov (%r11), %ecx
nop
nop
nop
nop
sub %r12, %r12

// Store
lea addresses_PSE+0x13c0c, %rcx
xor $10450, %r8
movb $0x51, (%rcx)
nop
nop
nop
mfence

// Store
lea addresses_WC+0xf18c, %r12
nop
nop
sub %r11, %r11
mov $0x5152535455565758, %rbp
movq %rbp, %xmm7
vmovups %ymm7, (%r12)
nop
xor %rdi, %rdi

// REPMOV
lea addresses_normal+0x8acc, %rsi
lea addresses_WC+0x1becc, %rdi
nop
nop
nop
nop
nop
add %r12, %r12
mov $121, %rcx
rep movsl
add $48863, %rbx

// Store
lea addresses_WC+0x143ac, %r12
nop
nop
and %rbx, %rbx
movb $0x51, (%r12)
nop
nop
nop
add %rbp, %rbp

// Load
lea addresses_A+0xf2cc, %rbp
nop
nop
nop
and %rcx, %rcx
mov (%rbp), %ebx

// Exception!!!
nop
nop
nop
xor %rdi, %rdi
div %rdi
nop
nop
nop
nop
and $30093, %r8

// Store
lea addresses_UC+0x15b6c, %rdi
nop
dec %r12
movb $0x51, (%rdi)
nop
add $15464, %r8

// Store
lea addresses_WT+0x1b104, %rbx
nop
xor $57215, %r12
movw $0x5152, (%rbx)
nop
nop
dec %rsi

// Store
lea addresses_WT+0x1294c, %rbp
nop
nop
nop
nop
nop
inc %rcx
movl $0x51525354, (%rbp)
nop
nop
nop
nop
nop
cmp $63528, %rsi

// Load
lea addresses_normal+0x15d8c, %rdi
clflush (%rdi)
inc %rbx
mov (%rdi), %r12

// Exception!!!
nop
nop
nop
xor %rbx, %rbx
div %rbx
nop
nop
sub $60408, %rsi

// Faulty Load
lea addresses_PSE+0x11acc, %rdi
nop
nop
nop
xor $1723, %r12
mov (%rdi), %ebp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r12
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WT', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_US', 'AVXalign': False, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_WC'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_WC', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC', 'AVXalign': True, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_WT', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 5, 'type': 'addresses_WT', 'AVXalign': False, 'size': 4}}
{'src': {'NT': False, 'same': False, 'congruent': 6, 'type': 'addresses_normal', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_PSE', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': True, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_D_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_UC_ht', 'AVXalign': False, 'size': 4}}
{'src': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_UC_ht'}}
{'8f': 1}
8f
*/
