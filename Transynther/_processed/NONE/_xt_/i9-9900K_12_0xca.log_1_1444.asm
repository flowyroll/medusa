.global s_prepare_buffers
s_prepare_buffers:
push %r10
push %r14
push %r9
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi
lea addresses_A_ht+0x1cb88, %rbx
nop
nop
nop
nop
and %rcx, %rcx
mov $0x6162636465666768, %r9
movq %r9, %xmm6
movups %xmm6, (%rbx)
nop
nop
nop
nop
nop
inc %r9
lea addresses_UC_ht+0xeb06, %rsi
nop
inc %rdx
mov $0x6162636465666768, %rbx
movq %rbx, (%rsi)
and %rsi, %rsi
lea addresses_WT_ht+0x74b2, %rsi
lea addresses_A_ht+0x13306, %rdi
dec %r10
mov $87, %rcx
rep movsb
cmp %rdx, %rdx
lea addresses_A_ht+0x14506, %rsi
nop
nop
nop
nop
and $38137, %rcx
mov (%rsi), %di
nop
nop
nop
add %rcx, %rcx
lea addresses_WT_ht+0x14ec6, %rsi
lea addresses_A_ht+0xfabc, %rdi
nop
nop
xor %r14, %r14
mov $18, %rcx
rep movsq
nop
sub $17350, %r9
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %r9
pop %r14
pop %r10
ret

    .global s_faulty_load
s_faulty_load:
push %r11
push %r13
push %rbp
push %rbx
push %rcx
push %rdi
push %rdx
push %rsi

// Store
lea addresses_PSE+0x17106, %rdi
nop
sub $4025, %rdx
mov $0x5152535455565758, %r13
movq %r13, (%rdi)
nop
nop
nop
nop
nop
cmp $54252, %rbp

// Store
lea addresses_PSE+0x17106, %rbp
nop
and %r13, %r13
movb $0x51, (%rbp)
nop
nop
nop
sub $13075, %rdx

// Store
lea addresses_PSE+0x5d06, %r11
nop
nop
cmp %rbx, %rbx
movb $0x51, (%r11)
nop
nop
nop
nop
nop
cmp %rbp, %rbp

// REPMOV
lea addresses_PSE+0x17106, %rsi
lea addresses_WC+0xc886, %rdi
and %rbx, %rbx
mov $11, %rcx
rep movsb

// Exception!!!
nop
nop
nop
mov (0), %rsi
nop
nop
nop
nop
add %rbx, %rbx

// Store
lea addresses_WT+0x9c06, %rbp
nop
nop
nop
sub $59212, %rsi
movb $0x51, (%rbp)
nop
nop
and %r11, %r11

// Faulty Load
lea addresses_PSE+0x17106, %r13
nop
nop
nop
cmp $51203, %rdi
movups (%r13), %xmm3
vpextrq $1, %xmm3, %rbx
lea oracles, %rbp
and $0xff, %rbx
shlq $12, %rbx
mov (%rbp,%rbx,1), %rbx
pop %rsi
pop %rdx
pop %rdi
pop %rcx
pop %rbx
pop %rbp
pop %r13
pop %r11
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_PSE', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': True, 'type': 'addresses_PSE', 'congruent': 0}, 'dst': {'same': False, 'type': 'addresses_WC', 'congruent': 7}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_WT', 'same': False, 'AVXalign': False, 'congruent': 8}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_PSE', 'same': True, 'AVXalign': False, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'STOR', 'dst': {'size': 16, 'NT': False, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC_ht', 'same': False, 'AVXalign': False, 'congruent': 8}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 1}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 8}}
{'OP': 'LOAD', 'src': {'size': 2, 'NT': True, 'type': 'addresses_A_ht', 'same': False, 'AVXalign': False, 'congruent': 7}}
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_WT_ht', 'congruent': 6}, 'dst': {'same': False, 'type': 'addresses_A_ht', 'congruent': 0}}
{'33': 1}
33
*/
