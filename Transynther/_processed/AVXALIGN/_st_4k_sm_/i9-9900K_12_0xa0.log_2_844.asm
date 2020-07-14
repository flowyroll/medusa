.global s_prepare_buffers
s_prepare_buffers:
push %r11
push %r9
push %rbp
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x1775f, %rsi
lea addresses_UC_ht+0x17af6, %rdi
nop
nop
nop
nop
add %r11, %r11
mov $4, %rcx
rep movsb
nop
nop
nop
nop
nop
cmp $47478, %r9
lea addresses_D_ht+0x1e68, %rbp
nop
nop
nop
and %rcx, %rcx
movb $0x61, (%rbp)
nop
nop
nop
nop
nop
sub %rbp, %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %r9
pop %r11
ret

    .global s_faulty_load
s_faulty_load:
push %r13
push %r15
push %r8
push %rbp
push %rbx
push %rcx
push %rsi

// Load
lea addresses_normal+0x17af6, %r13
cmp $4126, %rbx
mov (%r13), %r8
nop
and $48026, %rsi

// Store
lea addresses_normal+0x70f6, %r13
nop
inc %rbx
mov $0x5152535455565758, %r8
movq %r8, %xmm5
movups %xmm5, (%r13)
dec %rcx

// Store
mov $0x2829f00000007e2, %r13
nop
nop
nop
nop
nop
add $49783, %rbp
movw $0x5152, (%r13)
nop
nop
nop
nop
nop
and %r8, %r8

// Store
lea addresses_A+0x168f6, %r13
nop
nop
nop
nop
nop
dec %r8
mov $0x5152535455565758, %rsi
movq %rsi, %xmm1
vmovups %ymm1, (%r13)

// Exception!!!
nop
mov (0), %r8
xor %r8, %r8

// Store
lea addresses_UC+0x11d76, %r8
nop
nop
nop
nop
nop
xor %rcx, %rcx
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
nop
nop
and $15297, %rcx

// Faulty Load
lea addresses_normal+0x70f6, %rbx
nop
nop
nop
sub $64973, %rsi
mov (%rbx), %r8
lea oracles, %rbp
and $0xff, %r8
shlq $12, %r8
mov (%rbp,%r8,1), %r8
pop %rsi
pop %rcx
pop %rbx
pop %rbp
pop %r8
pop %r15
pop %r13
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 4}, 'OP': 'LOAD'}
{'src': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_normal', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_NC', 'AVXalign': False, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 11, 'type': 'addresses_A', 'AVXalign': False, 'size': 32}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 8}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_normal', 'AVXalign': True, 'size': 8}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'same': False, 'congruent': 0, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 1, 'type': 'addresses_D_ht', 'AVXalign': True, 'size': 1}}
{'58': 2}
58 58
*/
