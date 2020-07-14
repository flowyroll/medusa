.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r15
push %r8
push %rax
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_UC_ht+0x3a10, %rdx
nop
nop
nop
nop
dec %rax
movw $0x6162, (%rdx)
nop
nop
xor $10056, %rdi
lea addresses_WT_ht+0x15ca0, %rdi
nop
nop
sub $47825, %r14
movb $0x61, (%rdi)
add %r14, %r14
lea addresses_WT_ht+0x12aa0, %rcx
nop
nop
cmp $48269, %r15
movb $0x61, (%rcx)
nop
nop
and $46309, %rdx
lea addresses_A_ht+0x6ea0, %rsi
lea addresses_WT_ht+0x3ea0, %rdi
clflush (%rsi)
nop
xor %r15, %r15
mov $15, %rcx
rep movsl
nop
nop
nop
nop
nop
dec %r14
lea addresses_WC_ht+0x16a70, %rsi
lea addresses_WT_ht+0x192a0, %rdi
nop
nop
nop
nop
nop
cmp %rax, %rax
mov $41, %rcx
rep movsq
nop
and $62866, %r15
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rax
pop %r8
pop %r15
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r10
push %r9
push %rax
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// REPMOV
lea addresses_PSE+0xf368, %rsi
lea addresses_PSE+0x1a0, %rdi
nop
add %rbx, %rbx
mov $96, %rcx
rep movsw
nop
nop
nop
nop
nop
and $32067, %rsi

// Store
lea addresses_D+0x1aea0, %r9
nop
nop
nop
nop
add %rcx, %rcx
mov $0x5152535455565758, %rdx
movq %rdx, %xmm2
vmovups %ymm2, (%r9)
nop
nop
nop
nop
dec %r9

// REPMOV
lea addresses_WC+0xe6a0, %rsi
lea addresses_D+0x108a0, %rdi
clflush (%rdi)
nop
nop
cmp $1801, %r10
mov $30, %rcx
rep movsl
nop
nop
nop
nop
nop
add $58943, %rcx

// Store
lea addresses_PSE+0x103a8, %r9
nop
xor %rbx, %rbx
mov $0x5152535455565758, %rcx
movq %rcx, (%r9)
nop
xor $20625, %rcx

// Store
lea addresses_UC+0xed20, %rsi
nop
nop
nop
dec %r10
movb $0x51, (%rsi)
nop
cmp $62223, %rcx

// Store
lea addresses_WC+0xb920, %r9
nop
nop
nop
nop
xor $6225, %rax
mov $0x5152535455565758, %rsi
movq %rsi, %xmm3
movups %xmm3, (%r9)
nop
nop
nop
nop
xor %r9, %r9

// Store
lea addresses_D+0xcea0, %rdi
nop
nop
nop
dec %r9
mov $0x5152535455565758, %rax
movq %rax, (%rdi)
nop
nop
nop
and %rdi, %rdi

// REPMOV
lea addresses_A+0x51a0, %rsi
mov $0x1f8, %rdi
nop
nop
add $46204, %rax
mov $39, %rcx
rep movsb
cmp $47303, %r9

// Faulty Load
lea addresses_D+0x86a0, %rbx
nop
nop
add %rdx, %rdx
vmovups (%rbx), %ymm7
vextracti128 $0, %ymm7, %xmm7
vpextrq $1, %xmm7, %rax
lea oracles, %rdi
and $0xff, %rax
shlq $12, %rax
mov (%rdi,%rax,1), %rax
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rax
pop %r9
pop %r10
ret

/*
<gen_faulty_load>
[REF]
{'src': {'NT': False, 'same': False, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': True, 'size': 2}, 'OP': 'LOAD'}
{'src': {'same': False, 'congruent': 3, 'type': 'addresses_PSE'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 8, 'type': 'addresses_PSE'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}}
{'src': {'same': False, 'congruent': 10, 'type': 'addresses_WC'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 9, 'type': 'addresses_D'}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 3, 'type': 'addresses_PSE', 'AVXalign': True, 'size': 8}}
{'OP': 'STOR', 'dst': {'NT': True, 'same': False, 'congruent': 7, 'type': 'addresses_UC', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': True, 'congruent': 6, 'type': 'addresses_WC', 'AVXalign': False, 'size': 16}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 10, 'type': 'addresses_D', 'AVXalign': False, 'size': 8}}
{'src': {'same': False, 'congruent': 8, 'type': 'addresses_A'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 3, 'type': 'addresses_P'}}
[Faulty Load]
{'src': {'NT': False, 'same': True, 'congruent': 0, 'type': 'addresses_D', 'AVXalign': False, 'size': 32}, 'OP': 'LOAD'}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 4, 'type': 'addresses_UC_ht', 'AVXalign': True, 'size': 2}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'OP': 'STOR', 'dst': {'NT': False, 'same': False, 'congruent': 9, 'type': 'addresses_WT_ht', 'AVXalign': False, 'size': 1}}
{'src': {'same': False, 'congruent': 11, 'type': 'addresses_A_ht'}, 'OP': 'REPM', 'dst': {'same': False, 'congruent': 11, 'type': 'addresses_WT_ht'}}
{'src': {'same': True, 'congruent': 4, 'type': 'addresses_WC_ht'}, 'OP': 'REPM', 'dst': {'same': True, 'congruent': 9, 'type': 'addresses_WT_ht'}}
{'06': 1}
06
*/
