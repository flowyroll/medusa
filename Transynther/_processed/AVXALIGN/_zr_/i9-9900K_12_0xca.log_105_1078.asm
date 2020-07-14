.global s_prepare_buffers
s_prepare_buffers:
push %r14
push %r9
push %rcx
push %rdi
push %rsi
lea addresses_normal_ht+0x8dbe, %rsi
lea addresses_WT_ht+0x16e0e, %rdi
clflush (%rsi)
nop
nop
nop
and $57848, %r9
mov $93, %rcx
rep movsl
nop
inc %r14
pop %rsi
pop %rdi
pop %rcx
pop %r9
pop %r14
ret

    .global s_faulty_load
s_faulty_load:
push %r12
push %r8
push %r9
push %rax
push %rbp
push %rdi
push %rsi

// Store
lea addresses_UC+0x8552, %rsi
nop
nop
nop
nop
dec %rbp
mov $0x5152535455565758, %rax
movq %rax, (%rsi)
and %rax, %rax

// Store
mov $0x546, %rdi
nop
nop
nop
nop
nop
cmp $5383, %r12
mov $0x5152535455565758, %rbp
movq %rbp, %xmm1
vmovups %ymm1, (%rdi)
nop
nop
xor %r12, %r12

// Store
lea addresses_A+0x9b2e, %r8
xor %r12, %r12
mov $0x5152535455565758, %rbp
movq %rbp, (%r8)
nop
nop
xor %rbp, %rbp

// Store
lea addresses_D+0x57be, %rbp
nop
nop
add %rsi, %rsi
movb $0x51, (%rbp)
nop
cmp $5327, %rbp

// Faulty Load
lea addresses_normal+0x13bbe, %rdi
nop
nop
xor %r9, %r9
movaps (%rdi), %xmm5
vpextrq $0, %xmm5, %r12
lea oracles, %rdi
and $0xff, %r12
shlq $12, %r12
mov (%rdi,%r12,1), %r12
pop %rsi
pop %rdi
pop %rbp
pop %rax
pop %r9
pop %r8
pop %r12
ret

/*
<gen_faulty_load>
[REF]
{'OP': 'LOAD', 'src': {'size': 8, 'NT': False, 'type': 'addresses_normal', 'same': False, 'AVXalign': False, 'congruent': 0}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_UC', 'same': False, 'AVXalign': False, 'congruent': 2}}
{'OP': 'STOR', 'dst': {'size': 32, 'NT': False, 'type': 'addresses_P', 'same': False, 'AVXalign': False, 'congruent': 3}}
{'OP': 'STOR', 'dst': {'size': 8, 'NT': False, 'type': 'addresses_A', 'same': False, 'AVXalign': False, 'congruent': 4}}
{'OP': 'STOR', 'dst': {'size': 1, 'NT': False, 'type': 'addresses_D', 'same': False, 'AVXalign': False, 'congruent': 10}}
[Faulty Load]
{'OP': 'LOAD', 'src': {'size': 16, 'NT': False, 'type': 'addresses_normal', 'same': True, 'AVXalign': True, 'congruent': 0}}
<gen_prepare_buffer>
{'OP': 'REPM', 'src': {'same': False, 'type': 'addresses_normal_ht', 'congruent': 9}, 'dst': {'same': True, 'type': 'addresses_WT_ht', 'congruent': 4}}
{'00': 105}
00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
*/
