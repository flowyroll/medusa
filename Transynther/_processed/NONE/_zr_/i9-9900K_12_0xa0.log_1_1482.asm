.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x9402, %r9
nop
nop
nop
nop
nop
sub $52377, %rdi
movb $0x61, (%r9)
nop
nop
nop
nop
sub %rcx, %rcx
lea addresses_UC_ht+0x8c1, %rsi
lea addresses_UC_ht+0x2c45, %rdi
nop
nop
nop
nop
nop
sub $21204, %rax
mov $34, %rcx
rep movsq
and $10433, %rbp
lea addresses_WC_ht+0x1c101, %r9
nop
nop
and $17329, %r10
movups (%r9), %xmm5
vpextrq $1, %xmm5, %rdi
nop
add $46207, %rax
lea addresses_A_ht+0xbec9, %rsi
lea addresses_D_ht+0xd011, %rdi
nop
nop
nop
nop
sub $39835, %r15
mov $38, %rcx
rep movsl
nop
nop
dec %rdi
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r15
push %r8
push %r9
push %rax
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_RW+0xbd01, %r8
cmp %r9, %r9
movw $0x5152, (%r8)
cmp %rsi, %rsi

// Store
lea addresses_normal+0x13001, %r11
nop
nop
nop
nop
nop
sub $2, %rsi
mov $0x5152535455565758, %rdx
movq %rdx, %xmm5
movups %xmm5, (%r11)
nop
nop
nop
add %rdx, %rdx

// Store
lea addresses_US+0xf901, %r11
clflush (%r11)
nop
nop
dec %rdx
movw $0x5152, (%r11)
nop
and %rdx, %rdx

// Store
lea addresses_A+0xb759, %r8
nop
and %rax, %rax
movb $0x51, (%r8)
nop
nop
cmp %rdx, %rdx

// Load
lea addresses_D+0x1eb69, %rsi
nop
nop
nop
nop
nop
dec %r15
mov (%rsi), %rax
sub $60867, %r8

// Load
lea addresses_RW+0x19101, %rsi
cmp $53509, %r15
mov (%rsi), %dx
nop
nop
nop
sub $12513, %r15

// Store
lea addresses_WC+0x34a1, %r9
nop
nop
xor $38577, %rsi
mov $0x5152535455565758, %rax
movq %rax, (%r9)
nop
nop
nop
nop
add $26503, %rsi

// REPMOV
mov $0x541, %rsi
mov $0xad9, %rdi
nop
nop
nop
sub %r8, %r8
mov $27, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $42460, %r8

// REPMOV
lea addresses_normal+0x154eb, %rsi
lea addresses_UC+0xa51, %rdi
nop
nop
nop
nop
nop
inc %rax
mov $64, %rcx
rep movsw
nop
nop
inc %rdi

// REPMOV
lea addresses_UC+0x1d801, %rsi
lea addresses_normal+0x18c27, %rdi
nop
nop
nop
nop
nop
xor %rax, %rax
mov $40, %rcx
rep movsw
nop
nop
xor %rax, %rax

// Store
mov $0x6bee010000000bf9, %rdx
nop
nop
nop
nop
nop
cmp $5638, %rcx
mov $0x5152535455565758, %r15
movq %r15, %xmm3
movups %xmm3, (%rdx)
nop
and $12114, %r8

// Faulty Load
lea addresses_RW+0x19101, %rdx
nop
nop
cmp $27439, %rcx
mov (%rdx), %r15w
lea oracles, %r9
and $0xff, %r15
shlq $12, %r15
mov (%r9,%r15,1), %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r9
pop %r8
pop %r15
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_US', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 1, 'type': 'addresses_A', 'AVXalign': False, 'size': 1}}
{'src': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}, 'OP': 'LOAD'}
{'src': {'NT': True, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_WC', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_P'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 1, 'type': 'addresses_P'}}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_normal'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 4, 'type': 'addresses_UC'}}
{'src': {'same': False, 'congruent': 6, 'type': 'addresses_UC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 0, 'type': 'addresses_normal'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_NC', 'AVXalign': False, 'size': 16}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_RW', 'AVXalign': False, 'size': 2}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 5, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 2, 'type': 'addresses_UC_ht'}}
{'src': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_WC_ht', 'AVXalign': False, 'size': 16}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 1, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_D_ht'}}
{'00': 1}
00
*/
