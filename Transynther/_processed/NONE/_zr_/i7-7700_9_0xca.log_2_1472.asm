.global s_prepare_buffers
s_prepare_buffers:
push %r12
push %r8
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x1760b, %rsi
lea addresses_UC_ht+0xca0b, %rdi
clflush (%rsi)
dec %r8
mov $66, %rcx
rep movsl
nop
nop
nop
nop
nop
cmp $43486, %r8
lea addresses_UC_ht+0x10c8b, %r12
nop
nop
nop
xor $31196, %rcx
mov $0x6162636465666768, %rsi
movq %rsi, (%r12)
nop
nop
nop
nop
add $22963, %rcx
lea addresses_A_ht+0xf1ba, %rdi
nop
nop
nop
nop
nop
cmp $63607, %rdx
mov (%rdi), %r12w
nop
nop
nop
nop
nop
xor $45410, %r12
lea addresses_normal_ht+0x10c8b, %rsi
lea addresses_UC_ht+0x1af71, %rdi
clflush (%rdi)
nop
xor $2283, %rbx
mov $90, %rcx
rep movsb
sub $63414, %r8
lea addresses_UC_ht+0x294b, %r12
cmp %r8, %r8
movb (%r12), %cl
add %rsi, %rsi
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r8
pop %r12
ret

    .global s_faulty_load
s_faulty_load:
push %r15
push %r9
push %rax
push %rbp
push %rcx
push %rdi
push %rsi

// Store
lea addresses_normal+0x1438b, %rsi
nop
nop
nop
nop
cmp %rbp, %rbp
movl $0x51525354, (%rsi)
nop
nop
nop
inc %rbp

// REPMOV
lea addresses_A+0x12c8b, %rsi
lea addresses_D+0x928b, %rdi
nop
nop
nop
nop
xor $48581, %r9
mov $124, %rcx
rep movsb
nop
nop
nop
nop
sub %r15, %r15

// Store
mov $0x44b, %rax
nop
inc %rcx
mov $0x5152535455565758, %rbp
movq %rbp, %xmm5
movups %xmm5, (%rax)
nop
nop
dec %rdi

// Faulty Load
lea addresses_A+0x12c8b, %rax
nop
nop
nop
inc %r15
mov (%rax), %rbp
lea oracles, %rcx
and $0xff, %rbp
shlq $12, %rbp
mov (%rcx,%rbp,1), %rbp
pop %rsi
pop %rdi
pop %rcx
pop %rbp
pop %rax
pop %r9
pop %r15
ret

/*
<gen_faulty_load>
[REF]
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
{'OP': 'STOR', 'dst': {'congruent': 8, 'AVXalign': False, 'same': False, 'size': 4, 'NT': False, 'type': 'addresses_normal'}}
{'src': {'congruent': 0, 'same': True, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'congruent': 3, 'same': False, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'congruent': 4, 'AVXalign': False, 'same': False, 'size': 16, 'NT': False, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'congruent': 0, 'AVXalign': False, 'same': True, 'size': 8, 'NT': False, 'type': 'addresses_A'}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'src': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}, 'OP': 'REPM', 'dst': {'congruent': 7, 'same': False, 'type': 'addresses_UC_ht'}}
{'OP': 'STOR', 'dst': {'congruent': 11, 'AVXalign': False, 'same': False, 'size': 8, 'NT': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 0, 'AVXalign': False, 'same': False, 'size': 2, 'NT': True, 'type': 'addresses_A_ht'}, 'OP': 'LOAD'}
{'src': {'congruent': 5, 'same': False, 'type': 'addresses_normal_ht'}, 'OP': 'REPM', 'dst': {'congruent': 0, 'same': False, 'type': 'addresses_UC_ht'}}
{'src': {'congruent': 6, 'AVXalign': False, 'same': False, 'size': 1, 'NT': False, 'type': 'addresses_UC_ht'}, 'OP': 'LOAD'}
{'00': 2}
00 00
*/
